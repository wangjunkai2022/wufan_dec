package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;
/* compiled from: Animator.java */
/* loaded from: classes4.dex */
public abstract class a implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    ArrayList<InterfaceC0259a> f54356a = null;

    /* compiled from: Animator.java */
    /* renamed from: com.nineoldandroids.animation.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0259a {
        void a(a aVar);

        void b(a aVar);

        void c(a aVar);

        void d(a aVar);
    }

    public void a(InterfaceC0259a interfaceC0259a) {
        if (this.f54356a == null) {
            this.f54356a = new ArrayList<>();
        }
        this.f54356a.add(interfaceC0259a);
    }

    @Override // 
    /* renamed from: b */
    public a clone() {
        try {
            a aVar = (a) super.clone();
            ArrayList<InterfaceC0259a> arrayList = this.f54356a;
            if (arrayList != null) {
                aVar.f54356a = new ArrayList<>();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    aVar.f54356a.add(arrayList.get(i2));
                }
            }
            return aVar;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public void c() {
    }

    public void cancel() {
    }

    public abstract long d();

    public ArrayList<InterfaceC0259a> e() {
        return this.f54356a;
    }

    public abstract long f();

    public abstract boolean g();

    public boolean h() {
        return g();
    }

    public void i() {
        ArrayList<InterfaceC0259a> arrayList = this.f54356a;
        if (arrayList != null) {
            arrayList.clear();
            this.f54356a = null;
        }
    }

    public void j(InterfaceC0259a interfaceC0259a) {
        ArrayList<InterfaceC0259a> arrayList = this.f54356a;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(interfaceC0259a);
        if (this.f54356a.size() == 0) {
            this.f54356a = null;
        }
    }

    public abstract a k(long j4);

    public abstract void l(Interpolator interpolator);

    public abstract void m(long j4);

    public void n(Object obj) {
    }

    public void o() {
    }

    public void p() {
    }

    public void q() {
    }
}
