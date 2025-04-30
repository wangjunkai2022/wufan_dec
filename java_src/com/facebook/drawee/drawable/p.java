package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.NinePatchDrawable;
/* compiled from: RoundedNinePatchDrawable.java */
/* loaded from: classes2.dex */
public class p extends o {
    public p(NinePatchDrawable ninePatchDrawable) {
        super(ninePatchDrawable);
    }

    @Override // com.facebook.drawee.drawable.o, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("RoundedNinePatchDrawable#draw");
        }
        if (!d()) {
            super.draw(canvas);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        f();
        e();
        canvas.clipPath(this.f12099e);
        super.draw(canvas);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }
}
