package com.akillikisikirpma;

import android.content.Context;
import android.graphics.Bitmap;

import org.tensorflow.lite.DataType;
import org.tensorflow.lite.Interpreter;
import org.tensorflow.lite.support.common.FileUtil;
import org.tensorflow.lite.support.common.TensorProcessor;
import org.tensorflow.lite.support.common.ops.NormalizeOp;
import org.tensorflow.lite.support.image.ImageProcessor;
import org.tensorflow.lite.support.image.TensorImage;
import org.tensorflow.lite.support.image.ops.ResizeOp;
import org.tensorflow.lite.support.image.ops.ResizeWithCropOrPadOp;
import org.tensorflow.lite.support.label.TensorLabel;
import org.tensorflow.lite.support.tensorbuffer.TensorBuffer;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

final class AgeClassifier implements AutoCloseable {
    static final class Result {
        final String label;
        final float confidence;
        final float margin;
        final boolean adult;

        Result(String label, float confidence, float margin, boolean adult) {
            this.label = label;
            this.confidence = confidence;
            this.margin = margin;
            this.adult = adult;
        }
    }

    private static final class Score implements Comparable<Score> {
        final String label;
        final float confidence;
        Score(String label, float confidence) {
            this.label = label;
            this.confidence = confidence;
        }
        @Override public int compareTo(Score other) {
            return Float.compare(other.confidence, confidence);
        }
    }

    private final Interpreter interpreter;
    private final List<String> labels;
    private final int inputW;
    private final int inputH;
    private final DataType inputType;
    private final TensorBuffer output;
    private final TensorProcessor outputProcessor;

    AgeClassifier(Context context) throws IOException {
        MappedByteBuffer model = FileUtil.loadMappedFile(context, "AndroidAge_quant.tflite");
        labels = FileUtil.loadLabels(context, "AndroidAge.txt");
        interpreter = new Interpreter(model);

        int[] inShape = interpreter.getInputTensor(0).shape();
        inputType = interpreter.getInputTensor(0).dataType();
        inputH = inShape[1];
        inputW = inShape[2];

        int[] outShape = interpreter.getOutputTensor(0).shape();
        DataType outType = interpreter.getOutputTensor(0).dataType();
        output = TensorBuffer.createFixedSize(outShape, outType);
        outputProcessor = new TensorProcessor.Builder()
                .add(new NormalizeOp(0.0f, 255.0f))
                .build();
    }

    Result classify(Bitmap face) {
        TensorImage input = new TensorImage(inputType);
        input.load(face);
        int crop = Math.min(face.getWidth(), face.getHeight());
        ImageProcessor processor = new ImageProcessor.Builder()
                .add(new ResizeWithCropOrPadOp(crop, crop))
                .add(new ResizeOp(inputH, inputW, ResizeOp.ResizeMethod.NEAREST_NEIGHBOR))
                .add(new NormalizeOp(0.0f, 1.0f))
                .build();
        input = processor.process(input);

        interpreter.run(input.getBuffer(), output.getBuffer().rewind());
        Map<String, Float> probs = new TensorLabel(labels, outputProcessor.process(output)).getMapWithFloatValue();
        List<Score> scores = new ArrayList<>();
        for (Map.Entry<String, Float> e : probs.entrySet()) {
            scores.add(new Score(e.getKey(), e.getValue()));
        }
        Collections.sort(scores);
        if (scores.isEmpty()) return new Result("belirsiz", 0f, 0f, false);

        Score best = scores.get(0);
        float second = scores.size() > 1 ? scores.get(1).confidence : 0f;
        float margin = best.confidence - second;
        int index = labels.indexOf(best.label);

        // Güvenli tarafta kal: yalnızca 20+ sınıfları, yeterli güven ve ayrımla kabul edilir.
        boolean adult = index >= 4 && best.confidence >= 0.58f && margin >= 0.08f;
        return new Result(best.label, best.confidence, margin, adult);
    }

    @Override public void close() {
        interpreter.close();
    }
}
