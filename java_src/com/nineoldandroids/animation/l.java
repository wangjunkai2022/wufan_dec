package com.nineoldandroids.animation;

import android.view.View;
import androidx.constraintlayout.motion.widget.Key;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ObjectAnimator.java */
/* loaded from: classes4.dex */
public final class l extends q {

    /* renamed from: s0  reason: collision with root package name */
    private static final boolean f54424s0 = false;

    /* renamed from: t0  reason: collision with root package name */
    private static final Map<String, com.nineoldandroids.util.c> f54425t0;

    /* renamed from: p0  reason: collision with root package name */
    private Object f54426p0;

    /* renamed from: q0  reason: collision with root package name */
    private String f54427q0;

    /* renamed from: r0  reason: collision with root package name */
    private com.nineoldandroids.util.c f54428r0;

    static {
        HashMap hashMap = new HashMap();
        f54425t0 = hashMap;
        hashMap.put("alpha", m.f54429a);
        hashMap.put("pivotX", m.f54430b);
        hashMap.put("pivotY", m.f54431c);
        hashMap.put("translationX", m.f54432d);
        hashMap.put("translationY", m.f54433e);
        hashMap.put(Key.ROTATION, m.f54434f);
        hashMap.put("rotationX", m.f54435g);
        hashMap.put("rotationY", m.f54436h);
        hashMap.put("scaleX", m.f54437i);
        hashMap.put("scaleY", m.f54438j);
        hashMap.put("scrollX", m.f54439k);
        hashMap.put("scrollY", m.f54440l);
        hashMap.put("x", m.f54441m);
        hashMap.put("y", m.f54442n);
    }

    public l() {
    }

    public static <T> l q0(T t3, com.nineoldandroids.util.c<T, Float> cVar, float... fArr) {
        l lVar = new l(t3, cVar);
        lVar.e0(fArr);
        return lVar;
    }

    public static l r0(Object obj, String str, float... fArr) {
        l lVar = new l(obj, str);
        lVar.e0(fArr);
        return lVar;
    }

    public static <T> l s0(T t3, com.nineoldandroids.util.c<T, Integer> cVar, int... iArr) {
        l lVar = new l(t3, cVar);
        lVar.g0(iArr);
        return lVar;
    }

    public static l t0(Object obj, String str, int... iArr) {
        l lVar = new l(obj, str);
        lVar.g0(iArr);
        return lVar;
    }

    public static <T, V> l u0(T t3, com.nineoldandroids.util.c<T, V> cVar, p<V> pVar, V... vArr) {
        l lVar = new l(t3, cVar);
        lVar.h0(vArr);
        lVar.d0(pVar);
        return lVar;
    }

    public static l v0(Object obj, String str, p pVar, Object... objArr) {
        l lVar = new l(obj, str);
        lVar.h0(objArr);
        lVar.d0(pVar);
        return lVar;
    }

