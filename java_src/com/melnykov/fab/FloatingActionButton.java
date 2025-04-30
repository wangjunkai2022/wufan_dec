package com.melnykov.fab;

import android.animation.AnimatorInflater;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ScrollView;
import androidx.annotation.IntDef;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.melnykov.fab.ObservableScrollView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes4.dex */
public class FloatingActionButton extends ImageView {

    /* renamed from: l  reason: collision with root package name */
    private static final int f52622l = 500;

    /* renamed from: m  reason: collision with root package name */
    public static final int f52623m = 0;

    /* renamed from: n  reason: collision with root package name */
    public static final int f52624n = 1;

    /* renamed from: a  reason: collision with root package name */
    private boolean f52625a;

    /* renamed from: b  reason: collision with root package name */
    private int f52626b;

    /* renamed from: c  reason: collision with root package name */
    private int f52627c;

    /* renamed from: d  reason: collision with root package name */
    private int f52628d;

    /* renamed from: e  reason: collision with root package name */
    private int f52629e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f52630f;

    /* renamed from: g  reason: collision with root package name */
    private int f52631g;

    /* renamed from: h  reason: collision with root package name */
    private int f52632h;

    /* renamed from: i  reason: collision with root package name */
    private int f52633i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f52634j;

    /* renamed from: k  reason: collision with root package name */
    private final Interpolator f52635k;

