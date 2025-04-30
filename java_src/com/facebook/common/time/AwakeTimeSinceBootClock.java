package com.facebook.common.time;

import android.os.SystemClock;
import com.facebook.common.internal.DoNotStrip;
@DoNotStrip
/* loaded from: classes2.dex */
public class AwakeTimeSinceBootClock implements c {
    @DoNotStrip
    private static final AwakeTimeSinceBootClock INSTANCE = new AwakeTimeSinceBootClock();

    private AwakeTimeSinceBootClock() {
    }

    @DoNotStrip
    public static AwakeTimeSinceBootClock get() {
        return INSTANCE;
    }

    @Override // com.facebook.common.time.c
    @DoNotStrip
    public long now() {
        return SystemClock.uptimeMillis();
    }
}
