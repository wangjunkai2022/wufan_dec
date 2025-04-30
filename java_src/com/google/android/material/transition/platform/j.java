package com.google.android.material.transition.platform;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.google.android.material.transition.platform.MaterialContainerTransform;
/* compiled from: MaskEvaluator.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
class j {

    /* renamed from: a  reason: collision with root package name */
    private final Path f16581a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final Path f16582b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final Path f16583c = new Path();

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.material.shape.n f16584d = com.google.android.material.shape.n.k();

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.material.shape.m f16585e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 23) {
            canvas.clipPath(this.f16581a);
            return;
        }
        canvas.clipPath(this.f16582b);
        canvas.clipPath(this.f16583c, Region.Op.UNION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(float f4, com.google.android.material.shape.m mVar, com.google.android.material.shape.m mVar2, RectF rectF, RectF rectF2, RectF rectF3, MaterialContainerTransform.c cVar) {
        com.google.android.material.shape.m o3 = s.o(mVar, mVar2, rectF, rectF3, cVar.d(), cVar.c(), f4);
        this.f16585e = o3;
        this.f16584d.d(o3, 1.0f, rectF2, this.f16582b);
        this.f16584d.d(this.f16585e, 1.0f, rectF3, this.f16583c);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f16581a.op(this.f16582b, this.f16583c, Path.Op.UNION);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.android.material.shape.m c() {
        return this.f16585e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Path d() {
        return this.f16581a;
    }
}
