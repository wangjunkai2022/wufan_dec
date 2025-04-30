package com.join.mgps.customview.smartpopupwindow;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.core.widget.PopupWindowCompat;
/* loaded from: classes3.dex */
public class SmartPopupWindow extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    private int f47113a;

    /* renamed from: b  reason: collision with root package name */
    private int f47114b;

    /* renamed from: c  reason: collision with root package name */
    private float f47115c;

    /* renamed from: d  reason: collision with root package name */
    private Context f47116d;

    /* renamed from: e  reason: collision with root package name */
    private View f47117e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f47118f;

    /* renamed from: g  reason: collision with root package name */
    private int f47119g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f47120h;

    /* renamed from: i  reason: collision with root package name */
    private View f47121i;

    /* renamed from: j  reason: collision with root package name */
    private int f47122j;

    /* renamed from: k  reason: collision with root package name */
    private int f47123k;

    /* renamed from: l  reason: collision with root package name */
    private int f47124l;

    /* renamed from: m  reason: collision with root package name */
    private int f47125m;

    /* renamed from: n  reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f47126n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnKeyListener {
        a() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                SmartPopupWindow.this.dismiss();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int x3 = (int) motionEvent.getX();
            int y3 = (int) motionEvent.getY();
            return (motionEvent.getAction() == 0 && (x3 < 0 || x3 >= SmartPopupWindow.this.f47113a || y3 < 0 || y3 >= SmartPopupWindow.this.f47114b)) || motionEvent.getAction() == 4;
        }
    }

    /* loaded from: classes3.dex */
    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            SmartPopupWindow smartPopupWindow = SmartPopupWindow.this;
            smartPopupWindow.f47113a = smartPopupWindow.getContentView().getWidth();
            SmartPopupWindow smartPopupWindow2 = SmartPopupWindow.this;
            smartPopupWindow2.f47114b = smartPopupWindow2.getContentView().getHeight();
            if (SmartPopupWindow.this.f47120h) {
                SmartPopupWindow.this.z();
                return;
            }
            SmartPopupWindow smartPopupWindow3 = SmartPopupWindow.this;
            smartPopupWindow3.H(smartPopupWindow3.f47113a, SmartPopupWindow.this.f47114b, SmartPopupWindow.this.f47121i, SmartPopupWindow.this.f47122j, SmartPopupWindow.this.f47123k, SmartPopupWindow.this.f47124l, SmartPopupWindow.this.f47125m);
            SmartPopupWindow.this.z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SmartPopupWindow.this.A(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements ValueAnimator.AnimatorUpdateListener {
        e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SmartPopupWindow.this.A(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* loaded from: classes3.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private SmartPopupWindow f47132a;

        private f(Activity activity, View view) {
            SmartPopupWindow smartPopupWindow = new SmartPopupWindow(activity);
            this.f47132a = smartPopupWindow;
            smartPopupWindow.f47116d = activity;
            this.f47132a.f47117e = view;
        }

        public static f a(Activity activity, View view) {
            return new f(activity, view);
        }

        public SmartPopupWindow b() {
            this.f47132a.x();
            return this.f47132a;
        }

        public f c(float f4) {
            this.f47132a.f47115c = f4;
            return this;
        }

        public f d(int i2) {
            this.f47132a.f47119g = i2;
            return this;
        }

        public f e(boolean z3) {
            this.f47132a.f47118f = z3;
            return this;
        }

        public f f(int i2, int i4) {
            this.f47132a.f47113a = i2;
            this.f47132a.f47114b = i4;
            return this;
        }
    }

    public SmartPopupWindow(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(float f4) {
        Context context = this.f47116d;
        if (context != null && (context instanceof Activity)) {
            Window window = ((Activity) context).getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.alpha = f4;
            window.setAttributes(attributes);
        }
    }

    private void F() {
        float f4 = this.f47115c;
        if (f4 >= 1.0f) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, f4);
        ofFloat.addUpdateListener(new d());
        ofFloat.setDuration(360L);
        ofFloat.start();
    }

    private void G(boolean z3) {
        if (!z3) {
            setFocusable(true);
            setOutsideTouchable(false);
            setBackgroundDrawable(null);
            getContentView().setFocusable(true);
            getContentView().setFocusableInTouchMode(true);
            getContentView().setOnKeyListener(new a());
            setTouchInterceptor(new b());
            return;
        }
        setFocusable(true);
        setOutsideTouchable(true);
        setBackgroundDrawable(new ColorDrawable(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(int i2, int i4, @NonNull View view, int i5, int i6, int i7, int i8) {
        update(view, t(view, i6, i2, i7), u(view, i5, i4, i8), i2, i4);
    }

    private void s(View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(this.f47126n);
    }

    private int t(View view, int i2, int i4, int i5) {
        int width;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    width = view.getWidth();
                } else if (i2 != 4) {
                    return i5;
                } else {
                    i4 -= view.getWidth();
                }
            }
            return i5 - i4;
        }
        width = (view.getWidth() / 2) - (i4 / 2);
        return i5 + width;
    }

    private int u(View view, int i2, int i4, int i5) {
        int height;
        if (i2 != 0) {
            if (i2 == 1) {
                i4 += view.getHeight();
            } else if (i2 == 3) {
                height = view.getHeight();
            } else if (i2 != 4) {
                return i5;
            }
            return i5 - i4;
        }
        height = (view.getHeight() / 2) + (i4 / 2);
        return i5 - height;
    }

    private void v() {
        float f4 = this.f47115c;
        if (f4 >= 1.0f) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f4, 1.0f);
        ofFloat.addUpdateListener(new e());
        ofFloat.setDuration(360L);
        ofFloat.start();
    }

    private static int w(int i2) {
        return i2 != -2 ? 1073741824 : 0;
    }

    private static int y(int i2) {
        return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), w(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (getContentView() != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                getContentView().getViewTreeObserver().removeOnGlobalLayoutListener(this.f47126n);
            } else {
                getContentView().getViewTreeObserver().removeGlobalOnLayoutListener(this.f47126n);
            }
        }
    }

    public void B(@NonNull View view, int i2, int i4) {
        E(view, i2, i4, true);
    }

    public void C(@NonNull View view, int i2, int i4, int i5, int i6) {
        D(view, i2, i4, i5, i6, true);
    }

    public void D(@NonNull View view, int i2, int i4, int i5, int i6, boolean z3) {
        this.f47120h = false;
        this.f47121i = view;
        this.f47124l = i5;
        this.f47125m = i6;
        this.f47122j = i2;
        this.f47123k = i4;
        F();
        View contentView = getContentView();
        s(contentView);
        setClippingEnabled(z3);
        contentView.measure(y(getWidth()), y(getHeight()));
        int measuredWidth = contentView.getMeasuredWidth();
        int measuredHeight = contentView.getMeasuredHeight();
        if (!z3) {
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            i5 += iArr[0];
            i6 += iArr[1] + view.getHeight();
        }
        int u3 = u(view, i2, measuredHeight, i6);
        int t3 = t(view, i4, measuredWidth, i5);
        if (z3) {
            PopupWindowCompat.showAsDropDown(this, view, t3, u3, 0);
        } else {
            showAtLocation(view, 0, t3, u3);
        }
    }

    public void E(@NonNull View view, int i2, int i4, boolean z3) {
        D(view, i2, i4, 0, 0, z3);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        v();
        z();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i2, int i4, int i5) {
        this.f47120h = true;
        this.f47121i = view;
        this.f47124l = i4;
        this.f47125m = i5;
        s(getContentView());
        super.showAtLocation(view, i2, i4, i5);
    }

    public void x() {
        setContentView(this.f47117e);
        setHeight(this.f47114b);
        setWidth(this.f47113a);
        G(this.f47118f);
        int i2 = this.f47119g;
        if (i2 != -1) {
            setAnimationStyle(i2);
        }
    }

    public SmartPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmartPopupWindow(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f47113a = -2;
        this.f47114b = -2;
        this.f47115c = 1.0f;
        this.f47118f = true;
        this.f47119g = -1;
        this.f47120h = true;
        this.f47122j = 2;
        this.f47123k = 1;
        this.f47126n = new c();
        this.f47116d = context;
    }
}
