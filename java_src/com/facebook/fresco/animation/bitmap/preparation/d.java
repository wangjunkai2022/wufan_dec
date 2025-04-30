package com.facebook.fresco.animation.bitmap.preparation;
/* compiled from: FixedNumberBitmapFramePreparationStrategy.java */
/* loaded from: classes2.dex */
public class d implements a {

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f12285b = d.class;

    /* renamed from: c  reason: collision with root package name */
    private static final int f12286c = 3;

    /* renamed from: a  reason: collision with root package name */
    private final int f12287a;

    public d() {
        this(3);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.a
    public void a(b bVar, com.facebook.fresco.animation.bitmap.a aVar, com.facebook.fresco.animation.backend.a aVar2, int i2) {
        for (int i4 = 1; i4 <= this.f12287a; i4++) {
            int b4 = (i2 + i4) % aVar2.b();
            if (com.facebook.common.logging.a.R(2)) {
                com.facebook.common.logging.a.W(f12285b, "Preparing frame %d, last drawn: %d", Integer.valueOf(b4), Integer.valueOf(i2));
            }
            if (!bVar.a(aVar, aVar2, b4)) {
                return;
            }
        }
    }

    public d(int i2) {
        this.f12287a = i2;
    }
}
