package com.papa.gsyvideoplayer.player;
/* compiled from: PlayerFactory.java */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static Class<? extends c> f54984a;

    public static c a() {
        if (f54984a == null) {
            f54984a = d.class;
        }
        try {
            return f54984a.newInstance();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return null;
        } catch (InstantiationException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static void b(Class<? extends c> cls) {
        f54984a = cls;
    }
}
