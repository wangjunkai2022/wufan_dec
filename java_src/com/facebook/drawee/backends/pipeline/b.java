package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.drawable.j;
import javax.annotation.Nullable;
/* compiled from: DefaultDrawableFactory.java */
/* loaded from: classes.dex */
public class b implements p0.a {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f11830a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final p0.a f11831b;

    public b(Resources resources, @Nullable p0.a aVar) {
        this.f11830a = resources;
        this.f11831b = aVar;
    }

    private static boolean c(com.facebook.imagepipeline.image.d dVar) {
        return (dVar.o() == 1 || dVar.o() == 0) ? false : true;
    }

    private static boolean d(com.facebook.imagepipeline.image.d dVar) {
        return (dVar.p() == 0 || dVar.p() == -1) ? false : true;
    }

    @Override // p0.a
    public boolean a(com.facebook.imagepipeline.image.c cVar) {
        return true;
    }

    @Override // p0.a
    @Nullable
    public Drawable b(com.facebook.imagepipeline.image.c cVar) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DefaultDrawableFactory#createDrawable");
            }
            if (cVar instanceof com.facebook.imagepipeline.image.d) {
                com.facebook.imagepipeline.image.d dVar = (com.facebook.imagepipeline.image.d) cVar;
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f11830a, dVar.g());
                if (d(dVar) || c(dVar)) {
                    j jVar = new j(bitmapDrawable, dVar.p(), dVar.o());
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                    return jVar;
                }
                return bitmapDrawable;
            }
            p0.a aVar = this.f11831b;
            if (aVar != null && aVar.a(cVar)) {
                Drawable b4 = this.f11831b.b(cVar);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return b4;
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return null;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }
}
