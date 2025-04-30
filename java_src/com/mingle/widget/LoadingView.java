package com.mingle.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.Key;
import com.mingle.shapeloading.R;
import com.mingle.widget.ShapeLoadingView;
import com.nineoldandroids.animation.a;
import com.nineoldandroids.animation.l;
/* loaded from: classes4.dex */
public class LoadingView extends FrameLayout {

    /* renamed from: i  reason: collision with root package name */
    private static final int f52663i = 500;

    /* renamed from: j  reason: collision with root package name */
    private static float f52664j = 200.0f;

    /* renamed from: a  reason: collision with root package name */
    private ShapeLoadingView f52665a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f52666b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f52667c;

    /* renamed from: d  reason: collision with root package name */
    private int f52668d;

    /* renamed from: e  reason: collision with root package name */
    private String f52669e;

    /* renamed from: f  reason: collision with root package name */
    private com.nineoldandroids.animation.d f52670f;

    /* renamed from: g  reason: collision with root package name */
    private Runnable f52671g;

    /* renamed from: h  reason: collision with root package name */
    public float f52672h;

    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingView.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements a.InterfaceC0259a {
        b() {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void a(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void b(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void c(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void d(com.nineoldandroids.animation.a aVar) {
            LoadingView.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements a.InterfaceC0259a {
        c() {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void a(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void b(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void c(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void d(com.nineoldandroids.animation.a aVar) {
            LoadingView.this.f52665a.a();
            LoadingView.this.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f52676a;

        static {
            int[] iArr = new int[ShapeLoadingView.Shape.values().length];
            f52676a = iArr;
            try {
                iArr[ShapeLoadingView.Shape.SHAPE_RECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f52676a[ShapeLoadingView.Shape.SHAPE_CIRCLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f52676a[ShapeLoadingView.Shape.SHAPE_TRIANGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public LoadingView(Context context) {
        super(context);
        this.f52670f = null;
        this.f52671g = new a();
        this.f52672h = 1.2f;
    }

    private void d(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LoadingView);
        this.f52669e = obtainStyledAttributes.getString(R.styleable.LoadingView_loadingText);
        this.f52668d = obtainStyledAttributes.getResourceId(R.styleable.LoadingView_loadingTextAppearance, -1);
        obtainStyledAttributes.recycle();
    }

    private void e(long j4) {
        com.nineoldandroids.animation.d dVar = this.f52670f;
        if (dVar == null || !dVar.g()) {
            removeCallbacks(this.f52671g);
            if (j4 > 0) {
                postDelayed(this.f52671g, j4);
            } else {
                post(this.f52671g);
            }
        }
    }

    private void f() {
        com.nineoldandroids.animation.d dVar = this.f52670f;
        if (dVar != null) {
            if (dVar.g()) {
                this.f52670f.cancel();
            }
            this.f52670f = null;
        }
        removeCallbacks(this.f52671g);
    }

    public int b(float f4) {
        return (int) ((f4 * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void c() {
        l r02 = l.r0(this.f52665a, "translationY", 0.0f, f52664j);
        l r03 = l.r0(this.f52666b, "scaleX", 1.0f, 0.2f);
        r02.k(500L);
        r02.l(new AccelerateInterpolator(this.f52672h));
        com.nineoldandroids.animation.d dVar = new com.nineoldandroids.animation.d();
        dVar.k(500L);
        dVar.C(r02, r03);
        dVar.a(new c());
        dVar.q();
    }

    public void g() {
        l r02;
        l r03 = l.r0(this.f52665a, "translationY", f52664j, 0.0f);
        l r04 = l.r0(this.f52666b, "scaleX", 0.2f, 1.0f);
        int i2 = d.f52676a[this.f52665a.getShape().ordinal()];
        if (i2 == 1) {
            r02 = l.r0(this.f52665a, Key.ROTATION, 0.0f, -120.0f);
        } else if (i2 != 2) {
            r02 = i2 != 3 ? null : l.r0(this.f52665a, Key.ROTATION, 0.0f, 180.0f);
        } else {
            r02 = l.r0(this.f52665a, Key.ROTATION, 0.0f, 180.0f);
        }
        r03.k(500L);
        r02.k(500L);
        r03.l(new DecelerateInterpolator(this.f52672h));
        r02.l(new DecelerateInterpolator(this.f52672h));
        com.nineoldandroids.animation.d dVar = new com.nineoldandroids.animation.d();
        dVar.k(500L);
        dVar.C(r03, r02, r04);
        dVar.a(new b());
        dVar.q();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.load_view, (ViewGroup) null);
        f52664j = b(54.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f52665a = (ShapeLoadingView) inflate.findViewById(R.id.shapeLoadingView);
        this.f52666b = (ImageView) inflate.findViewById(R.id.indication);
        TextView textView = (TextView) inflate.findViewById(R.id.promptTV);
        this.f52667c = textView;
        if (this.f52668d != -1) {
            textView.setTextAppearance(getContext(), this.f52668d);
        }
        setLoadingText(this.f52669e);
        addView(inflate, layoutParams);
        e(900L);
    }

    public void setLoadingText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.f52667c.setVisibility(8);
        } else {
            this.f52667c.setVisibility(0);
        }
        this.f52667c.setText(charSequence);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        if (i2 == 0) {
            e(200L);
        } else {
            f();
        }
    }

    public LoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f52670f = null;
        this.f52671g = new a();
        this.f52672h = 1.2f;
        d(context, attributeSet);
    }

    public LoadingView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f52670f = null;
        this.f52671g = new a();
        this.f52672h = 1.2f;
        d(context, attributeSet);
    }

    @TargetApi(21)
    public LoadingView(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f52670f = null;
        this.f52671g = new a();
        this.f52672h = 1.2f;
        d(context, attributeSet);
    }
}
