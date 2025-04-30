package com.papa.gsyvideoplayer.cache;
/* compiled from: CacheFactory.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Class<? extends b> f54950a;

    public static b a() {
        if (f54950a == null) {
            f54950a = c.class;
        }
        try {
            return f54950a.newInstance();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return null;
        } catch (InstantiationException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static void b(Class<? extends b> cls) {
        f54950a = cls;
    }
}
