package com.bytedance.pangle.log;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f10269a;

    private a() {
    }

    public static a a() {
        if (f10269a == null) {
            synchronized (a.class) {
                f10269a = new a();
            }
        }
        return f10269a;
    }

    public static void b() {
        ZeusLogger.d("Zeus/DefaultReporterImpl", "skip default report");
    }
}
