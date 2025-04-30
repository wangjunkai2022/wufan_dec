package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
/* compiled from: ShapeAppearancePathProvider.java */
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final o[] f15658a = new o[4];

    /* renamed from: b  reason: collision with root package name */
    private final Matrix[] f15659b = new Matrix[4];

    /* renamed from: c  reason: collision with root package name */
    private final Matrix[] f15660c = new Matrix[4];

    /* renamed from: d  reason: collision with root package name */
    private final PointF f15661d = new PointF();

    /* renamed from: e  reason: collision with root package name */
    private final Path f15662e = new Path();

    /* renamed from: f  reason: collision with root package name */
    private final Path f15663f = new Path();

    /* renamed from: g  reason: collision with root package name */
    private final o f15664g = new o();

    /* renamed from: h  reason: collision with root package name */
    private final float[] f15665h = new float[2];

    /* renamed from: i  reason: collision with root package name */
    private final float[] f15666i = new float[2];

    /* renamed from: j  reason: collision with root package name */
    private final Path f15667j = new Path();

    /* renamed from: k  reason: collision with root package name */
    private final Path f15668k = new Path();

    /* renamed from: l  reason: collision with root package name */
    private boolean f15669l = true;

    /* compiled from: ShapeAppearancePathProvider.java */
    /* loaded from: classes2.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        static final n f15670a = new n();

        private a() {
        }
    }

    /* compiled from: ShapeAppearancePathProvider.java */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public interface b {
        void a(o oVar, Matrix matrix, int i2);

        void b(o oVar, Matrix matrix, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ShapeAppearancePathProvider.java */
    /* loaded from: classes2.dex */
    public static final class c {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        public final m f15671a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        public final Path f15672b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        public final RectF f15673c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final b f15674d;

        /* renamed from: e  reason: collision with root package name */
        public final float f15675e;

        c(@NonNull m mVar, float f4, RectF rectF, @Nullable b bVar, Path path) {
            this.f15674d = bVar;
            this.f15671a = mVar;
            this.f15675e = f4;
            this.f15673c = rectF;
            this.f15672b = path;
        }
    }

    public n() {
        for (int i2 = 0; i2 < 4; i2++) {
            this.f15658a[i2] = new o();
            this.f15659b[i2] = new Matrix();
            this.f15660c[i2] = new Matrix();
        }
    }

    private float a(int i2) {
        return (i2 + 1) * 90;
    }

    private void b(@NonNull c cVar, int i2) {
        this.f15665h[0] = this.f15658a[i2].l();
        this.f15665h[1] = this.f15658a[i2].m();
        this.f15659b[i2].mapPoints(this.f15665h);
        if (i2 == 0) {
            Path path = cVar.f15672b;
            float[] fArr = this.f15665h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f15672b;
            float[] fArr2 = this.f15665h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f15658a[i2].d(this.f15659b[i2], cVar.f15672b);
        b bVar = cVar.f15674d;
        if (bVar != null) {
            bVar.a(this.f15658a[i2], this.f15659b[i2], i2);
        }
    }

    private void c(@NonNull c cVar, int i2) {
        int i4 = (i2 + 1) % 4;
        this.f15665h[0] = this.f15658a[i2].j();
        this.f15665h[1] = this.f15658a[i2].k();
        this.f15659b[i2].mapPoints(this.f15665h);
        this.f15666i[0] = this.f15658a[i4].l();
        this.f15666i[1] = this.f15658a[i4].m();
        this.f15659b[i4].mapPoints(this.f15666i);
        float[] fArr = this.f15665h;
        float f4 = fArr[0];
        float[] fArr2 = this.f15666i;
        float max = Math.max(((float) Math.hypot(f4 - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
        float i5 = i(cVar.f15673c, i2);
        this.f15664g.p(0.0f, 0.0f);
        f j4 = j(i2, cVar.f15671a);
        j4.b(max, i5, cVar.f15675e, this.f15664g);
        this.f15667j.reset();
        this.f15664g.d(this.f15660c[i2], this.f15667j);
        if (this.f15669l && Build.VERSION.SDK_INT >= 19 && (j4.a() || l(this.f15667j, i2) || l(this.f15667j, i4))) {
            Path path = this.f15667j;
            path.op(path, this.f15663f, Path.Op.DIFFERENCE);
            this.f15665h[0] = this.f15664g.l();
            this.f15665h[1] = this.f15664g.m();
            this.f15660c[i2].mapPoints(this.f15665h);
            Path path2 = this.f15662e;
            float[] fArr3 = this.f15665h;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.f15664g.d(this.f15660c[i2], this.f15662e);
        } else {
            this.f15664g.d(this.f15660c[i2], cVar.f15672b);
        }
        b bVar = cVar.f15674d;
        if (bVar != null) {
            bVar.b(this.f15664g, this.f15660c[i2], i2);
        }
    }

    private void f(int i2, @NonNull RectF rectF, @NonNull PointF pointF) {
        if (i2 == 1) {
            pointF.set(rectF.right, rectF.bottom);
        } else if (i2 == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i2 != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    private com.google.android.material.shape.c g(int i2, @NonNull m mVar) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return mVar.t();
                }
                return mVar.r();
            }
            return mVar.j();
        }
        return mVar.l();
    }

    private d h(int i2, @NonNull m mVar) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return mVar.s();
                }
                return mVar.q();
            }
            return mVar.i();
        }
        return mVar.k();
    }

    private float i(@NonNull RectF rectF, int i2) {
        float[] fArr = this.f15665h;
        o[] oVarArr = this.f15658a;
        fArr[0] = oVarArr[i2].f15680c;
        fArr[1] = oVarArr[i2].f15681d;
        this.f15659b[i2].mapPoints(fArr);
        if (i2 != 1 && i2 != 3) {
            return Math.abs(rectF.centerY() - this.f15665h[1]);
        }
        return Math.abs(rectF.centerX() - this.f15665h[0]);
    }

    private f j(int i2, @NonNull m mVar) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return mVar.o();
                }
                return mVar.p();
            }
            return mVar.n();
        }
        return mVar.h();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public static n k() {
        return a.f15670a;
    }

    @RequiresApi(19)
    private boolean l(Path path, int i2) {
        this.f15668k.reset();
        this.f15658a[i2].d(this.f15659b[i2], this.f15668k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f15668k.computeBounds(rectF, true);
        path.op(this.f15668k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void m(@NonNull c cVar, int i2) {
        h(i2, cVar.f15671a).c(this.f15658a[i2], 90.0f, cVar.f15675e, cVar.f15673c, g(i2, cVar.f15671a));
        float a4 = a(i2);
        this.f15659b[i2].reset();
        f(i2, cVar.f15673c, this.f15661d);
        Matrix matrix = this.f15659b[i2];
        PointF pointF = this.f15661d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f15659b[i2].preRotate(a4);
    }

    private void o(int i2) {
        this.f15665h[0] = this.f15658a[i2].j();
        this.f15665h[1] = this.f15658a[i2].k();
        this.f15659b[i2].mapPoints(this.f15665h);
        float a4 = a(i2);
        this.f15660c[i2].reset();
        Matrix matrix = this.f15660c[i2];
        float[] fArr = this.f15665h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f15660c[i2].preRotate(a4);
    }

    public void d(m mVar, float f4, RectF rectF, @NonNull Path path) {
        e(mVar, f4, rectF, null, path);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void e(m mVar, float f4, RectF rectF, b bVar, @NonNull Path path) {
        path.rewind();
        this.f15662e.rewind();
        this.f15663f.rewind();
        this.f15663f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(mVar, f4, rectF, bVar, path);
        for (int i2 = 0; i2 < 4; i2++) {
            m(cVar, i2);
            o(i2);
        }
        for (int i4 = 0; i4 < 4; i4++) {
            b(cVar, i4);
            c(cVar, i4);
        }
        path.close();
        this.f15662e.close();
        if (Build.VERSION.SDK_INT < 19 || this.f15662e.isEmpty()) {
            return;
        }
        path.op(this.f15662e, Path.Op.UNION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(boolean z3) {
        this.f15669l = z3;
    }
}
