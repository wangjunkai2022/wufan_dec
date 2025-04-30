package com.facebook.imagepipeline.producers;
/* compiled from: ThumbnailSizeChecker.java */
/* loaded from: classes2.dex */
public final class y0 {

    /* renamed from: a  reason: collision with root package name */
    public static final float f13287a = 1.3333334f;

    /* renamed from: b  reason: collision with root package name */
    private static final int f13288b = 90;

    /* renamed from: c  reason: collision with root package name */
    private static final int f13289c = 270;

    public static int a(int i2) {
        return (int) (i2 * 1.3333334f);
    }

    public static boolean b(int i2, int i4, com.facebook.imagepipeline.common.d dVar) {
        return dVar == null ? ((float) a(i2)) >= 2048.0f && a(i4) >= 2048 : a(i2) >= dVar.f12570a && a(i4) >= dVar.f12571b;
    }

    public static boolean c(com.facebook.imagepipeline.image.e eVar, com.facebook.imagepipeline.common.d dVar) {
        if (eVar == null) {
            return false;
        }
        int q3 = eVar.q();
        if (q3 != 90 && q3 != 270) {
            return b(eVar.u(), eVar.n(), dVar);
        }
        return b(eVar.n(), eVar.u(), dVar);
    }
}
