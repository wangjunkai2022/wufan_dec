package com.facebook.imagepipeline.nativecode;
/* compiled from: WebpTranscoderFactory.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static e f12929a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f12930b;

    static {
        try {
            f12929a = (e) Class.forName("com.facebook.imagepipeline.nativecode.WebpTranscoderImpl").newInstance();
            f12930b = true;
        } catch (Throwable unused) {
            f12930b = false;
        }
    }

    public static e a() {
        return f12929a;
    }
}
