package com.atmaca.batch50;

import org.junit.Test;
import static org.junit.Assert.*;

public class StartupResetPolicyTest {
    @Test public void resetsOldQueueOnlyOncePerGeneration() {
        assertTrue(StartupResetPolicy.shouldReset(0, 132));
        assertTrue(StartupResetPolicy.shouldReset(131, 132));
        assertFalse(StartupResetPolicy.shouldReset(132, 132));
    }
}
