package q.rorbin.badgeview;

import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.view.View;
/* compiled from: Badge.java */
/* loaded from: classes5.dex */
public interface a {

    /* compiled from: Badge.java */
    /* renamed from: q.rorbin.badgeview.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0496a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f73986a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f73987b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f73988c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f73989d = 4;

        /* renamed from: e  reason: collision with root package name */
        public static final int f73990e = 5;

        void a(int i2, a aVar, View view);
    }

    float a(boolean z3);

    boolean b();

    a c(View view);

    float d(boolean z3);

    a e(String str);

    float f(boolean z3);

    a g(int i2);

    Drawable getBadgeBackground();

    int getBadgeBackgroundColor();

    int getBadgeGravity();

    int getBadgeNumber();

    String getBadgeText();

    int getBadgeTextColor();

    PointF getDragCenter();

    View getTargetView();

    boolean h();

    void hide(boolean z3);

    a i(InterfaceC0496a interfaceC0496a);

    float j(boolean z3);

    boolean k();

    a l(int i2);

    a m(float f4, boolean z3);

    a n(int i2, float f4, boolean z3);

    a o(int i2);

    a p(Drawable drawable);

    a q(int i2);

    a r(float f4, float f5, boolean z3);

    a s(boolean z3);

    a t(boolean z3);

    a u(float f4, boolean z3);

    a v(float f4, boolean z3);

    a w(Drawable drawable, boolean z3);
}
