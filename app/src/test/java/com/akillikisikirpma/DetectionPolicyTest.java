package com.akillikisikirpma;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class DetectionPolicyTest {
    @Test
    public void overlappingBoxesForSamePersonAreDuplicates() {
        DetectionPolicy.Box a = new DetectionPolicy.Box(100, 100, 300, 500);
        DetectionPolicy.Box b = new DetectionPolicy.Box(112, 118, 292, 492);
        assertTrue(DetectionPolicy.isDuplicate(a, b));
    }

    @Test
    public void nearbyDifferentPeopleAreNotDuplicates() {
        DetectionPolicy.Box a = new DetectionPolicy.Box(100, 100, 260, 500);
        DetectionPolicy.Box b = new DetectionPolicy.Box(280, 110, 440, 500);
        assertFalse(DetectionPolicy.isDuplicate(a, b));
    }

    @Test
    public void oneBoxMostlyInsideAnotherIsDuplicate() {
        DetectionPolicy.Box outer = new DetectionPolicy.Box(80, 60, 340, 560);
        DetectionPolicy.Box inner = new DetectionPolicy.Box(120, 110, 300, 510);
        assertTrue(DetectionPolicy.isDuplicate(outer, inner));
    }
}
