package com.google.android.material.shape;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import com.google.android.material.R;
import com.google.android.material.shape.m;
import com.google.android.material.shape.n;
import com.google.android.material.shape.o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.BitSet;
/* loaded from: classes2.dex */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable, q {
    public static final int A = 0;
    public static final int B = 1;
    public static final int C = 2;
    private static final Paint D;

    /* renamed from: x  reason: collision with root package name */
    private static final String f15566x = MaterialShapeDrawable.class.getSimpleName();

    /* renamed from: y  reason: collision with root package name */
    private static final float f15567y = 0.75f;

    /* renamed from: z  reason: collision with root package name */
    private static final float f15568z = 0.25f;

    /* renamed from: a  reason: collision with root package name */
    private c f15569a;

    /* renamed from: b  reason: collision with root package name */
    private final o.i[] f15570b;

    /* renamed from: c  reason: collision with root package name */
    private final o.i[] f15571c;

    /* renamed from: d  reason: collision with root package name */
    private final BitSet f15572d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f15573e;

    /* renamed from: f  reason: collision with root package name */
    private final Matrix f15574f;

    /* renamed from: g  reason: collision with root package name */
    private final Path f15575g;

    /* renamed from: h  reason: collision with root package name */
    private final Path f15576h;

    /* renamed from: i  reason: collision with root package name */
    private final RectF f15577i;

    /* renamed from: j  reason: collision with root package name */
    private final RectF f15578j;

    /* renamed from: k  reason: collision with root package name */
    private final Region f15579k;

    /* renamed from: l  reason: collision with root package name */
    private final Region f15580l;

    /* renamed from: m  reason: collision with root package name */
    private m f15581m;

    /* renamed from: n  reason: collision with root package name */
    private final Paint f15582n;

    /* renamed from: o  reason: collision with root package name */
    private final Paint f15583o;

    /* renamed from: p  reason: collision with root package name */
    private final com.google.android.material.shadow.b f15584p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private final n.b f15585q;

    /* renamed from: r  reason: collision with root package name */
    private final n f15586r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private PorterDuffColorFilter f15587s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private PorterDuffColorFilter f15588t;

    /* renamed from: u  reason: collision with root package name */
    private int f15589u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    private final RectF f15590v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f15591w;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface CompatibilityShadowMode {
    }

    /* loaded from: classes2.dex */
    class a implements n.b {
        a() {
        }

        @Override // com.google.android.material.shape.n.b
        public void a(@NonNull o oVar, Matrix matrix, int i2) {
            MaterialShapeDrawable.this.f15572d.set(i2, oVar.e());
            MaterialShapeDrawable.this.f15570b[i2] = oVar.f(matrix);
        }

        @Override // com.google.android.material.shape.n.b
        public void b(@NonNull o oVar, Matrix matrix, int i2) {
            MaterialShapeDrawable.this.f15572d.set(i2 + 4, oVar.e());
            MaterialShapeDrawable.this.f15571c[i2] = oVar.f(matrix);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements m.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f15593a;

        b(float f4) {
            this.f15593a = f4;
        }

        @Override // com.google.android.material.shape.m.c
        @NonNull
        public com.google.android.material.shape.c a(@NonNull com.google.android.material.shape.c cVar) {
            return cVar instanceof k ? cVar : new com.google.android.material.shape.b(this.f15593a, cVar);
        }
    }

    static {
        Paint paint = new Paint(1);
        D = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* synthetic */ MaterialShapeDrawable(c cVar, a aVar) {
        this(cVar);
    }

    private boolean M0(int[] iArr) {
        boolean z3;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f15569a.f15598d == null || color2 == (colorForState2 = this.f15569a.f15598d.getColorForState(iArr, (color2 = this.f15582n.getColor())))) {
            z3 = false;
        } else {
            this.f15582n.setColor(colorForState2);
            z3 = true;
        }
        if (this.f15569a.f15599e == null || color == (colorForState = this.f15569a.f15599e.getColorForState(iArr, (color = this.f15583o.getColor())))) {
            return z3;
        }
        this.f15583o.setColor(colorForState);
        return true;
    }

    private boolean N0() {
        PorterDuffColorFilter porterDuffColorFilter = this.f15587s;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f15588t;
        c cVar = this.f15569a;
        this.f15587s = k(cVar.f15601g, cVar.f15602h, this.f15582n, true);
        c cVar2 = this.f15569a;
        this.f15588t = k(cVar2.f15600f, cVar2.f15602h, this.f15583o, false);
        c cVar3 = this.f15569a;
        if (cVar3.f15615u) {
            this.f15584p.d(cVar3.f15601g.getColorForState(getState(), 0));
        }
        return (ObjectsCompat.equals(porterDuffColorFilter, this.f15587s) && ObjectsCompat.equals(porterDuffColorFilter2, this.f15588t)) ? false : true;
    }

    private float O() {
        if (Y()) {
            return this.f15583o.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private void O0() {
        float V = V();
        this.f15569a.f15612r = (int) Math.ceil(0.75f * V);
        this.f15569a.f15613s = (int) Math.ceil(V * f15568z);
        N0();
        a0();
    }

    private boolean W() {
        c cVar = this.f15569a;
        int i2 = cVar.f15611q;
        return i2 != 1 && cVar.f15612r > 0 && (i2 == 2 || j0());
    }

    private boolean X() {
        Paint.Style style = this.f15569a.f15616v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean Y() {
        Paint.Style style = this.f15569a.f15616v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f15583o.getStrokeWidth() > 0.0f;
    }

    private void a0() {
        super.invalidateSelf();
    }

    @Nullable
    private PorterDuffColorFilter f(@NonNull Paint paint, boolean z3) {
        if (z3) {
            int color = paint.getColor();
            int l4 = l(color);
            this.f15589u = l4;
            if (l4 != color) {
                return new PorterDuffColorFilter(l4, PorterDuff.Mode.SRC_IN);
            }
            return null;
        }
        return null;
    }

    private void g(@NonNull RectF rectF, @NonNull Path path) {
        h(rectF, path);
        if (this.f15569a.f15604j != 1.0f) {
            this.f15574f.reset();
            Matrix matrix = this.f15574f;
            float f4 = this.f15569a.f15604j;
            matrix.setScale(f4, f4, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f15574f);
        }
        path.computeBounds(this.f15590v, true);
    }

    private void g0(@NonNull Canvas canvas) {
        if (W()) {
            canvas.save();
            i0(canvas);
            if (!this.f15591w) {
                o(canvas);
                canvas.restore();
                return;
            }
            int width = (int) (this.f15590v.width() - getBounds().width());
            int height = (int) (this.f15590v.height() - getBounds().height());
            if (width >= 0 && height >= 0) {
                Bitmap createBitmap = Bitmap.createBitmap(((int) this.f15590v.width()) + (this.f15569a.f15612r * 2) + width, ((int) this.f15590v.height()) + (this.f15569a.f15612r * 2) + height, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap);
                float f4 = (getBounds().left - this.f15569a.f15612r) - width;
                float f5 = (getBounds().top - this.f15569a.f15612r) - height;
                canvas2.translate(-f4, -f5);
                o(canvas2);
                canvas.drawBitmap(createBitmap, f4, f5, (Paint) null);
                createBitmap.recycle();
                canvas.restore();
                return;
            }
            throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
        }
    }

    private static int h0(int i2, int i4) {
        return (i2 * (i4 + (i4 >>> 7))) >>> 8;
    }

    private void i() {
        m y3 = getShapeAppearanceModel().y(new b(-O()));
        this.f15581m = y3;
        this.f15586r.d(y3, this.f15569a.f15605k, w(), this.f15576h);
    }

    private void i0(@NonNull Canvas canvas) {
        int I = I();
        int J = J();
        if (Build.VERSION.SDK_INT < 21 && this.f15591w) {
            Rect clipBounds = canvas.getClipBounds();
            int i2 = this.f15569a.f15612r;
            clipBounds.inset(-i2, -i2);
            clipBounds.offset(I, J);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(I, J);
    }

    @NonNull
    private PorterDuffColorFilter j(@NonNull ColorStateList colorStateList, @NonNull PorterDuff.Mode mode, boolean z3) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z3) {
            colorForState = l(colorForState);
        }
        this.f15589u = colorForState;
        return new PorterDuffColorFilter(colorForState, mode);
    }

    @NonNull
    private PorterDuffColorFilter k(@Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, @NonNull Paint paint, boolean z3) {
        if (colorStateList != null && mode != null) {
            return j(colorStateList, mode, z3);
        }
        return f(paint, z3);
    }

    @NonNull
    public static MaterialShapeDrawable m(Context context) {
        return n(context, 0.0f);
    }

    @NonNull
    public static MaterialShapeDrawable n(Context context, float f4) {
        int c4 = com.google.android.material.color.m.c(context, R.attr.colorSurface, MaterialShapeDrawable.class.getSimpleName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.Z(context);
        materialShapeDrawable.o0(ColorStateList.valueOf(c4));
        materialShapeDrawable.n0(f4);
        return materialShapeDrawable;
    }

    private void o(@NonNull Canvas canvas) {
        this.f15572d.cardinality();
        if (this.f15569a.f15613s != 0) {
            canvas.drawPath(this.f15575g, this.f15584p.c());
        }
        for (int i2 = 0; i2 < 4; i2++) {
            this.f15570b[i2].b(this.f15584p, this.f15569a.f15612r, canvas);
            this.f15571c[i2].b(this.f15584p, this.f15569a.f15612r, canvas);
        }
        if (this.f15591w) {
            int I = I();
            int J = J();
            canvas.translate(-I, -J);
            canvas.drawPath(this.f15575g, D);
            canvas.translate(I, J);
        }
    }

    private void p(@NonNull Canvas canvas) {
        r(canvas, this.f15582n, this.f15575g, this.f15569a.f15595a, v());
    }

    private void r(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull m mVar, @NonNull RectF rectF) {
        if (mVar.u(rectF)) {
            float a4 = mVar.t().a(rectF) * this.f15569a.f15605k;
            canvas.drawRoundRect(rectF, a4, a4, paint);
            return;
        }
        canvas.drawPath(path, paint);
    }

    @NonNull
    private RectF w() {
        this.f15578j.set(v());
        float O = O();
        this.f15578j.inset(O, O);
        return this.f15578j;
    }

    public Paint.Style A() {
        return this.f15569a.f15616v;
    }

    @Deprecated
    public void A0(int i2) {
        this.f15569a.f15612r = i2;
    }

    public float B() {
        return this.f15569a.f15608n;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void B0(int i2) {
        c cVar = this.f15569a;
        if (cVar.f15613s != i2) {
            cVar.f15613s = i2;
            a0();
        }
    }

    @Deprecated
    public void C(int i2, int i4, @NonNull Path path) {
        h(new RectF(0.0f, 0.0f, i2, i4), path);
    }

    @Deprecated
    public void C0(@NonNull p pVar) {
        setShapeAppearanceModel(pVar);
    }

    @ColorInt
    public int D() {
        return this.f15589u;
    }

    public void D0(float f4, @ColorInt int i2) {
        I0(f4);
        F0(ColorStateList.valueOf(i2));
    }

    public float E() {
        return this.f15569a.f15604j;
    }

    public void E0(float f4, @Nullable ColorStateList colorStateList) {
        I0(f4);
        F0(colorStateList);
    }

    public int F() {
        return this.f15569a.f15614t;
    }

    public void F0(@Nullable ColorStateList colorStateList) {
        c cVar = this.f15569a;
        if (cVar.f15599e != colorStateList) {
            cVar.f15599e = colorStateList;
            onStateChange(getState());
        }
    }

    public int G() {
        return this.f15569a.f15611q;
    }

    public void G0(@ColorInt int i2) {
        H0(ColorStateList.valueOf(i2));
    }

    @Deprecated
    public int H() {
        return (int) x();
    }

    public void H0(ColorStateList colorStateList) {
        this.f15569a.f15600f = colorStateList;
        N0();
        a0();
    }

    public int I() {
        c cVar;
        double d4 = this.f15569a.f15613s;
        double sin = Math.sin(Math.toRadians(cVar.f15614t));
        Double.isNaN(d4);
        return (int) (d4 * sin);
    }

    public void I0(float f4) {
        this.f15569a.f15606l = f4;
        invalidateSelf();
    }

    public int J() {
        c cVar;
        double d4 = this.f15569a.f15613s;
        double cos = Math.cos(Math.toRadians(cVar.f15614t));
        Double.isNaN(d4);
        return (int) (d4 * cos);
    }

    public void J0(float f4) {
        c cVar = this.f15569a;
        if (cVar.f15610p != f4) {
            cVar.f15610p = f4;
            O0();
        }
    }

    public int K() {
        return this.f15569a.f15612r;
    }

    public void K0(boolean z3) {
        c cVar = this.f15569a;
        if (cVar.f15615u != z3) {
            cVar.f15615u = z3;
            invalidateSelf();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int L() {
        return this.f15569a.f15613s;
    }

    public void L0(float f4) {
        J0(f4 - x());
    }

    @Nullable
    @Deprecated
    public p M() {
        m shapeAppearanceModel = getShapeAppearanceModel();
        if (shapeAppearanceModel instanceof p) {
            return (p) shapeAppearanceModel;
        }
        return null;
    }

    @Nullable
    public ColorStateList N() {
        return this.f15569a.f15599e;
    }

    @Nullable
    public ColorStateList P() {
        return this.f15569a.f15600f;
    }

    public float Q() {
        return this.f15569a.f15606l;
    }

    @Nullable
    public ColorStateList R() {
        return this.f15569a.f15601g;
    }

    public float S() {
        return this.f15569a.f15595a.r().a(v());
    }

    public float T() {
        return this.f15569a.f15595a.t().a(v());
    }

    public float U() {
        return this.f15569a.f15610p;
    }

    public float V() {
        return x() + U();
    }

    public void Z(Context context) {
        this.f15569a.f15596b = new com.google.android.material.elevation.a(context);
        O0();
    }

    public boolean b0() {
        com.google.android.material.elevation.a aVar = this.f15569a.f15596b;
        return aVar != null && aVar.l();
    }

    public boolean c0() {
        return this.f15569a.f15596b != null;
    }

    public boolean d0(int i2, int i4) {
        return getTransparentRegion().contains(i2, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f15582n.setColorFilter(this.f15587s);
        int alpha = this.f15582n.getAlpha();
        this.f15582n.setAlpha(h0(alpha, this.f15569a.f15607m));
        this.f15583o.setColorFilter(this.f15588t);
        this.f15583o.setStrokeWidth(this.f15569a.f15606l);
        int alpha2 = this.f15583o.getAlpha();
        this.f15583o.setAlpha(h0(alpha2, this.f15569a.f15607m));
        if (this.f15573e) {
            i();
            g(v(), this.f15575g);
            this.f15573e = false;
        }
        g0(canvas);
        if (X()) {
            p(canvas);
        }
        if (Y()) {
            s(canvas);
        }
        this.f15582n.setAlpha(alpha);
        this.f15583o.setAlpha(alpha2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean e0() {
        return this.f15569a.f15595a.u(v());
    }

    @Deprecated
    public boolean f0() {
        int i2 = this.f15569a.f15611q;
        return i2 == 0 || i2 == 2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f15569a.f15607m;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f15569a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f15569a.f15611q == 2) {
            return;
        }
        if (e0()) {
            outline.setRoundRect(getBounds(), S() * this.f15569a.f15605k);
            return;
        }
        g(v(), this.f15575g);
        if (this.f15575g.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.f15575g);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        Rect rect2 = this.f15569a.f15603i;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    @Override // com.google.android.material.shape.q
    @NonNull
    public m getShapeAppearanceModel() {
        return this.f15569a.f15595a;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f15579k.set(getBounds());
        g(v(), this.f15575g);
        this.f15580l.setPath(this.f15575g, this.f15579k);
        this.f15579k.op(this.f15580l, Region.Op.DIFFERENCE);
        return this.f15579k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void h(@NonNull RectF rectF, @NonNull Path path) {
        n nVar = this.f15586r;
        c cVar = this.f15569a;
        nVar.e(cVar.f15595a, cVar.f15605k, rectF, this.f15585q, path);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f15573e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f15569a.f15601g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f15569a.f15600f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f15569a.f15599e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f15569a.f15598d) != null && colorStateList4.isStateful())));
    }

    public boolean j0() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 < 21 || !(e0() || this.f15575g.isConvex() || i2 >= 29);
    }

    public void k0(float f4) {
        setShapeAppearanceModel(this.f15569a.f15595a.w(f4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int l(@ColorInt int i2) {
        float V = V() + B();
        com.google.android.material.elevation.a aVar = this.f15569a.f15596b;
        return aVar != null ? aVar.e(i2, V) : i2;
    }

    public void l0(@NonNull com.google.android.material.shape.c cVar) {
        setShapeAppearanceModel(this.f15569a.f15595a.x(cVar));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void m0(boolean z3) {
        this.f15586r.n(z3);
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.f15569a = new c(this.f15569a);
        return this;
    }

    public void n0(float f4) {
        c cVar = this.f15569a;
        if (cVar.f15609o != f4) {
            cVar.f15609o = f4;
            O0();
        }
    }

    public void o0(@Nullable ColorStateList colorStateList) {
        c cVar = this.f15569a;
        if (cVar.f15598d != colorStateList) {
            cVar.f15598d = colorStateList;
            onStateChange(getState());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f15573e = true;
        super.onBoundsChange(rect);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.l.b
    public boolean onStateChange(int[] iArr) {
        boolean z3 = M0(iArr) || N0();
        if (z3) {
            invalidateSelf();
        }
        return z3;
    }

    public void p0(float f4) {
        c cVar = this.f15569a;
        if (cVar.f15605k != f4) {
            cVar.f15605k = f4;
            this.f15573e = true;
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void q(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull RectF rectF) {
        r(canvas, paint, path, this.f15569a.f15595a, rectF);
    }

    public void q0(int i2, int i4, int i5, int i6) {
        c cVar = this.f15569a;
        if (cVar.f15603i == null) {
            cVar.f15603i = new Rect();
        }
        this.f15569a.f15603i.set(i2, i4, i5, i6);
        invalidateSelf();
    }

    public void r0(Paint.Style style) {
        this.f15569a.f15616v = style;
        a0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void s(@NonNull Canvas canvas) {
        r(canvas, this.f15583o, this.f15576h, this.f15581m, w());
    }

    public void s0(float f4) {
        c cVar = this.f15569a;
        if (cVar.f15608n != f4) {
            cVar.f15608n = f4;
            O0();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i2) {
        c cVar = this.f15569a;
        if (cVar.f15607m != i2) {
            cVar.f15607m = i2;
            a0();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f15569a.f15597c = colorFilter;
        a0();
    }

    @Override // com.google.android.material.shape.q
    public void setShapeAppearanceModel(@NonNull m mVar) {
        this.f15569a.f15595a = mVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f15569a.f15601g = colorStateList;
        N0();
        a0();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.f15569a;
        if (cVar.f15602h != mode) {
            cVar.f15602h = mode;
            N0();
            a0();
        }
    }

    public float t() {
        return this.f15569a.f15595a.j().a(v());
    }

    public void t0(float f4) {
        c cVar = this.f15569a;
        if (cVar.f15604j != f4) {
            cVar.f15604j = f4;
            invalidateSelf();
        }
    }

    public float u() {
        return this.f15569a.f15595a.l().a(v());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void u0(boolean z3) {
        this.f15591w = z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public RectF v() {
        this.f15577i.set(getBounds());
        return this.f15577i;
    }

    public void v0(int i2) {
        this.f15584p.d(i2);
        this.f15569a.f15615u = false;
        a0();
    }

    public void w0(int i2) {
        c cVar = this.f15569a;
        if (cVar.f15614t != i2) {
            cVar.f15614t = i2;
            a0();
        }
    }

    public float x() {
        return this.f15569a.f15609o;
    }

    public void x0(int i2) {
        c cVar = this.f15569a;
        if (cVar.f15611q != i2) {
            cVar.f15611q = i2;
            a0();
        }
    }

    @Nullable
    public ColorStateList y() {
        return this.f15569a.f15598d;
    }

    @Deprecated
    public void y0(int i2) {
        n0(i2);
    }

    public float z() {
        return this.f15569a.f15605k;
    }

    @Deprecated
    public void z0(boolean z3) {
        x0(!z3 ? 1 : 0);
    }

    public MaterialShapeDrawable() {
        this(new m());
    }

    public MaterialShapeDrawable(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        this(m.e(context, attributeSet, i2, i4).m());
    }

    @Deprecated
    public MaterialShapeDrawable(@NonNull p pVar) {
        this((m) pVar);
    }

    public MaterialShapeDrawable(@NonNull m mVar) {
        this(new c(mVar, null));
    }

    private MaterialShapeDrawable(@NonNull c cVar) {
        n nVar;
        this.f15570b = new o.i[4];
        this.f15571c = new o.i[4];
        this.f15572d = new BitSet(8);
        this.f15574f = new Matrix();
        this.f15575g = new Path();
        this.f15576h = new Path();
        this.f15577i = new RectF();
        this.f15578j = new RectF();
        this.f15579k = new Region();
        this.f15580l = new Region();
        Paint paint = new Paint(1);
        this.f15582n = paint;
        Paint paint2 = new Paint(1);
        this.f15583o = paint2;
        this.f15584p = new com.google.android.material.shadow.b();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            nVar = n.k();
        } else {
            nVar = new n();
        }
        this.f15586r = nVar;
        this.f15590v = new RectF();
        this.f15591w = true;
        this.f15569a = cVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        N0();
        M0(getState());
        this.f15585q = new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends Drawable.ConstantState {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        public m f15595a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public com.google.android.material.elevation.a f15596b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public ColorFilter f15597c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public ColorStateList f15598d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public ColorStateList f15599e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public ColorStateList f15600f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public ColorStateList f15601g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public PorterDuff.Mode f15602h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        public Rect f15603i;

        /* renamed from: j  reason: collision with root package name */
        public float f15604j;

        /* renamed from: k  reason: collision with root package name */
        public float f15605k;

        /* renamed from: l  reason: collision with root package name */
        public float f15606l;

        /* renamed from: m  reason: collision with root package name */
        public int f15607m;

        /* renamed from: n  reason: collision with root package name */
        public float f15608n;

        /* renamed from: o  reason: collision with root package name */
        public float f15609o;

        /* renamed from: p  reason: collision with root package name */
        public float f15610p;

        /* renamed from: q  reason: collision with root package name */
        public int f15611q;

        /* renamed from: r  reason: collision with root package name */
        public int f15612r;

        /* renamed from: s  reason: collision with root package name */
        public int f15613s;

        /* renamed from: t  reason: collision with root package name */
        public int f15614t;

        /* renamed from: u  reason: collision with root package name */
        public boolean f15615u;

        /* renamed from: v  reason: collision with root package name */
        public Paint.Style f15616v;

        public c(m mVar, com.google.android.material.elevation.a aVar) {
            this.f15598d = null;
            this.f15599e = null;
            this.f15600f = null;
            this.f15601g = null;
            this.f15602h = PorterDuff.Mode.SRC_IN;
            this.f15603i = null;
            this.f15604j = 1.0f;
            this.f15605k = 1.0f;
            this.f15607m = 255;
            this.f15608n = 0.0f;
            this.f15609o = 0.0f;
            this.f15610p = 0.0f;
            this.f15611q = 0;
            this.f15612r = 0;
            this.f15613s = 0;
            this.f15614t = 0;
            this.f15615u = false;
            this.f15616v = Paint.Style.FILL_AND_STROKE;
            this.f15595a = mVar;
            this.f15596b = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this, null);
            materialShapeDrawable.f15573e = true;
            return materialShapeDrawable;
        }

        public c(@NonNull c cVar) {
            this.f15598d = null;
            this.f15599e = null;
            this.f15600f = null;
            this.f15601g = null;
            this.f15602h = PorterDuff.Mode.SRC_IN;
            this.f15603i = null;
            this.f15604j = 1.0f;
            this.f15605k = 1.0f;
            this.f15607m = 255;
            this.f15608n = 0.0f;
            this.f15609o = 0.0f;
            this.f15610p = 0.0f;
            this.f15611q = 0;
            this.f15612r = 0;
            this.f15613s = 0;
            this.f15614t = 0;
            this.f15615u = false;
            this.f15616v = Paint.Style.FILL_AND_STROKE;
            this.f15595a = cVar.f15595a;
            this.f15596b = cVar.f15596b;
            this.f15606l = cVar.f15606l;
            this.f15597c = cVar.f15597c;
            this.f15598d = cVar.f15598d;
            this.f15599e = cVar.f15599e;
            this.f15602h = cVar.f15602h;
            this.f15601g = cVar.f15601g;
            this.f15607m = cVar.f15607m;
            this.f15604j = cVar.f15604j;
            this.f15613s = cVar.f15613s;
            this.f15611q = cVar.f15611q;
            this.f15615u = cVar.f15615u;
            this.f15605k = cVar.f15605k;
            this.f15608n = cVar.f15608n;
            this.f15609o = cVar.f15609o;
            this.f15610p = cVar.f15610p;
            this.f15612r = cVar.f15612r;
            this.f15614t = cVar.f15614t;
            this.f15600f = cVar.f15600f;
            this.f15616v = cVar.f15616v;
            if (cVar.f15603i != null) {
                this.f15603i = new Rect(cVar.f15603i);
            }
        }
    }
}
