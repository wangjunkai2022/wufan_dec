package com.ss.android.socialbase.downloader.f;

import androidx.annotation.NonNull;
import java.util.List;
/* compiled from: SegmentUtils.java */
/* loaded from: classes4.dex */
public class o {
    public static long a(@NonNull List<i> list) {
        int size = list.size();
        long j4 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = list.get(i2);
            if (iVar.c() > j4) {
                break;
            }
            if (iVar.e() > j4) {
                j4 = iVar.e();
            }
        }
        return j4;
    }

    public static long b(@NonNull List<i> list) {
        long j4;
        long j5;
        long j6 = 0;
        loop0: while (true) {
            j4 = -1;
            j5 = -1;
            for (i iVar : list) {
                if (j4 == -1) {
                    if (iVar.a() > 0) {
                        j4 = iVar.c();
                        j5 = iVar.d();
                    }
                } else if (iVar.c() <= j5) {
                    if (iVar.d() > j5) {
                        j5 = iVar.d();
                    }
                } else {
                    j6 += j5 - j4;
                    if (iVar.a() > 0) {
                        j4 = iVar.c();
                        j5 = iVar.d();
                    }
                }
            }
        }
        return (j4 < 0 || j5 <= j4) ? j6 : j6 + (j5 - j4);
    }
}
