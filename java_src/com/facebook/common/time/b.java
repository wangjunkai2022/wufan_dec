package com.facebook.common.time;

import android.os.SystemClock;
/* compiled from: CurrentThreadTimeClock.java */
/* loaded from: classes2.dex */
public class b implements a {
    @Override // com.facebook.common.time.a
    public long now() {
        return SystemClock.currentThreadTimeMillis();
    }
}
