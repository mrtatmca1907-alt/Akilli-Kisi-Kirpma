from pathlib import Path
from urllib.request import urlretrieve
p=Path("models"); p.mkdir(exist_ok=True)
urls={
"face_detection_yunet_2023mar.onnx":"https://github.com/opencv/opencv_zoo/raw/main/models/face_detection_yunet/face_detection_yunet_2023mar.onnx",
"face_recognition_sface_2021dec.onnx":"https://github.com/opencv/opencv_zoo/raw/main/models/face_recognition_sface/face_recognition_sface_2021dec.onnx"}
for name,url in urls.items():
    out=p/name
    if not out.exists(): print("Downloading",name); urlretrieve(url,out)
