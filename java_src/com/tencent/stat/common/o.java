package com.tencent.stat.common;

import com.xinzhu.overmind.utils.t;
import java.io.File;
/* loaded from: classes4.dex */
class o {

    /* renamed from: a  reason: collision with root package name */
    private static int f60096a = -1;

    public static boolean a() {
        int i2 = f60096a;
        if (i2 == 1) {
            return true;
        }
        if (i2 == 0) {
            return false;
        }
        String[] strArr = {"/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        for (int i4 = 0; i4 < 6; i4++) {
            try {
                if (new File(strArr[i4] + t.f64782a).exists()) {
                    f60096a = 1;
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        f60096a = 0;
        return false;
    }
}
