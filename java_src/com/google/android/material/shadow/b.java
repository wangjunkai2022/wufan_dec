package com.google.android.material.shadow;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
/* compiled from: ShadowRenderer.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class b {

    /* renamed from: i  reason: collision with root package name */
    private static final int f15551i = 68;

    /* renamed from: j  reason: collision with root package name */
    private static final int f15552j = 20;

    /* renamed from: k  reason: collision with root package name */
    private static final int f15553k = 0;

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f15554l = new int[3];

    /* renamed from: m  reason: collision with root package name */
    private static final float[] f15555m = {0.0f, 0.5f, 1.0f};

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f15556n = new int[4];

    /* renamed from: o  reason: collision with root package name */
    private static final float[] f15557o = {0.0f, 0.0f, 0.5f, 1.0f};
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Paint f15558a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Paint f15559b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final Paint f15560c;

    /* renamed from: d  reason: collision with root package name */
    private int f15561d;

    /* renamed from: e  reason: collision with root package name */
    private int f15562e;

    /* renamed from: f  reason: collision with root package name */
    private int f15563f;

    /* renamed from: g  reason: collision with root package name */
    private final Path f15564g;

    /* renamed from: h  reason: collision with root package name */
    private Paint f15565h;

    public b() {
        this(-16777216);
    }

    public void a(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i2, float f4, float f5) {
        boolean z3 = f5 < 0.0f;
        Path path = this.f15564g;
        if (z3) {
            int[] iArr = f15556n;
            iArr[0] = 0;
            iArr[1] = this.f15563f;
            iArr[2] = this.f15562e;
            iArr[3] = this.f15561d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f4, f5);
            path.close();
            float f6 = -i2;
            rectF.inset(f6, f6);
            int[] iArr2 = f15556n;
            iArr2[0] = 0;
            iArr2[1] = this.f15561d;
            iArr2[2] = this.f15562e;
            iArr2[3] = this.f15563f;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f7 = 1.0f - (i2 / width);
        float[] fArr = f15557o;
        fArr[1] = f7;
        fArr[2] = ((1.0f - f7) / 2.0f) + f7;
        this.f15559b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, f15556n, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z3) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f15565h);
        }
        canvas.drawArc(rectF, f4, f5, true, this.f15559b);
        canvas.restore();
    }

    public void b(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i2) {
        rectF.bottom += i2;
        rectF.offset(0.0f, -i2);
        int[] iArr = f15554l;
        iArr[0] = this.f15563f;
        iArr[1] = this.f15562e;
        iArr[2] = this.f15561d;
        Paint paint = this.f15560c;
        float f4 = rectF.left;
        paint.setShader(new LinearGradient(f4, rectF.top, f4, rectF.bottom, iArr, f15555m, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f15560c);
        canvas.restore();
    }

    @NonNull
    public Paint c() {
        return this.f15558a;
    }

    public void d(int i2) {
        this.f15561d = ColorUtils.setAlphaComponent(i2, 68);
        this.f15562e = ColorUtils.setAlphaComponent(i2, 20);
        this.f15563f = ColorUtils.setAlphaComponent(i2, 0);
        this.f15558a.setColor(this.f15561d);
    }

    public b(int i2) {
        this.f15564g = new Path();
        this.f15565h = new Paint();
        this.f15558a = new Paint();
        d(i2);
        this.f15565h.setColor(0);
        Paint paint = new Paint(4);
        this.f15559b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f15560c = new Paint(paint);
    }
}
