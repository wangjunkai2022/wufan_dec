package androidx.recyclerview.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
class ViewBoundsCheck {

    /* renamed from: c  reason: collision with root package name */
    static final int f7313c = 1;

    /* renamed from: d  reason: collision with root package name */
    static final int f7314d = 2;

    /* renamed from: e  reason: collision with root package name */
    static final int f7315e = 4;

    /* renamed from: f  reason: collision with root package name */
    static final int f7316f = 0;

    /* renamed from: g  reason: collision with root package name */
    static final int f7317g = 1;

    /* renamed from: h  reason: collision with root package name */
    static final int f7318h = 2;

    /* renamed from: i  reason: collision with root package name */
    static final int f7319i = 4;

    /* renamed from: j  reason: collision with root package name */
    static final int f7320j = 4;

    /* renamed from: k  reason: collision with root package name */
    static final int f7321k = 16;

    /* renamed from: l  reason: collision with root package name */
    static final int f7322l = 32;

    /* renamed from: m  reason: collision with root package name */
    static final int f7323m = 64;

    /* renamed from: n  reason: collision with root package name */
    static final int f7324n = 8;

    /* renamed from: o  reason: collision with root package name */
    static final int f7325o = 256;

    /* renamed from: p  reason: collision with root package name */
    static final int f7326p = 512;

    /* renamed from: q  reason: collision with root package name */
    static final int f7327q = 1024;

    /* renamed from: r  reason: collision with root package name */
    static final int f7328r = 12;

    /* renamed from: s  reason: collision with root package name */
    static final int f7329s = 4096;

    /* renamed from: t  reason: collision with root package name */
    static final int f7330t = 8192;

    /* renamed from: u  reason: collision with root package name */
    static final int f7331u = 16384;

    /* renamed from: v  reason: collision with root package name */
    static final int f7332v = 7;

    /* renamed from: a  reason: collision with root package name */
    final Callback f7333a;

    /* renamed from: b  reason: collision with root package name */
    BoundFlags f7334b = new BoundFlags();

    /* loaded from: classes2.dex */
    static class BoundFlags {

        /* renamed from: a  reason: collision with root package name */
        int f7335a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f7336b;

        /* renamed from: c  reason: collision with root package name */
        int f7337c;

        /* renamed from: d  reason: collision with root package name */
        int f7338d;

        /* renamed from: e  reason: collision with root package name */
        int f7339e;

        BoundFlags() {
        }

        void a(int i2) {
            this.f7335a = i2 | this.f7335a;
        }

        boolean b() {
            int i2 = this.f7335a;
            if ((i2 & 7) == 0 || (i2 & (c(this.f7338d, this.f7336b) << 0)) != 0) {
                int i4 = this.f7335a;
                if ((i4 & 112) == 0 || (i4 & (c(this.f7338d, this.f7337c) << 4)) != 0) {
                    int i5 = this.f7335a;
                    if ((i5 & 1792) == 0 || (i5 & (c(this.f7339e, this.f7336b) << 8)) != 0) {
                        int i6 = this.f7335a;
                        return (i6 & 28672) == 0 || (i6 & (c(this.f7339e, this.f7337c) << 12)) != 0;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        int c(int i2, int i4) {
            if (i2 > i4) {
                return 1;
            }
            return i2 == i4 ? 2 : 4;
        }

        void d() {
            this.f7335a = 0;
        }

        void e(int i2, int i4, int i5, int i6) {
            this.f7336b = i2;
            this.f7337c = i4;
            this.f7338d = i5;
            this.f7339e = i6;
        }
    }

    /* loaded from: classes2.dex */
    interface Callback {
        View getChildAt(int i2);

        int getChildEnd(View view);

        int getChildStart(View view);

        int getParentEnd();

        int getParentStart();
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ViewBounds {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewBoundsCheck(Callback callback) {
        this.f7333a = callback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(int i2, int i4, int i5, int i6) {
        int parentStart = this.f7333a.getParentStart();
        int parentEnd = this.f7333a.getParentEnd();
        int i7 = i4 > i2 ? 1 : -1;
        View view = null;
        while (i2 != i4) {
            View childAt = this.f7333a.getChildAt(i2);
            this.f7334b.e(parentStart, parentEnd, this.f7333a.getChildStart(childAt), this.f7333a.getChildEnd(childAt));
            if (i5 != 0) {
                this.f7334b.d();
                this.f7334b.a(i5);
                if (this.f7334b.b()) {
                    return childAt;
                }
            }
            if (i6 != 0) {
                this.f7334b.d();
                this.f7334b.a(i6);
                if (this.f7334b.b()) {
                    view = childAt;
                }
            }
            i2 += i7;
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(View view, int i2) {
        this.f7334b.e(this.f7333a.getParentStart(), this.f7333a.getParentEnd(), this.f7333a.getChildStart(view), this.f7333a.getChildEnd(view));
        if (i2 != 0) {
            this.f7334b.d();
            this.f7334b.a(i2);
            return this.f7334b.b();
        }
        return false;
    }
}
