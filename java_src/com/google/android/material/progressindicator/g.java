package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.progressindicator.b;
/* compiled from: DrawingDelegate.java */
/* loaded from: classes2.dex */
abstract class g<S extends b> {

    /* renamed from: a  reason: collision with root package name */
    S f15443a;

    /* renamed from: b  reason: collision with root package name */
    protected f f15444b;

    public g(S s3) {
        this.f15443a = s3;
    }

    abstract void a(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5, @ColorInt int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c(@NonNull Canvas canvas, @NonNull Paint paint);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int e();

    /* JADX INFO: Access modifiers changed from: protected */
    public void f(@NonNull f fVar) {
        this.f15444b = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f15443a.e();
        a(canvas, f4);
    }
}
