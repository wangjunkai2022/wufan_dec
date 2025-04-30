package com.facebook.drawee.drawable;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;
/* compiled from: ScalingUtils.java */
/* loaded from: classes.dex */
public class r {

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    public static abstract class a implements c {
        @Override // com.facebook.drawee.drawable.r.c
        public Matrix a(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5) {
            b(matrix, rect, i2, i4, f4, f5, rect.width() / i2, rect.height() / i4);
            return matrix;
        }

        public abstract void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7);
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final c f12138a = k.f12154j;

        /* renamed from: b  reason: collision with root package name */
        public static final c f12139b = j.f12153j;

        /* renamed from: c  reason: collision with root package name */
        public static final c f12140c = h.f12151j;

        /* renamed from: d  reason: collision with root package name */
        public static final c f12141d = i.f12152j;

        /* renamed from: e  reason: collision with root package name */
        public static final c f12142e = d.f12147j;

        /* renamed from: f  reason: collision with root package name */
        public static final c f12143f = f.f12149j;

        /* renamed from: g  reason: collision with root package name */
        public static final c f12144g = e.f12148j;

        /* renamed from: h  reason: collision with root package name */
        public static final c f12145h = l.f12155j;

        /* renamed from: i  reason: collision with root package name */
        public static final c f12146i = g.f12150j;

        Matrix a(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5);
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    private static class d extends a {

        /* renamed from: j  reason: collision with root package name */
        public static final c f12147j = new d();

        private d() {
        }

        @Override // com.facebook.drawee.drawable.r.a
        public void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7) {
            matrix.setTranslate((int) (rect.left + ((rect.width() - i2) * 0.5f) + 0.5f), (int) (rect.top + ((rect.height() - i4) * 0.5f) + 0.5f));
        }

