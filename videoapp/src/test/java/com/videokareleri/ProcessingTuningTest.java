package com.videokareleri;

import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class ProcessingTuningTest {
    @Test
    public void batchUsesTwoWorkersOnMultiCoreDevice() {
        assertEquals(2, ProcessingTuning.workerCount(8, 8));
    }

    @Test
    public void singleVideoUsesSingleWorker() {
        assertEquals(1, ProcessingTuning.workerCount(1, 8));
    }

    @Test
    public void lowCoreDeviceStaysSingleWorker() {
        assertEquals(1, ProcessingTuning.workerCount(6, 2));
    }

    @Test
    public void uiUpdatesAreThrottledButFirstAndLastAreShown() {
        assertTrue(ProcessingTuning.shouldUpdateUi(1, 12));
        assertFalse(ProcessingTuning.shouldUpdateUi(2, 12));
        assertTrue(ProcessingTuning.shouldUpdateUi(5, 12));
        assertTrue(ProcessingTuning.shouldUpdateUi(12, 12));
    }
}