    public static l w0(Object obj, n... nVarArr) {
        l lVar = new l();
        lVar.f54426p0 = obj;
        lVar.k0(nVarArr);
        return lVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.nineoldandroids.animation.q
    public void D(float f4) {
        super.D(f4);
        int length = this.f54493s.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f54493s[i2].p(this.f54426p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.nineoldandroids.animation.q
    public void T() {
        if (this.f54486l) {
            return;
        }
        if (this.f54428r0 == null && com.nineoldandroids.view.animation.a.f54503q && (this.f54426p0 instanceof View)) {
            Map<String, com.nineoldandroids.util.c> map = f54425t0;
            if (map.containsKey(this.f54427q0)) {
                y0(map.get(this.f54427q0));
            }
        }
        int length = this.f54493s.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f54493s[i2].A(this.f54426p0);
        }
        super.T();
    }

    @Override // com.nineoldandroids.animation.q
    public void e0(float... fArr) {
        n[] nVarArr = this.f54493s;
        if (nVarArr != null && nVarArr.length != 0) {
            super.e0(fArr);
            return;
        }
        com.nineoldandroids.util.c cVar = this.f54428r0;
        if (cVar != null) {
            k0(n.h(cVar, fArr));
        } else {
            k0(n.i(this.f54427q0, fArr));
        }
    }

    @Override // com.nineoldandroids.animation.q
    public void g0(int... iArr) {
        n[] nVarArr = this.f54493s;
        if (nVarArr != null && nVarArr.length != 0) {
            super.g0(iArr);
            return;
        }
        com.nineoldandroids.util.c cVar = this.f54428r0;
        if (cVar != null) {
            k0(n.j(cVar, iArr));
        } else {
            k0(n.k(this.f54427q0, iArr));
        }
    }

    @Override // com.nineoldandroids.animation.q
    public void h0(Object... objArr) {
        n[] nVarArr = this.f54493s;
        if (nVarArr != null && nVarArr.length != 0) {
            super.h0(objArr);
            return;
        }
        com.nineoldandroids.util.c cVar = this.f54428r0;
        if (cVar != null) {
            k0(n.n(cVar, null, objArr));
        } else {
            k0(n.o(this.f54427q0, null, objArr));
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void n(Object obj) {
        Object obj2 = this.f54426p0;
        if (obj2 != obj) {
            this.f54426p0 = obj;
            if (obj2 == null || obj == null || obj2.getClass() != obj.getClass()) {
                this.f54486l = false;
            }
        }
    }

    @Override // com.nineoldandroids.animation.q, com.nineoldandroids.animation.a
    /* renamed from: n0 */
    public l clone() {
        return (l) super.clone();
    }

    @Override // com.nineoldandroids.animation.a
    public void o() {
        T();
        int length = this.f54493s.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f54493s[i2].x(this.f54426p0);
        }
    }

    public String o0() {
        return this.f54427q0;
    }

    @Override // com.nineoldandroids.animation.a
    public void p() {
        T();
        int length = this.f54493s.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f54493s[i2].C(this.f54426p0);
        }
    }

    public Object p0() {
        return this.f54426p0;
    }

    @Override // com.nineoldandroids.animation.q, com.nineoldandroids.animation.a
    public void q() {
        super.q();
    }

    @Override // com.nineoldandroids.animation.q
    public String toString() {
        String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.f54426p0;
        if (this.f54493s != null) {
            for (int i2 = 0; i2 < this.f54493s.length; i2++) {
                str = str + "\n    " + this.f54493s[i2].toString();
            }
        }
        return str;
    }

    @Override // com.nineoldandroids.animation.q, com.nineoldandroids.animation.a
    /* renamed from: x0 */
    public l k(long j4) {
        super.k(j4);
        return this;
    }

    public void y0(com.nineoldandroids.util.c cVar) {
        n[] nVarArr = this.f54493s;
        if (nVarArr != null) {
            n nVar = nVarArr[0];
            String f4 = nVar.f();
            nVar.v(cVar);
            this.f54494t.remove(f4);
            this.f54494t.put(this.f54427q0, nVar);
        }
        if (this.f54428r0 != null) {
            this.f54427q0 = cVar.b();
        }
        this.f54428r0 = cVar;
        this.f54486l = false;
    }

    public void z0(String str) {
        n[] nVarArr = this.f54493s;
        if (nVarArr != null) {
            n nVar = nVarArr[0];
            String f4 = nVar.f();
            nVar.w(str);
            this.f54494t.remove(f4);
            this.f54494t.put(str, nVar);
        }
        this.f54427q0 = str;
        this.f54486l = false;
    }

    private l(Object obj, String str) {
        this.f54426p0 = obj;
        z0(str);
    }

    private <T> l(T t3, com.nineoldandroids.util.c<T, ?> cVar) {
        this.f54426p0 = t3;
        y0(cVar);
    }
}
