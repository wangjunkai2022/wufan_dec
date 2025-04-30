package com.xinzhu.overmind.utils.helpers;

import com.xinzhu.haunted.android.content.pm.j;
import java.lang.reflect.Method;
import java.util.List;
/* compiled from: ParceledListSliceHelper.java */
/* loaded from: classes.dex */
public class f {
    public static Object a(List list) {
        return j.c(list).f63141a;
    }

    public static boolean b(Object obj) {
        return obj != null && obj.getClass() == j.f63136c;
    }

    public static boolean c(Method method) {
        return method != null && method.getReturnType() == j.f63136c;
    }
}
