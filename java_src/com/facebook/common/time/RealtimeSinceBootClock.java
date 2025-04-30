package com.facebook.common.time;

import android.os.SystemClock;
import com.facebook.common.internal.DoNotStrip;
@DoNotStrip
/* loaded from: classes2.dex */
public class RealtimeSinceBootClock implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final RealtimeSinceBootClock f11752a = new RealtimeSinceBootClock();

    private RealtimeSinceBootClock() {
    }

    @DoNotStrip
    public static RealtimeSinceBootClock get() {
        return f11752a;
    }

    @Override // com.facebook.common.time.c
    public long now() {
        return SystemClock.elapsedRealtime();
    }
}
