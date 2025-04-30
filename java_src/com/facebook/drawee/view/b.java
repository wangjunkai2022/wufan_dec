package com.facebook.drawee.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.common.internal.g;
import com.facebook.common.internal.h;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.drawee.drawable.u;
import com.facebook.drawee.drawable.v;
import javax.annotation.Nullable;
import k0.b;
/* compiled from: DraweeHolder.java */
/* loaded from: classes.dex */
public class b<DH extends k0.b> implements v {

    /* renamed from: d  reason: collision with root package name */
    private DH f12215d;

    /* renamed from: a  reason: collision with root package name */
    private boolean f12212a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f12213b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12214c = true;

    /* renamed from: e  reason: collision with root package name */
    private k0.a f12216e = null;

    /* renamed from: f  reason: collision with root package name */
    private final DraweeEventTracker f12217f = DraweeEventTracker.b();

    public b(@Nullable DH dh) {
        if (dh != null) {
            r(dh);
        }
    }

    private void b() {
        if (this.f12212a) {
            return;
        }
        this.f12217f.c(DraweeEventTracker.Event.ON_ATTACH_CONTROLLER);
        this.f12212a = true;
        k0.a aVar = this.f12216e;
        if (aVar == null || aVar.e() == null) {
            return;
        }
        this.f12216e.b();
    }

    private void c() {
        if (this.f12213b && this.f12214c) {
            b();
        } else {
            e();
        }
    }

    public static <DH extends k0.b> b<DH> d(@Nullable DH dh, Context context) {
        b<DH> bVar = new b<>(dh);
        bVar.p(context);
        return bVar;
    }

    private void e() {
        if (this.f12212a) {
            this.f12217f.c(DraweeEventTracker.Event.ON_DETACH_CONTROLLER);
            this.f12212a = false;
            if (l()) {
                this.f12216e.d();
            }
        }
    }

    private void s(@Nullable v vVar) {
        Drawable i2 = i();
        if (i2 instanceof u) {
            ((u) i2).p(vVar);
        }
    }

    @Override // com.facebook.drawee.drawable.v
    public void a() {
        if (this.f12212a) {
            return;
        }
        com.facebook.common.logging.a.m0(DraweeEventTracker.class, "%x: Draw requested for a non-attached controller %x. %s", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f12216e)), toString());
        this.f12213b = true;
        this.f12214c = true;
        c();
    }

    @Nullable
    public k0.a f() {
        return this.f12216e;
    }

    protected DraweeEventTracker g() {
        return this.f12217f;
    }

    public DH h() {
        return (DH) h.i(this.f12215d);
    }

    @Nullable
    public Drawable i() {
        DH dh = this.f12215d;
        if (dh == null) {
            return null;
        }
        return dh.c();
    }

    public boolean j() {
        return this.f12215d != null;
    }

    public boolean k() {
        return this.f12213b;
    }

    public boolean l() {
        k0.a aVar = this.f12216e;
        return aVar != null && aVar.e() == this.f12215d;
    }

    public void m() {
        this.f12217f.c(DraweeEventTracker.Event.ON_HOLDER_ATTACH);
        this.f12213b = true;
        c();
    }

    public void n() {
        this.f12217f.c(DraweeEventTracker.Event.ON_HOLDER_DETACH);
        this.f12213b = false;
        c();
    }

    public boolean o(MotionEvent motionEvent) {
        if (l()) {
            return this.f12216e.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.facebook.drawee.drawable.v
    public void onVisibilityChange(boolean z3) {
        if (this.f12214c == z3) {
            return;
        }
        this.f12217f.c(z3 ? DraweeEventTracker.Event.ON_DRAWABLE_SHOW : DraweeEventTracker.Event.ON_DRAWABLE_HIDE);
        this.f12214c = z3;
        c();
    }

    public void p(Context context) {
    }

    public void q(@Nullable k0.a aVar) {
        boolean z3 = this.f12212a;
        if (z3) {
            e();
        }
        if (l()) {
            this.f12217f.c(DraweeEventTracker.Event.ON_CLEAR_OLD_CONTROLLER);
            this.f12216e.a(null);
        }
        this.f12216e = aVar;
        if (aVar != null) {
            this.f12217f.c(DraweeEventTracker.Event.ON_SET_CONTROLLER);
            this.f12216e.a(this.f12215d);
        } else {
            this.f12217f.c(DraweeEventTracker.Event.ON_CLEAR_CONTROLLER);
        }
        if (z3) {
            b();
        }
    }

    public void r(DH dh) {
        this.f12217f.c(DraweeEventTracker.Event.ON_SET_HIERARCHY);
        boolean l4 = l();
        s(null);
        DH dh2 = (DH) h.i(dh);
        this.f12215d = dh2;
        Drawable c4 = dh2.c();
        onVisibilityChange(c4 == null || c4.isVisible());
        s(this);
        if (l4) {
            this.f12216e.a(dh);
        }
    }

    public String toString() {
        return g.f(this).g("controllerAttached", this.f12212a).g("holderAttached", this.f12213b).g("drawableVisible", this.f12214c).f(com.umeng.analytics.pro.c.ar, this.f12217f.toString()).toString();
    }
}
