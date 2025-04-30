package com.bytedance.pangle.log;

import com.bytedance.pangle.util.j;
/* loaded from: classes2.dex */
public final class c {
    public static String a(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static int b(Object obj) {
        if (obj == null) {
            return -1;
        }
        return j.a(obj.toString());
    }
}
