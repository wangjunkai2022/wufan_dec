package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ShapePath.java */
/* loaded from: classes2.dex */
public class o {

    /* renamed from: j  reason: collision with root package name */
    private static final float f15676j = 270.0f;

    /* renamed from: k  reason: collision with root package name */
    protected static final float f15677k = 180.0f;
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public float f15678a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public float f15679b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public float f15680c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public float f15681d;
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    public float f15682e;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public float f15683f;

    /* renamed from: g  reason: collision with root package name */
    private final List<g> f15684g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private final List<i> f15685h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private boolean f15686i;

    /* compiled from: ShapePath.java */
    /* loaded from: classes2.dex */
    class a extends i {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f15687b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Matrix f15688c;

        a(List list, Matrix matrix) {
            this.f15687b = list;
            this.f15688c = matrix;
        }

        @Override // com.google.android.material.shape.o.i
        public void a(Matrix matrix, com.google.android.material.shadow.b bVar, int i2, Canvas canvas) {
            for (i iVar : this.f15687b) {
                iVar.a(this.f15688c, bVar, i2, canvas);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ShapePath.java */
    /* loaded from: classes2.dex */
    public static class b extends i {

        /* renamed from: b  reason: collision with root package name */
        private final d f15690b;

        public b(d dVar) {
            this.f15690b = dVar;
        }

        @Override // com.google.android.material.shape.o.i
        public void a(Matrix matrix, @NonNull com.google.android.material.shadow.b bVar, int i2, @NonNull Canvas canvas) {
            bVar.a(canvas, matrix, new RectF(this.f15690b.k(), this.f15690b.o(), this.f15690b.l(), this.f15690b.j()), i2, this.f15690b.m(), this.f15690b.n());
        }
    }

    /* compiled from: ShapePath.java */
    /* loaded from: classes2.dex */
    static class c extends i {

        /* renamed from: b  reason: collision with root package name */
        private final f f15691b;

        /* renamed from: c  reason: collision with root package name */
        private final float f15692c;

        /* renamed from: d  reason: collision with root package name */
        private final float f15693d;

        public c(f fVar, float f4, float f5) {
            this.f15691b = fVar;
            this.f15692c = f4;
            this.f15693d = f5;
        }

        @Override // com.google.android.material.shape.o.i
        public void a(Matrix matrix, @NonNull com.google.android.material.shadow.b bVar, int i2, @NonNull Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f15691b.f15708c - this.f15693d, this.f15691b.f15707b - this.f15692c), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f15692c, this.f15693d);
            matrix2.preRotate(c());
            bVar.b(canvas, matrix2, rectF, i2);
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.f15691b.f15708c - this.f15693d) / (this.f15691b.f15707b - this.f15692c)));
        }
    }

    /* compiled from: ShapePath.java */
    /* loaded from: classes2.dex */
    public static class d extends g {

        /* renamed from: h  reason: collision with root package name */
        private static final RectF f15694h = new RectF();
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public float f15695b;
        @Deprecated

        /* renamed from: c  reason: collision with root package name */
        public float f15696c;
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        public float f15697d;
        @Deprecated

        /* renamed from: e  reason: collision with root package name */
        public float f15698e;
        @Deprecated

        /* renamed from: f  reason: collision with root package name */
        public float f15699f;
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        public float f15700g;

        public d(float f4, float f5, float f6, float f7) {
            q(f4);
            u(f5);
            r(f6);
            p(f7);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float j() {
            return this.f15698e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float k() {
            return this.f15695b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float l() {
            return this.f15697d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float m() {
            return this.f15699f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float n() {
            return this.f15700g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float o() {
            return this.f15696c;
        }

        private void p(float f4) {
            this.f15698e = f4;
        }

        private void q(float f4) {
            this.f15695b = f4;
        }

        private void r(float f4) {
            this.f15697d = f4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(float f4) {
            this.f15699f = f4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(float f4) {
            this.f15700g = f4;
        }

        private void u(float f4) {
            this.f15696c = f4;
        }

        @Override // com.google.android.material.shape.o.g
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f15709a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f15694h;
            rectF.set(k(), o(), l(), j());
            path.arcTo(rectF, m(), n(), false);
            path.transform(matrix);
        }
    }

    /* compiled from: ShapePath.java */
    /* loaded from: classes2.dex */
    public static class e extends g {

        /* renamed from: b  reason: collision with root package name */
        private float f15701b;

        /* renamed from: c  reason: collision with root package name */
        private float f15702c;

        /* renamed from: d  reason: collision with root package name */
        private float f15703d;

        /* renamed from: e  reason: collision with root package name */
        private float f15704e;

        /* renamed from: f  reason: collision with root package name */
        private float f15705f;

        /* renamed from: g  reason: collision with root package name */
        private float f15706g;

        public e(float f4, float f5, float f6, float f7, float f8, float f9) {
            h(f4);
            j(f5);
            i(f6);
            k(f7);
            l(f8);
            m(f9);
        }

        private float b() {
            return this.f15701b;
        }

        private float c() {
            return this.f15703d;
        }

        private float d() {
            return this.f15702c;
        }

        private float e() {
            return this.f15702c;
        }

        private float f() {
            return this.f15705f;
        }

        private float g() {
            return this.f15706g;
        }

        private void h(float f4) {
            this.f15701b = f4;
        }

        private void i(float f4) {
            this.f15703d = f4;
        }

        private void j(float f4) {
            this.f15702c = f4;
        }

        private void k(float f4) {
            this.f15704e = f4;
        }

        private void l(float f4) {
            this.f15705f = f4;
        }

        private void m(float f4) {
            this.f15706g = f4;
        }

        @Override // com.google.android.material.shape.o.g
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f15709a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.cubicTo(this.f15701b, this.f15702c, this.f15703d, this.f15704e, this.f15705f, this.f15706g);
            path.transform(matrix);
        }
    }

    /* compiled from: ShapePath.java */
    /* loaded from: classes2.dex */
    public static class f extends g {

        /* renamed from: b  reason: collision with root package name */
        private float f15707b;

        /* renamed from: c  reason: collision with root package name */
        private float f15708c;

        @Override // com.google.android.material.shape.o.g
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f15709a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f15707b, this.f15708c);
            path.transform(matrix);
        }
    }

    /* compiled from: ShapePath.java */
    /* loaded from: classes2.dex */
    public static abstract class g {

        /* renamed from: a  reason: collision with root package name */
        protected final Matrix f15709a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    /* compiled from: ShapePath.java */
    /* loaded from: classes2.dex */
    public static class h extends g {
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public float f15710b;
        @Deprecated

        /* renamed from: c  reason: collision with root package name */
        public float f15711c;
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        public float f15712d;
        @Deprecated

        /* renamed from: e  reason: collision with root package name */
        public float f15713e;

        private float f() {
            return this.f15710b;
        }

        private float g() {
            return this.f15711c;
        }

        private float h() {
            return this.f15712d;
        }

        private float i() {
            return this.f15713e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(float f4) {
            this.f15710b = f4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k(float f4) {
            this.f15711c = f4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(float f4) {
            this.f15712d = f4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(float f4) {
            this.f15713e = f4;
        }

        @Override // com.google.android.material.shape.o.g
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f15709a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(f(), g(), h(), i());
            path.transform(matrix);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ShapePath.java */
    /* loaded from: classes2.dex */
    public static abstract class i {

        /* renamed from: a  reason: collision with root package name */
        static final Matrix f15714a = new Matrix();

        i() {
        }

        public abstract void a(Matrix matrix, com.google.android.material.shadow.b bVar, int i2, Canvas canvas);

        public final void b(com.google.android.material.shadow.b bVar, int i2, Canvas canvas) {
            a(f15714a, bVar, i2, canvas);
        }
    }

    public o() {
        p(0.0f, 0.0f);
    }

    private void b(float f4) {
        if (h() == f4) {
            return;
        }
        float h4 = ((f4 - h()) + 360.0f) % 360.0f;
        if (h4 > f15677k) {
            return;
        }
        d dVar = new d(j(), k(), j(), k());
        dVar.s(h());
        dVar.t(h4);
        this.f15685h.add(new b(dVar));
        r(f4);
    }

    private void c(i iVar, float f4, float f5) {
        b(f4);
        this.f15685h.add(iVar);
        r(f5);
    }

    private float h() {
        return this.f15682e;
    }

    private float i() {
        return this.f15683f;
    }

    private void r(float f4) {
        this.f15682e = f4;
    }

    private void s(float f4) {
        this.f15683f = f4;
    }

    private void t(float f4) {
        this.f15680c = f4;
    }

    private void u(float f4) {
        this.f15681d = f4;
    }

    private void v(float f4) {
        this.f15678a = f4;
    }

    private void w(float f4) {
        this.f15679b = f4;
    }

    public void a(float f4, float f5, float f6, float f7, float f8, float f9) {
        d dVar = new d(f4, f5, f6, f7);
        dVar.s(f8);
        dVar.t(f9);
        this.f15684g.add(dVar);
        b bVar = new b(dVar);
        float f10 = f8 + f9;
        boolean z3 = f9 < 0.0f;
        if (z3) {
            f8 = (f8 + f15677k) % 360.0f;
        }
        c(bVar, f8, z3 ? (f15677k + f10) % 360.0f : f10);
        double d4 = f10;
        t(((f4 + f6) * 0.5f) + (((f6 - f4) / 2.0f) * ((float) Math.cos(Math.toRadians(d4)))));
        u(((f5 + f7) * 0.5f) + (((f7 - f5) / 2.0f) * ((float) Math.sin(Math.toRadians(d4)))));
    }

    public void d(Matrix matrix, Path path) {
        int size = this.f15684g.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f15684g.get(i2).a(matrix, path);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.f15686i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public i f(Matrix matrix) {
        b(i());
        return new a(new ArrayList(this.f15685h), new Matrix(matrix));
    }

    @RequiresApi(21)
    public void g(float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f15684g.add(new e(f4, f5, f6, f7, f8, f9));
        this.f15686i = true;
        t(f8);
        u(f9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float j() {
        return this.f15680c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float k() {
        return this.f15681d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float l() {
        return this.f15678a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float m() {
        return this.f15679b;
    }

    public void n(float f4, float f5) {
        f fVar = new f();
        fVar.f15707b = f4;
        fVar.f15708c = f5;
        this.f15684g.add(fVar);
        c cVar = new c(fVar, j(), k());
        c(cVar, cVar.c() + f15676j, cVar.c() + f15676j);
        t(f4);
        u(f5);
    }

    @RequiresApi(21)
    public void o(float f4, float f5, float f6, float f7) {
        h hVar = new h();
        hVar.j(f4);
        hVar.k(f5);
        hVar.l(f6);
        hVar.m(f7);
        this.f15684g.add(hVar);
        this.f15686i = true;
        t(f6);
        u(f7);
    }

    public void p(float f4, float f5) {
        q(f4, f5, f15676j, 0.0f);
    }

    public void q(float f4, float f5, float f6, float f7) {
        v(f4);
        w(f5);
        t(f4);
        u(f5);
        r(f6);
        s((f6 + f7) % 360.0f);
        this.f15684g.clear();
        this.f15685h.clear();
        this.f15686i = false;
    }

    public o(float f4, float f5) {
        p(f4, f5);
    }
}
