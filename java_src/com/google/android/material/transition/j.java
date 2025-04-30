package com.google.android.material.transition;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import com.google.android.material.transition.MaterialContainerTransform;
/* compiled from: MaskEvaluator.java */
/* loaded from: classes2.dex */
class j {

    /* renamed from: a  reason: collision with root package name */
    private final Path f16446a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final Path f16447b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final Path f16448c = new Path();

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.material.shape.n f16449d = com.google.android.material.shape.n.k();

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.material.shape.m f16450e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 23) {
            canvas.clipPath(this.f16446a);
            return;
        }
        canvas.clipPath(this.f16447b);
        canvas.clipPath(this.f16448c, Region.Op.UNION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(float f4, com.google.android.material.shape.m mVar, com.google.android.material.shape.m mVar2, RectF rectF, RectF rectF2, RectF rectF3, MaterialContainerTransform.c cVar) {
        com.google.android.material.shape.m o3 = r.o(mVar, mVar2, rectF, rectF3, cVar.d(), cVar.c(), f4);
        this.f16450e = o3;
        this.f16449d.d(o3, 1.0f, rectF2, this.f16447b);
        this.f16449d.d(this.f16450e, 1.0f, rectF3, this.f16448c);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f16446a.op(this.f16447b, this.f16448c, Path.Op.UNION);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.android.material.shape.m c() {
        return this.f16450e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Path d() {
        return this.f16446a;
    }
}