    @IntDef({0, 1})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TYPE {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f52636a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f52637b;

        a(boolean z3, boolean z4) {
            this.f52636a = z3;
            this.f52637b = z4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver = FloatingActionButton.this.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            FloatingActionButton.this.C(this.f52636a, this.f52637b, true);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class b extends com.melnykov.fab.a {

        /* renamed from: e  reason: collision with root package name */
        private com.melnykov.fab.d f52639e;

        /* renamed from: f  reason: collision with root package name */
        private AbsListView.OnScrollListener f52640f;

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(com.melnykov.fab.d dVar) {
            this.f52639e = dVar;
        }

        @Override // com.melnykov.fab.a
        public void d() {
            FloatingActionButton.this.t();
            com.melnykov.fab.d dVar = this.f52639e;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override // com.melnykov.fab.a
        public void e() {
            FloatingActionButton.this.t();
            com.melnykov.fab.d dVar = this.f52639e;
            if (dVar != null) {
                dVar.b();
            }
        }

        public void i(AbsListView.OnScrollListener onScrollListener) {
            this.f52640f = onScrollListener;
        }

        @Override // com.melnykov.fab.a, android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
            AbsListView.OnScrollListener onScrollListener = this.f52640f;
            if (onScrollListener != null) {
                onScrollListener.onScroll(absListView, i2, i4, i5);
            }
            super.onScroll(absListView, i2, i4, i5);
        }

        @Override // com.melnykov.fab.a, android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
            AbsListView.OnScrollListener onScrollListener = this.f52640f;
            if (onScrollListener != null) {
                onScrollListener.onScrollStateChanged(absListView, i2);
            }
            if (i2 == 0) {
                FloatingActionButton.this.A();
            }
            super.onScrollStateChanged(absListView, i2);
        }

        /* synthetic */ b(FloatingActionButton floatingActionButton, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class c extends com.melnykov.fab.c {

        /* renamed from: b  reason: collision with root package name */
        private com.melnykov.fab.d f52642b;

        /* renamed from: c  reason: collision with root package name */
        private RecyclerView.OnScrollListener f52643c;

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(com.melnykov.fab.d dVar) {
            this.f52642b = dVar;
        }

        @Override // com.melnykov.fab.c
        public void b() {
            FloatingActionButton.this.A();
            com.melnykov.fab.d dVar = this.f52642b;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override // com.melnykov.fab.c
        public void c() {
            FloatingActionButton.this.t();
            com.melnykov.fab.d dVar = this.f52642b;
            if (dVar != null) {
                dVar.b();
            }
        }

        public void f(RecyclerView.OnScrollListener onScrollListener) {
            this.f52643c = onScrollListener;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
            RecyclerView.OnScrollListener onScrollListener = this.f52643c;
            if (onScrollListener != null) {
                onScrollListener.onScrollStateChanged(recyclerView, i2);
            }
            super.onScrollStateChanged(recyclerView, i2);
        }

        @Override // com.melnykov.fab.c, androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i2, int i4) {
            RecyclerView.OnScrollListener onScrollListener = this.f52643c;
            if (onScrollListener != null) {
                onScrollListener.onScrolled(recyclerView, i2, i4);
            }
            super.onScrolled(recyclerView, i2, i4);
        }

        /* synthetic */ c(FloatingActionButton floatingActionButton, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class d extends e {

        /* renamed from: c  reason: collision with root package name */
        private com.melnykov.fab.d f52645c;

        /* renamed from: d  reason: collision with root package name */
        private ObservableScrollView.a f52646d;

        private d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(com.melnykov.fab.d dVar) {
            this.f52645c = dVar;
        }

        @Override // com.melnykov.fab.e, com.melnykov.fab.ObservableScrollView.a
        public void a(ScrollView scrollView, int i2, int i4, int i5, int i6) {
            ObservableScrollView.a aVar = this.f52646d;
            if (aVar != null) {
                aVar.a(scrollView, i2, i4, i5, i6);
            }
            super.a(scrollView, i2, i4, i5, i6);
        }

        @Override // com.melnykov.fab.e
        public void b() {
            FloatingActionButton.this.A();
            com.melnykov.fab.d dVar = this.f52645c;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override // com.melnykov.fab.e
        public void c() {
            FloatingActionButton.this.t();
            com.melnykov.fab.d dVar = this.f52645c;
            if (dVar != null) {
                dVar.b();
            }
        }

        public void f(ObservableScrollView.a aVar) {
            this.f52646d = aVar;
        }

        /* synthetic */ d(FloatingActionButton floatingActionButton, a aVar) {
            this();
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(boolean z3, boolean z4, boolean z5) {
        if (this.f52625a != z3 || z5) {
            this.f52625a = z3;
            if (getHeight() == 0 && !z5) {
                ViewTreeObserver viewTreeObserver = getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnPreDrawListener(new a(z3, z4));
                    return;
                }
            }
            int width = z3 ? 0 : (getWidth() / 2) + getMarginRight();
            if (z4) {
                com.nineoldandroids.view.b.c(this).r(this.f52635k).q(500L).v(width);
            } else {
                com.nineoldandroids.view.a.y(this, width);
            }
            if (p()) {
                return;
            }
            setClickable(z3);
        }
    }

    private void D() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, k(this.f52627c));
        stateListDrawable.addState(new int[]{-16842910}, k(this.f52629e));
        stateListDrawable.addState(new int[0], k(this.f52626b));
        setBackgroundCompat(stateListDrawable);
    }

    private int getMarginBottom() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return 0;
    }

    private int getMarginRight() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }
        return 0;
    }

    private Drawable k(int i2) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(i2);
        if (!this.f52630f || r()) {
            return shapeDrawable;
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{getResources().getDrawable(this.f52631g == 0 ? R.drawable.fab_shadow : R.drawable.fab_shadow_mini), shapeDrawable});
        int i4 = this.f52632h;
        layerDrawable.setLayerInset(1, i4, i4, i4, i4);
        return layerDrawable;
    }

    private static int l(int i2) {
        Color.colorToHSV(i2, r0);
        float[] fArr = {0.0f, 0.0f, fArr[2] * 0.9f};
        return Color.HSVToColor(fArr);
    }

    private int m(int i2) {
        return getResources().getColor(i2);
    }

    private int n(int i2) {
        return getResources().getDimensionPixelSize(i2);
    }

    private TypedArray o(Context context, AttributeSet attributeSet, int[] iArr) {
        return context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    private boolean p() {
        return Build.VERSION.SDK_INT >= 11;
    }

    private boolean q() {
        return Build.VERSION.SDK_INT >= 16;
    }

    private boolean r() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @SuppressLint({"NewApi"})
    private void setBackgroundCompat(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @SuppressLint({"NewApi"})
    private void v(Context context, AttributeSet attributeSet) {
        this.f52625a = true;
        int m4 = m(R.color.material_blue_500);
        this.f52626b = m4;
        this.f52627c = l(m4);
        this.f52628d = y(this.f52626b);
        this.f52629e = m(17170432);
        this.f52631g = 0;
        this.f52630f = true;
        this.f52633i = getResources().getDimensionPixelOffset(R.dimen.fab_scroll_threshold);
        this.f52632h = n(R.dimen.fab_shadow_size);
        if (r()) {
            setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, R.anim.fab_press_elevation));
        }
        if (attributeSet != null) {
            w(context, attributeSet);
        }
        D();
    }

    private void w(Context context, AttributeSet attributeSet) {
        TypedArray o3 = o(context, attributeSet, R.styleable.FloatingActionButton);
        if (o3 != null) {
            try {
                int color = o3.getColor(R.styleable.FloatingActionButton_fab_colorNormal, m(R.color.material_blue_500));
                this.f52626b = color;
                this.f52627c = o3.getColor(R.styleable.FloatingActionButton_fab_colorPressed, l(color));
                this.f52628d = o3.getColor(R.styleable.FloatingActionButton_fab_colorRipple, y(this.f52626b));
                this.f52629e = o3.getColor(R.styleable.FloatingActionButton_fab_colorDisabled, this.f52629e);
                this.f52630f = o3.getBoolean(R.styleable.FloatingActionButton_fab_shadow, true);
                this.f52631g = o3.getInt(R.styleable.FloatingActionButton_fab_type, 0);
            } finally {
                o3.recycle();
            }
        }
    }

    private static int y(int i2) {
        Color.colorToHSV(i2, r0);
        float[] fArr = {0.0f, 0.0f, fArr[2] * 1.1f};
        return Color.HSVToColor(fArr);
    }

    private void z() {
        if (this.f52634j || !(getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        int i2 = marginLayoutParams.leftMargin;
        int i4 = this.f52632h;
        marginLayoutParams.setMargins(i2 - i4, marginLayoutParams.topMargin - i4, marginLayoutParams.rightMargin - i4, marginLayoutParams.bottomMargin - i4);
        requestLayout();
        this.f52634j = true;
    }

    public void A() {
        B(true);
    }

    public void B(boolean z3) {
        C(true, z3, false);
    }

    public void b(@NonNull AbsListView absListView) {
        d(absListView, null, null);
    }

    public void c(@NonNull AbsListView absListView, com.melnykov.fab.d dVar) {
        d(absListView, dVar, null);
    }

    public void d(@NonNull AbsListView absListView, com.melnykov.fab.d dVar, AbsListView.OnScrollListener onScrollListener) {
        b bVar = new b(this, null);
        bVar.j(dVar);
        bVar.i(onScrollListener);
        bVar.f(absListView);
        bVar.g(this.f52633i);
        absListView.setOnScrollListener(bVar);
    }

    public void e(@NonNull RecyclerView recyclerView) {
        g(recyclerView, null, null);
    }

    public void f(@NonNull RecyclerView recyclerView, com.melnykov.fab.d dVar) {
        g(recyclerView, dVar, null);
    }

    public void g(@NonNull RecyclerView recyclerView, com.melnykov.fab.d dVar, RecyclerView.OnScrollListener onScrollListener) {
        c cVar = new c(this, null);
        cVar.g(dVar);
        cVar.f(onScrollListener);
        cVar.d(this.f52633i);
        recyclerView.addOnScrollListener(cVar);
    }

    public int getColorNormal() {
        return this.f52626b;
    }

    public int getColorPressed() {
        return this.f52627c;
    }

    public int getColorRipple() {
        return this.f52628d;
    }

    public int getType() {
        return this.f52631g;
    }

    public void h(@NonNull ObservableScrollView observableScrollView) {
        j(observableScrollView, null, null);
    }

    public void i(@NonNull ObservableScrollView observableScrollView, com.melnykov.fab.d dVar) {
        j(observableScrollView, dVar, null);
    }

    public void j(@NonNull ObservableScrollView observableScrollView, com.melnykov.fab.d dVar, ObservableScrollView.a aVar) {
        d dVar2 = new d(this, null);
        dVar2.g(dVar);
        dVar2.f(aVar);
        dVar2.d(this.f52633i);
        observableScrollView.setOnScrollChangedListener(dVar2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        n(this.f52631g == 0 ? R.dimen.fab_size_normal : R.dimen.fab_size_mini);
        setMeasuredDimension(i2, i2);
    }

    public boolean s() {
        return this.f52630f;
    }

    public void setColorNormal(int i2) {
        if (i2 != this.f52626b) {
            this.f52626b = i2;
            D();
        }
    }

    public void setColorNormalResId(int i2) {
        setColorNormal(m(i2));
    }

    public void setColorPressed(int i2) {
        if (i2 != this.f52627c) {
            this.f52627c = i2;
            D();
        }
    }

    public void setColorPressedResId(int i2) {
        setColorPressed(m(i2));
    }

    public void setColorRipple(int i2) {
        if (i2 != this.f52628d) {
            this.f52628d = i2;
            D();
        }
    }

    public void setColorRippleResId(int i2) {
        setColorRipple(m(i2));
    }

    public void setShadow(boolean z3) {
        if (z3 != this.f52630f) {
            this.f52630f = z3;
            D();
        }
    }

    public void setType(int i2) {
        if (i2 != this.f52631g) {
            this.f52631g = i2;
            D();
        }
    }

    public void t() {
        u(true);
    }

    public void u(boolean z3) {
        C(false, z3, false);
    }

    public boolean x() {
        return this.f52625a;
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f52635k = new AccelerateDecelerateInterpolator();
        v(context, attributeSet);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f52635k = new AccelerateDecelerateInterpolator();
        v(context, attributeSet);
    }
}
