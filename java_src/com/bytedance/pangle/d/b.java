package com.bytedance.pangle.d;

import com.bytedance.pangle.util.MethodUtils;
import dalvik.system.VMRuntime;
/* loaded from: classes2.dex */
public final class b {

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static int f10130a = 0;

        /* renamed from: b  reason: collision with root package name */
        public static int f10131b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static int f10132c = 3;
    }

    public static String a() {
        try {
            return (String) MethodUtils.invokeStaticMethod(VMRuntime.class, "getCurrentInstructionSet", new Object[0]);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
