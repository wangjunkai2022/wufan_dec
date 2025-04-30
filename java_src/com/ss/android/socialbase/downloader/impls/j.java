package com.ss.android.socialbase.downloader.impls;

import com.ss.android.socialbase.downloader.downloader.s;
import io.netty.handler.traffic.AbstractTrafficShapingHandler;
/* compiled from: DefaultRetryDelayTimeCalculator.java */
/* loaded from: classes4.dex */
public class j implements s {
    @Override // com.ss.android.socialbase.downloader.downloader.s
    public long a(int i2, int i4) {
        if (i2 == 1) {
            return 3000L;
        }
        if (i2 == 2) {
            return AbstractTrafficShapingHandler.DEFAULT_MAX_TIME;
        }
        if (i2 == 3) {
            return 30000L;
        }
        if (i2 > 3) {
            return q.a.f73955b;
        }
        return 0L;
    }
}
