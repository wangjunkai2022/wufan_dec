package com.google.android.material.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.NonNull;
/* compiled from: ImageMatrixProperty.java */
/* loaded from: classes2.dex */
public class f extends Property<ImageView, Matrix> {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f14013a;

    public f() {
        super(Matrix.class, "imageMatrixProperty");
        this.f14013a = new Matrix();
    }

    @Override // android.util.Property
    @NonNull
    /* renamed from: a */
    public Matrix get(@NonNull ImageView imageView) {
        this.f14013a.set(imageView.getImageMatrix());
        return this.f14013a;
    }

    @Override // android.util.Property
    /* renamed from: b */
    public void set(@NonNull ImageView imageView, @NonNull Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
