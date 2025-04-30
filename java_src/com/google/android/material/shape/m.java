package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
/* compiled from: ShapeAppearanceModel.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: m  reason: collision with root package name */
    public static final com.google.android.material.shape.c f15633m = new k(0.5f);

    /* renamed from: a  reason: collision with root package name */
    d f15634a;

    /* renamed from: b  reason: collision with root package name */
    d f15635b;

    /* renamed from: c  reason: collision with root package name */
    d f15636c;

    /* renamed from: d  reason: collision with root package name */
    d f15637d;

    /* renamed from: e  reason: collision with root package name */
    com.google.android.material.shape.c f15638e;

    /* renamed from: f  reason: collision with root package name */
    com.google.android.material.shape.c f15639f;

    /* renamed from: g  reason: collision with root package name */
    com.google.android.material.shape.c f15640g;

    /* renamed from: h  reason: collision with root package name */
    com.google.android.material.shape.c f15641h;

    /* renamed from: i  reason: collision with root package name */
    f f15642i;

    /* renamed from: j  reason: collision with root package name */
    f f15643j;

    /* renamed from: k  reason: collision with root package name */
    f f15644k;

    /* renamed from: l  reason: collision with root package name */
    f f15645l;

    /* compiled from: ShapeAppearanceModel.java */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public interface c {
        @NonNull
        com.google.android.material.shape.c a(@NonNull com.google.android.material.shape.c cVar);
    }

    @NonNull
    public static b a() {
        return new b();
    }

    @NonNull
    public static b b(Context context, @StyleRes int i2, @StyleRes int i4) {
        return c(context, i2, i4, 0);
    }

    @NonNull
    private static b c(Context context, @StyleRes int i2, @StyleRes int i4, int i5) {
        return d(context, i2, i4, new com.google.android.material.shape.a(i5));
    }

    @NonNull
    private static b d(Context context, @StyleRes int i2, @StyleRes int i4, @NonNull com.google.android.material.shape.c cVar) {
        if (i4 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i2);
            i2 = i4;
            context = contextThemeWrapper;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, R.styleable.ShapeAppearance);
        try {
            int i5 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamily, 0);
            int i6 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopLeft, i5);
            int i7 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopRight, i5);
            int i8 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomRight, i5);
            int i9 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomLeft, i5);
            com.google.android.material.shape.c m4 = m(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSize, cVar);
            com.google.android.material.shape.c m5 = m(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopLeft, m4);
            com.google.android.material.shape.c m6 = m(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopRight, m4);
            com.google.android.material.shape.c m7 = m(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomRight, m4);
            return new b().I(i6, m5).N(i7, m6).A(i8, m7).v(i9, m(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomLeft, m4));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @NonNull
    public static b e(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        return f(context, attributeSet, i2, i4, 0);
    }

    @NonNull
    public static b f(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4, int i5) {
        return g(context, attributeSet, i2, i4, new com.google.android.material.shape.a(i5));
    }

    @NonNull
    public static b g(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4, @NonNull com.google.android.material.shape.c cVar) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaterialShape, i2, i4);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearanceOverlay, 0);
        obtainStyledAttributes.recycle();
        return d(context, resourceId, resourceId2, cVar);
    }

    @NonNull
    private static com.google.android.material.shape.c m(TypedArray typedArray, int i2, @NonNull com.google.android.material.shape.c cVar) {
        TypedValue peekValue = typedArray.peekValue(i2);
        if (peekValue == null) {
            return cVar;
        }
        int i4 = peekValue.type;
        if (i4 == 5) {
            return new com.google.android.material.shape.a(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
        }
        return i4 == 6 ? new k(peekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    @NonNull
    public f h() {
        return this.f15644k;
    }

    @NonNull
    public d i() {
        return this.f15637d;
    }

    @NonNull
    public com.google.android.material.shape.c j() {
        return this.f15641h;
    }

    @NonNull
    public d k() {
        return this.f15636c;
    }

    @NonNull
    public com.google.android.material.shape.c l() {
        return this.f15640g;
    }

    @NonNull
    public f n() {
        return this.f15645l;
    }

    @NonNull
    public f o() {
        return this.f15643j;
    }

    @NonNull
    public f p() {
        return this.f15642i;
    }

    @NonNull
    public d q() {
        return this.f15634a;
    }

    @NonNull
    public com.google.android.material.shape.c r() {
        return this.f15638e;
    }

    @NonNull
    public d s() {
        return this.f15635b;
    }

    @NonNull
    public com.google.android.material.shape.c t() {
        return this.f15639f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean u(@NonNull RectF rectF) {
        boolean z3 = this.f15645l.getClass().equals(f.class) && this.f15643j.getClass().equals(f.class) && this.f15642i.getClass().equals(f.class) && this.f15644k.getClass().equals(f.class);
        float a4 = this.f15638e.a(rectF);
        return z3 && ((this.f15639f.a(rectF) > a4 ? 1 : (this.f15639f.a(rectF) == a4 ? 0 : -1)) == 0 && (this.f15641h.a(rectF) > a4 ? 1 : (this.f15641h.a(rectF) == a4 ? 0 : -1)) == 0 && (this.f15640g.a(rectF) > a4 ? 1 : (this.f15640g.a(rectF) == a4 ? 0 : -1)) == 0) && ((this.f15635b instanceof l) && (this.f15634a instanceof l) && (this.f15636c instanceof l) && (this.f15637d instanceof l));
    }

    @NonNull
    public b v() {
        return new b(this);
    }

    @NonNull
    public m w(float f4) {
        return v().o(f4).m();
    }

    @NonNull
    public m x(@NonNull com.google.android.material.shape.c cVar) {
        return v().p(cVar).m();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public m y(@NonNull c cVar) {
        return v().L(cVar.a(r())).Q(cVar.a(t())).y(cVar.a(j())).D(cVar.a(l())).m();
    }

    private m(@NonNull b bVar) {
        this.f15634a = bVar.f15646a;
        this.f15635b = bVar.f15647b;
        this.f15636c = bVar.f15648c;
        this.f15637d = bVar.f15649d;
        this.f15638e = bVar.f15650e;
        this.f15639f = bVar.f15651f;
        this.f15640g = bVar.f15652g;
        this.f15641h = bVar.f15653h;
        this.f15642i = bVar.f15654i;
        this.f15643j = bVar.f15655j;
        this.f15644k = bVar.f15656k;
        this.f15645l = bVar.f15657l;
    }

    /* compiled from: ShapeAppearanceModel.java */
    /* loaded from: classes2.dex */
    public static final class b {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private d f15646a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private d f15647b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private d f15648c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private d f15649d;
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        private com.google.android.material.shape.c f15650e;
        @NonNull

        /* renamed from: f  reason: collision with root package name */
        private com.google.android.material.shape.c f15651f;
        @NonNull

        /* renamed from: g  reason: collision with root package name */
        private com.google.android.material.shape.c f15652g;
        @NonNull

        /* renamed from: h  reason: collision with root package name */
        private com.google.android.material.shape.c f15653h;
        @NonNull

        /* renamed from: i  reason: collision with root package name */
        private f f15654i;
        @NonNull

        /* renamed from: j  reason: collision with root package name */
        private f f15655j;
        @NonNull

        /* renamed from: k  reason: collision with root package name */
        private f f15656k;
        @NonNull

        /* renamed from: l  reason: collision with root package name */
        private f f15657l;

        public b() {
            this.f15646a = i.b();
            this.f15647b = i.b();
            this.f15648c = i.b();
            this.f15649d = i.b();
            this.f15650e = new com.google.android.material.shape.a(0.0f);
            this.f15651f = new com.google.android.material.shape.a(0.0f);
            this.f15652g = new com.google.android.material.shape.a(0.0f);
            this.f15653h = new com.google.android.material.shape.a(0.0f);
            this.f15654i = i.c();
            this.f15655j = i.c();
            this.f15656k = i.c();
            this.f15657l = i.c();
        }

        private static float n(d dVar) {
            if (dVar instanceof l) {
                return ((l) dVar).f15632a;
            }
            if (dVar instanceof e) {
                return ((e) dVar).f15620a;
            }
            return -1.0f;
        }

        @NonNull
        public b A(int i2, @NonNull com.google.android.material.shape.c cVar) {
            return B(i.a(i2)).D(cVar);
        }

        @NonNull
        public b B(@NonNull d dVar) {
            this.f15648c = dVar;
            float n4 = n(dVar);
            if (n4 != -1.0f) {
                C(n4);
            }
            return this;
        }

        @NonNull
        public b C(@Dimension float f4) {
            this.f15652g = new com.google.android.material.shape.a(f4);
            return this;
        }

        @NonNull
        public b D(@NonNull com.google.android.material.shape.c cVar) {
            this.f15652g = cVar;
            return this;
        }

        @NonNull
        public b E(@NonNull f fVar) {
            this.f15657l = fVar;
            return this;
        }

        @NonNull
        public b F(@NonNull f fVar) {
            this.f15655j = fVar;
            return this;
        }

        @NonNull
        public b G(@NonNull f fVar) {
            this.f15654i = fVar;
            return this;
        }

        @NonNull
        public b H(int i2, @Dimension float f4) {
            return J(i.a(i2)).K(f4);
        }

        @NonNull
        public b I(int i2, @NonNull com.google.android.material.shape.c cVar) {
            return J(i.a(i2)).L(cVar);
        }

        @NonNull
        public b J(@NonNull d dVar) {
            this.f15646a = dVar;
            float n4 = n(dVar);
            if (n4 != -1.0f) {
                K(n4);
            }
            return this;
        }

        @NonNull
        public b K(@Dimension float f4) {
            this.f15650e = new com.google.android.material.shape.a(f4);
            return this;
        }

        @NonNull
        public b L(@NonNull com.google.android.material.shape.c cVar) {
            this.f15650e = cVar;
            return this;
        }

        @NonNull
        public b M(int i2, @Dimension float f4) {
            return O(i.a(i2)).P(f4);
        }

        @NonNull
        public b N(int i2, @NonNull com.google.android.material.shape.c cVar) {
            return O(i.a(i2)).Q(cVar);
        }

        @NonNull
        public b O(@NonNull d dVar) {
            this.f15647b = dVar;
            float n4 = n(dVar);
            if (n4 != -1.0f) {
                P(n4);
            }
            return this;
        }

        @NonNull
        public b P(@Dimension float f4) {
            this.f15651f = new com.google.android.material.shape.a(f4);
            return this;
        }

        @NonNull
        public b Q(@NonNull com.google.android.material.shape.c cVar) {
            this.f15651f = cVar;
            return this;
        }

        @NonNull
        public m m() {
            return new m(this);
        }

        @NonNull
        public b o(@Dimension float f4) {
            return K(f4).P(f4).C(f4).x(f4);
        }

        @NonNull
        public b p(@NonNull com.google.android.material.shape.c cVar) {
            return L(cVar).Q(cVar).D(cVar).y(cVar);
        }

        @NonNull
        public b q(int i2, @Dimension float f4) {
            return r(i.a(i2)).o(f4);
        }

        @NonNull
        public b r(@NonNull d dVar) {
            return J(dVar).O(dVar).B(dVar).w(dVar);
        }

        @NonNull
        public b s(@NonNull f fVar) {
            return E(fVar).G(fVar).F(fVar).t(fVar);
        }

        @NonNull
        public b t(@NonNull f fVar) {
            this.f15656k = fVar;
            return this;
        }

        @NonNull
        public b u(int i2, @Dimension float f4) {
            return w(i.a(i2)).x(f4);
        }

        @NonNull
        public b v(int i2, @NonNull com.google.android.material.shape.c cVar) {
            return w(i.a(i2)).y(cVar);
        }

        @NonNull
        public b w(@NonNull d dVar) {
            this.f15649d = dVar;
            float n4 = n(dVar);
            if (n4 != -1.0f) {
                x(n4);
            }
            return this;
        }

        @NonNull
        public b x(@Dimension float f4) {
            this.f15653h = new com.google.android.material.shape.a(f4);
            return this;
        }

        @NonNull
        public b y(@NonNull com.google.android.material.shape.c cVar) {
            this.f15653h = cVar;
            return this;
        }

        @NonNull
        public b z(int i2, @Dimension float f4) {
            return B(i.a(i2)).C(f4);
        }

        public b(@NonNull m mVar) {
            this.f15646a = i.b();
            this.f15647b = i.b();
            this.f15648c = i.b();
            this.f15649d = i.b();
            this.f15650e = new com.google.android.material.shape.a(0.0f);
            this.f15651f = new com.google.android.material.shape.a(0.0f);
            this.f15652g = new com.google.android.material.shape.a(0.0f);
            this.f15653h = new com.google.android.material.shape.a(0.0f);
            this.f15654i = i.c();
            this.f15655j = i.c();
            this.f15656k = i.c();
            this.f15657l = i.c();
            this.f15646a = mVar.f15634a;
            this.f15647b = mVar.f15635b;
            this.f15648c = mVar.f15636c;
            this.f15649d = mVar.f15637d;
            this.f15650e = mVar.f15638e;
            this.f15651f = mVar.f15639f;
            this.f15652g = mVar.f15640g;
            this.f15653h = mVar.f15641h;
            this.f15654i = mVar.f15642i;
            this.f15655j = mVar.f15643j;
            this.f15656k = mVar.f15644k;
            this.f15657l = mVar.f15645l;
        }
    }

    public m() {
        this.f15634a = i.b();
        this.f15635b = i.b();
        this.f15636c = i.b();
        this.f15637d = i.b();
        this.f15638e = new com.google.android.material.shape.a(0.0f);
        this.f15639f = new com.google.android.material.shape.a(0.0f);
        this.f15640g = new com.google.android.material.shape.a(0.0f);
        this.f15641h = new com.google.android.material.shape.a(0.0f);
        this.f15642i = i.c();
        this.f15643j = i.c();
        this.f15644k = i.c();
        this.f15645l = i.c();
    }
}
