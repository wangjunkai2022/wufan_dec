package com.join.android.app.common.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import java.lang.reflect.Method;
/* compiled from: SystemBarTintManager.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: h  reason: collision with root package name */
    public static final int f17093h = -1728053248;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f17094i;

    /* renamed from: a  reason: collision with root package name */
    private final C0131b f17095a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f17096b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17097c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f17098d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f17099e;

    /* renamed from: f  reason: collision with root package name */
    private View f17100f;

    /* renamed from: g  reason: collision with root package name */
    private View f17101g;

    /* compiled from: SystemBarTintManager.java */
    /* renamed from: com.join.android.app.common.manager.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0131b {

        /* renamed from: j  reason: collision with root package name */
        private static final String f17102j = "status_bar_height";

        /* renamed from: k  reason: collision with root package name */
        private static final String f17103k = "navigation_bar_height";

        /* renamed from: l  reason: collision with root package name */
        private static final String f17104l = "navigation_bar_height_landscape";

        /* renamed from: m  reason: collision with root package name */
        private static final String f17105m = "navigation_bar_width";

        /* renamed from: a  reason: collision with root package name */
        private final boolean f17106a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f17107b;

        /* renamed from: c  reason: collision with root package name */
        private final int f17108c;

        /* renamed from: d  reason: collision with root package name */
        private final int f17109d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f17110e;

        /* renamed from: f  reason: collision with root package name */
        private final int f17111f;

        /* renamed from: g  reason: collision with root package name */
        private final int f17112g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f17113h;

        /* renamed from: i  reason: collision with root package name */
        private final float f17114i;

        @TargetApi(14)
        private int b(Context context) {
            if (Build.VERSION.SDK_INT >= 14) {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16843499, typedValue, true);
                return context.getResources().getDimensionPixelSize(typedValue.resourceId);
            }
            return 0;
        }

        private int c(Resources resources, String str) {
            int identifier = resources.getIdentifier(str, "dimen", q.a.f73954a);
            if (identifier > 0) {
                return resources.getDimensionPixelSize(identifier);
            }
            return 0;
        }

        @TargetApi(14)
        private int e(Context context) {
            Resources resources = context.getResources();
            if (Build.VERSION.SDK_INT < 14 || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                return 0;
            }
            return c(resources, this.f17113h ? f17103k : f17104l);
        }

        @TargetApi(14)
        private int g(Context context) {
            Resources resources = context.getResources();
            if (Build.VERSION.SDK_INT < 14 || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                return 0;
            }
            return c(resources, f17105m);
        }

        @SuppressLint({"NewApi"})
        private float k(Activity activity) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 16) {
                activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            }
            float f4 = displayMetrics.density;
            return Math.min(displayMetrics.widthPixels / f4, displayMetrics.heightPixels / f4);
        }

        public int a() {
            return this.f17109d;
        }

        public int d() {
            return this.f17111f;
        }

        public int f() {
            return this.f17112g;
        }

        public int h() {
            if (this.f17107b && n()) {
                return this.f17111f;
            }
            return 0;
        }

        public int i() {
            if (!this.f17107b || n()) {
                return 0;
            }
            return this.f17112g;
        }

        public int j(boolean z3) {
            return (this.f17106a ? this.f17108c : 0) + (z3 ? this.f17109d : 0);
        }

        public int l() {
            return this.f17108c;
        }

        public boolean m() {
            return this.f17110e;
        }

        public boolean n() {
            return this.f17114i >= 600.0f || this.f17113h;
        }

        private C0131b(Activity activity, boolean z3, boolean z4) {
            Resources resources = activity.getResources();
            this.f17113h = resources.getConfiguration().orientation == 1;
            this.f17114i = k(activity);
            this.f17108c = c(resources, f17102j);
            this.f17109d = b(activity);
            int e4 = e(activity);
            this.f17111f = e4;
            this.f17112g = g(activity);
            this.f17110e = e4 > 0;
            this.f17106a = z3;
            this.f17107b = z4;
        }
    }

    @TargetApi(19)
    public b(Activity activity) {
        Window window = activity.getWindow();
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        if (Build.VERSION.SDK_INT >= 19) {
            TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(new int[]{16843759, 16843760});
            try {
                this.f17096b = obtainStyledAttributes.getBoolean(0, false);
                this.f17097c = obtainStyledAttributes.getBoolean(1, false);
                obtainStyledAttributes.recycle();
                int i2 = window.getAttributes().flags;
                if ((67108864 & i2) != 0) {
                    this.f17096b = true;
                }
                if ((i2 & 1024) == 1024) {
                    this.f17096b = false;
                }
                if ((i2 & 134217728) != 0) {
                    this.f17097c = true;
                }
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        }
        C0131b c0131b = new C0131b(activity, this.f17096b, this.f17097c);
        this.f17095a = c0131b;
        if (!c0131b.m()) {
            this.f17097c = false;
        }
        if (this.f17096b) {
            t(activity, viewGroup);
        }
        if (this.f17097c) {
            s(activity, viewGroup);
        }
    }

    private void s(Context context, ViewGroup viewGroup) {
        FrameLayout.LayoutParams layoutParams;
        this.f17101g = new View(context);
        if (this.f17095a.n()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.f17095a.d());
            layoutParams.gravity = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.f17095a.f(), -1);
            layoutParams.gravity = 5;
        }
        this.f17101g.setLayoutParams(layoutParams);
        this.f17101g.setBackgroundColor(f17093h);
        this.f17101g.setVisibility(8);
        viewGroup.addView(this.f17101g);
    }

    private void t(Context context, ViewGroup viewGroup) {
        this.f17100f = new View(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.f17095a.l());
        layoutParams.gravity = 48;
        if (this.f17097c && !this.f17095a.n()) {
            layoutParams.rightMargin = this.f17095a.f();
        }
        this.f17100f.setLayoutParams(layoutParams);
        this.f17100f.setBackgroundColor(f17093h);
        this.f17100f.setVisibility(8);
        viewGroup.addView(this.f17100f);
    }

    public C0131b a() {
        return this.f17095a;
    }

    public boolean b() {
        return this.f17099e;
    }

    public boolean c() {
        return this.f17098d;
    }

    @TargetApi(11)
    public void d(float f4) {
        if (!this.f17097c || Build.VERSION.SDK_INT < 11) {
            return;
        }
        this.f17101g.setAlpha(f4);
    }

    public void e(int i2) {
        if (this.f17097c) {
            this.f17101g.setBackgroundColor(i2);
        }
    }

    public void f(Drawable drawable) {
        if (this.f17097c) {
            this.f17101g.setBackgroundDrawable(drawable);
        }
    }

    public void g(boolean z3) {
        this.f17099e = z3;
        if (this.f17097c) {
            this.f17101g.setVisibility(z3 ? 0 : 8);
        }
    }

    public void h(int i2) {
        if (this.f17097c) {
            this.f17101g.setBackgroundResource(i2);
        }
    }

    @TargetApi(11)
    public void i(float f4) {
        if (!this.f17096b || Build.VERSION.SDK_INT < 11) {
            return;
        }
        this.f17100f.setAlpha(f4);
    }

    public void j(boolean z3, Activity activity) {
        if (f17094i) {
            Class<?> cls = activity.getWindow().getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i2 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Class<?> cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                Window window = activity.getWindow();
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(z3 ? i2 : 0);
                objArr[1] = Integer.valueOf(i2);
                method.invoke(window, objArr);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void k(int i2) {
        if (this.f17096b) {
            this.f17100f.setBackgroundColor(i2);
        }
    }

    public void l(Drawable drawable) {
        if (this.f17096b) {
            this.f17100f.setBackgroundDrawable(drawable);
        }
    }

    public void m(boolean z3) {
        this.f17098d = z3;
        if (this.f17096b) {
            this.f17100f.setVisibility(z3 ? 0 : 8);
        }
    }

    public void n(int i2) {
        if (this.f17096b) {
            this.f17100f.setBackgroundResource(i2);
        }
    }

    public void o(float f4) {
        i(f4);
        d(f4);
    }

    public void p(int i2) {
        k(i2);
        e(i2);
    }

    public void q(Drawable drawable) {
        l(drawable);
        f(drawable);
    }

    public void r(int i2) {
        n(i2);
        h(i2);
    }
}