        public String toString() {
            return "center";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    private static class e extends a {

        /* renamed from: j  reason: collision with root package name */
        public static final c f12148j = new e();

        private e() {
        }

        @Override // com.facebook.drawee.drawable.r.a
        public void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7) {
            float height;
            float f8;
            if (f7 > f6) {
                f8 = rect.left + ((rect.width() - (i2 * f7)) * 0.5f);
                height = rect.top;
                f6 = f7;
            } else {
                height = ((rect.height() - (i4 * f6)) * 0.5f) + rect.top;
                f8 = rect.left;
            }
            matrix.setScale(f6, f6);
            matrix.postTranslate((int) (f8 + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "center_crop";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    private static class f extends a {

        /* renamed from: j  reason: collision with root package name */
        public static final c f12149j = new f();

        private f() {
        }

        @Override // com.facebook.drawee.drawable.r.a
        public void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7) {
            float min = Math.min(Math.min(f6, f7), 1.0f);
            float width = rect.left + ((rect.width() - (i2 * min)) * 0.5f);
            float height = rect.top + ((rect.height() - (i4 * min)) * 0.5f);
            matrix.setScale(min, min);
            matrix.postTranslate((int) (width + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "center_inside";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    private static class g extends a {

        /* renamed from: j  reason: collision with root package name */
        public static final c f12150j = new g();

        private g() {
        }

        @Override // com.facebook.drawee.drawable.r.a
        public void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7) {
            float min = Math.min(f6, f7);
            matrix.setScale(min, min);
            matrix.postTranslate((int) (rect.left + 0.5f), (int) (rect.top + (rect.height() - (i4 * min)) + 0.5f));
        }

        public String toString() {
            return "fit_bottom_start";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    private static class h extends a {

        /* renamed from: j  reason: collision with root package name */
        public static final c f12151j = new h();

        private h() {
        }

        @Override // com.facebook.drawee.drawable.r.a
        public void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7) {
            float min = Math.min(f6, f7);
            float width = rect.left + ((rect.width() - (i2 * min)) * 0.5f);
            float height = rect.top + ((rect.height() - (i4 * min)) * 0.5f);
            matrix.setScale(min, min);
            matrix.postTranslate((int) (width + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "fit_center";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    private static class i extends a {

        /* renamed from: j  reason: collision with root package name */
        public static final c f12152j = new i();

        private i() {
        }

        @Override // com.facebook.drawee.drawable.r.a
        public void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7) {
            float min = Math.min(f6, f7);
            matrix.setScale(min, min);
            matrix.postTranslate((int) (rect.left + (rect.width() - (i2 * min)) + 0.5f), (int) (rect.top + (rect.height() - (i4 * min)) + 0.5f));
        }

        public String toString() {
            return "fit_end";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    private static class j extends a {

        /* renamed from: j  reason: collision with root package name */
        public static final c f12153j = new j();

        private j() {
        }

        @Override // com.facebook.drawee.drawable.r.a
        public void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7) {
            float min = Math.min(f6, f7);
            matrix.setScale(min, min);
            matrix.postTranslate((int) (rect.left + 0.5f), (int) (rect.top + 0.5f));
        }

        public String toString() {
            return "fit_start";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    private static class k extends a {

        /* renamed from: j  reason: collision with root package name */
        public static final c f12154j = new k();

        private k() {
        }

        @Override // com.facebook.drawee.drawable.r.a
        public void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7) {
            matrix.setScale(f6, f7);
            matrix.postTranslate((int) (rect.left + 0.5f), (int) (rect.top + 0.5f));
        }

        public String toString() {
            return "fit_xy";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    private static class l extends a {

        /* renamed from: j  reason: collision with root package name */
        public static final c f12155j = new l();

        private l() {
        }

        @Override // com.facebook.drawee.drawable.r.a
        public void b(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5, float f6, float f7) {
            float f8;
            float max;
            if (f7 > f6) {
                float f9 = i2 * f7;
                f8 = rect.left + Math.max(Math.min((rect.width() * 0.5f) - (f4 * f9), 0.0f), rect.width() - f9);
                max = rect.top;
                f6 = f7;
            } else {
                f8 = rect.left;
                float f10 = i4 * f6;
                max = Math.max(Math.min((rect.height() * 0.5f) - (f5 * f10), 0.0f), rect.height() - f10) + rect.top;
            }
            matrix.setScale(f6, f6);
            matrix.postTranslate((int) (f8 + 0.5f), (int) (max + 0.5f));
        }

        public String toString() {
            return "focus_crop";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes2.dex */
    public interface m {
        Object getState();
    }

    @Nullable
    public static q a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof q) {
            return (q) drawable;
        }
        if (drawable instanceof com.facebook.drawee.drawable.d) {
            return a(((com.facebook.drawee.drawable.d) drawable).q());
        }
        if (drawable instanceof com.facebook.drawee.drawable.a) {
            com.facebook.drawee.drawable.a aVar = (com.facebook.drawee.drawable.a) drawable;
            int d4 = aVar.d();
            for (int i2 = 0; i2 < d4; i2++) {
                q a4 = a(aVar.b(i2));
                if (a4 != null) {
                    return a4;
                }
            }
        }
        return null;
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    public static class b implements c, m {

        /* renamed from: j  reason: collision with root package name */
        private final c f12128j;

        /* renamed from: k  reason: collision with root package name */
        private final c f12129k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private final Rect f12130l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private final Rect f12131m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private final PointF f12132n;
        @Nullable

        /* renamed from: o  reason: collision with root package name */
        private final PointF f12133o;

        /* renamed from: p  reason: collision with root package name */
        private final float[] f12134p;

        /* renamed from: q  reason: collision with root package name */
        private final float[] f12135q;

        /* renamed from: r  reason: collision with root package name */
        private final float[] f12136r;

        /* renamed from: s  reason: collision with root package name */
        private float f12137s;

        public b(c cVar, c cVar2, @Nullable Rect rect, @Nullable Rect rect2, @Nullable PointF pointF, @Nullable PointF pointF2) {
            this.f12134p = new float[9];
            this.f12135q = new float[9];
            this.f12136r = new float[9];
            this.f12128j = cVar;
            this.f12129k = cVar2;
            this.f12130l = rect;
            this.f12131m = rect2;
            this.f12132n = pointF;
            this.f12133o = pointF2;
        }

        @Override // com.facebook.drawee.drawable.r.c
        public Matrix a(Matrix matrix, Rect rect, int i2, int i4, float f4, float f5) {
            Rect rect2 = this.f12130l;
            Rect rect3 = rect2 != null ? rect2 : rect;
            Rect rect4 = this.f12131m;
            Rect rect5 = rect4 != null ? rect4 : rect;
            c cVar = this.f12128j;
            PointF pointF = this.f12132n;
            cVar.a(matrix, rect3, i2, i4, pointF == null ? f4 : pointF.x, pointF == null ? f5 : pointF.y);
            matrix.getValues(this.f12134p);
            c cVar2 = this.f12129k;
            PointF pointF2 = this.f12133o;
            cVar2.a(matrix, rect5, i2, i4, pointF2 == null ? f4 : pointF2.x, pointF2 == null ? f5 : pointF2.y);
            matrix.getValues(this.f12135q);
            for (int i5 = 0; i5 < 9; i5++) {
                float[] fArr = this.f12136r;
                float f6 = this.f12134p[i5];
                float f7 = this.f12137s;
                fArr[i5] = (f6 * (1.0f - f7)) + (this.f12135q[i5] * f7);
            }
            matrix.setValues(this.f12136r);
            return matrix;
        }

        @Nullable
        public Rect b() {
            return this.f12130l;
        }

        @Nullable
        public Rect c() {
            return this.f12131m;
        }

        @Nullable
        public PointF d() {
            return this.f12132n;
        }

        @Nullable
        public PointF e() {
            return this.f12133o;
        }

        public c f() {
            return this.f12128j;
        }

        public c g() {
            return this.f12129k;
        }

        @Override // com.facebook.drawee.drawable.r.m
        public Object getState() {
            return Float.valueOf(this.f12137s);
        }

        public float h() {
            return this.f12137s;
        }

        public void i(float f4) {
            this.f12137s = f4;
        }

        public String toString() {
            return String.format("InterpolatingScaleType(%s (%s) -> %s (%s))", String.valueOf(this.f12128j), String.valueOf(this.f12132n), String.valueOf(this.f12129k), String.valueOf(this.f12133o));
        }

        public b(c cVar, c cVar2, @Nullable Rect rect, @Nullable Rect rect2) {
            this(cVar, cVar2, rect, rect2, null, null);
        }

        public b(c cVar, c cVar2) {
            this(cVar, cVar2, null, null);
        }
    }
}
