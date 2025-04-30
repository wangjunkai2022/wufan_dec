package com.ss.android.socialbase.downloader.impls;

import android.text.TextUtils;
import com.ss.android.socialbase.downloader.downloader.s;
/* compiled from: RetryDelayTimeParamCalculator.java */
/* loaded from: classes4.dex */
public class q implements s {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f58401a;

    public q(String str) {
        this.f58401a = a(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.s
    public long a(int i2, int i4) {
        long[] jArr = this.f58401a;
        if (jArr == null || jArr.length <= 0) {
            return 0L;
        }
        int i5 = i2 - 1;
        if (i5 < 0) {
            i5 = 0;
        }
        if (i5 > jArr.length - 1) {
            i5 = jArr.length - 1;
        }
        return jArr[i5];
    }

    private long[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] split = str.split(",");
            if (split.length == 0) {
                return null;
            }
            long[] jArr = new long[split.length];
            for (int i2 = 0; i2 < split.length; i2++) {
                jArr[i2] = Long.parseLong(split[i2]);
            }
            return jArr;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
