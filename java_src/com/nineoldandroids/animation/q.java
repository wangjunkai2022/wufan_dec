package com.nineoldandroids.animation;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.nineoldandroids.animation.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* compiled from: ValueAnimator.java */
/* loaded from: classes4.dex */
public class q extends com.nineoldandroids.animation.a {
    private static ThreadLocal<f> A = new ThreadLocal<>();
    private static final ThreadLocal<ArrayList<q>> B = new a();
    private static final ThreadLocal<ArrayList<q>> C = new b();
    private static final ThreadLocal<ArrayList<q>> D = new c();
    private static final ThreadLocal<ArrayList<q>> E = new d();
    private static final ThreadLocal<ArrayList<q>> F = new e();
    private static final Interpolator G = new AccelerateDecelerateInterpolator();
    private static final p H = new h();
    private static final p I = new com.nineoldandroids.animation.f();
    private static long J = 10;
    public static final int K = 1;

    /* renamed from: n0  reason: collision with root package name */
    public static final int f54468n0 = 2;

    /* renamed from: o0  reason: collision with root package name */
    public static final int f54469o0 = -1;

    /* renamed from: u  reason: collision with root package name */
    private static final long f54470u = 10;

    /* renamed from: v  reason: collision with root package name */
    static final int f54471v = 0;

    /* renamed from: w  reason: collision with root package name */
    static final int f54472w = 1;

    /* renamed from: x  reason: collision with root package name */
    static final int f54473x = 0;

    /* renamed from: y  reason: collision with root package name */
    static final int f54474y = 1;

    /* renamed from: z  reason: collision with root package name */
    static final int f54475z = 2;

    /* renamed from: b  reason: collision with root package name */
    long f54476b;

    /* renamed from: h  reason: collision with root package name */
    private long f54482h;

    /* renamed from: s  reason: collision with root package name */
    n[] f54493s;

    /* renamed from: t  reason: collision with root package name */
    HashMap<String, n> f54494t;

    /* renamed from: c  reason: collision with root package name */
    long f54477c = -1;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54478d = false;

    /* renamed from: e  reason: collision with root package name */
    private int f54479e = 0;

    /* renamed from: f  reason: collision with root package name */
    private float f54480f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54481g = false;

    /* renamed from: i  reason: collision with root package name */
    int f54483i = 0;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54484j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54485k = false;

    /* renamed from: l  reason: collision with root package name */
    boolean f54486l = false;

    /* renamed from: m  reason: collision with root package name */
    private long f54487m = 300;

    /* renamed from: n  reason: collision with root package name */
    private long f54488n = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f54489o = 0;

    /* renamed from: p  reason: collision with root package name */
    private int f54490p = 1;

    /* renamed from: q  reason: collision with root package name */
    private Interpolator f54491q = G;

    /* renamed from: r  reason: collision with root package name */
    private ArrayList<g> f54492r = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ValueAnimator.java */
    /* loaded from: classes4.dex */
    public static class a extends ThreadLocal<ArrayList<q>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    /* compiled from: ValueAnimator.java */
    /* loaded from: classes4.dex */
    static class b extends ThreadLocal<ArrayList<q>> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    /* compiled from: ValueAnimator.java */
    /* loaded from: classes4.dex */
    static class c extends ThreadLocal<ArrayList<q>> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    /* compiled from: ValueAnimator.java */
    /* loaded from: classes4.dex */
    static class d extends ThreadLocal<ArrayList<q>> {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    /* compiled from: ValueAnimator.java */
    /* loaded from: classes4.dex */
    static class e extends ThreadLocal<ArrayList<q>> {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ValueAnimator.java */
    /* loaded from: classes4.dex */
    public static class f extends Handler {
        private f() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z3;
            ArrayList arrayList = (ArrayList) q.B.get();
            ArrayList arrayList2 = (ArrayList) q.D.get();
            int i2 = message.what;
            if (i2 == 0) {
                ArrayList arrayList3 = (ArrayList) q.C.get();
                z3 = arrayList.size() <= 0 && arrayList2.size() <= 0;
                while (arrayList3.size() > 0) {
                    ArrayList arrayList4 = (ArrayList) arrayList3.clone();
                    arrayList3.clear();
                    int size = arrayList4.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        q qVar = (q) arrayList4.get(i4);
                        if (qVar.f54488n == 0) {
                            qVar.m0();
                        } else {
                            arrayList2.add(qVar);
                        }
                    }
                }
            } else if (i2 != 1) {
                return;
            } else {
                z3 = true;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            ArrayList arrayList5 = (ArrayList) q.F.get();
            ArrayList arrayList6 = (ArrayList) q.E.get();
            int size2 = arrayList2.size();
            for (int i5 = 0; i5 < size2; i5++) {
                q qVar2 = (q) arrayList2.get(i5);
                if (qVar2.H(currentAnimationTimeMillis)) {
                    arrayList5.add(qVar2);
                }
            }
            int size3 = arrayList5.size();
            if (size3 > 0) {
                for (int i6 = 0; i6 < size3; i6++) {
                    q qVar3 = (q) arrayList5.get(i6);
                    qVar3.m0();
                    qVar3.f54484j = true;
                    arrayList2.remove(qVar3);
                }
                arrayList5.clear();
            }
            int size4 = arrayList.size();
            int i7 = 0;
            while (i7 < size4) {
                q qVar4 = (q) arrayList.get(i7);
                if (qVar4.E(currentAnimationTimeMillis)) {
                    arrayList6.add(qVar4);
                }
                if (arrayList.size() == size4) {
                    i7++;
                } else {
                    size4--;
                    arrayList6.remove(qVar4);
                }
            }
            if (arrayList6.size() > 0) {
                for (int i8 = 0; i8 < arrayList6.size(); i8++) {
                    ((q) arrayList6.get(i8)).I();
                }
                arrayList6.clear();
            }
            if (z3) {
                if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                    return;
                }
                sendEmptyMessageDelayed(1, Math.max(0L, q.J - (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis)));
            }
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    /* compiled from: ValueAnimator.java */
    /* loaded from: classes4.dex */
    public interface g {
        void e(q qVar);
    }

    public static void F() {
        B.get().clear();
        C.get().clear();
        D.get().clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean H(long j4) {
        if (!this.f54481g) {
            this.f54481g = true;
            this.f54482h = j4;
            return false;
        }
        long j5 = j4 - this.f54482h;
        long j6 = this.f54488n;
        if (j5 > j6) {
            this.f54476b = j4 - (j5 - j6);
            this.f54483i = 1;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        ArrayList<a.InterfaceC0259a> arrayList;
        B.get().remove(this);
        C.get().remove(this);
        D.get().remove(this);
        this.f54483i = 0;
        if (this.f54484j && (arrayList = this.f54356a) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((a.InterfaceC0259a) arrayList2.get(i2)).d(this);
            }
        }
        this.f54484j = false;
        this.f54485k = false;
    }

    public static int M() {
        return B.get().size();
    }

    public static long O() {
        return J;
    }

    public static q U(float... fArr) {
        q qVar = new q();
        qVar.e0(fArr);
        return qVar;
    }

    public static q V(int... iArr) {
        q qVar = new q();
        qVar.g0(iArr);
        return qVar;
    }

    public static q W(p pVar, Object... objArr) {
        q qVar = new q();
        qVar.h0(objArr);
        qVar.d0(pVar);
        return qVar;
    }

    public static q X(n... nVarArr) {
        q qVar = new q();
        qVar.k0(nVarArr);
        return qVar;
    }

    public static void f0(long j4) {
        J = j4;
    }

    private void l0(boolean z3) {
        if (Looper.myLooper() != null) {
            this.f54478d = z3;
            this.f54479e = 0;
            this.f54483i = 0;
            this.f54485k = true;
            this.f54481g = false;
            C.get().add(this);
            if (this.f54488n == 0) {
                b0(N());
                this.f54483i = 0;
                this.f54484j = true;
                ArrayList<a.InterfaceC0259a> arrayList = this.f54356a;
                if (arrayList != null) {
                    ArrayList arrayList2 = (ArrayList) arrayList.clone();
                    int size = arrayList2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((a.InterfaceC0259a) arrayList2.get(i2)).c(this);
                    }
                }
            }
            f fVar = A.get();
            if (fVar == null) {
                fVar = new f(null);
                A.set(fVar);
            }
            fVar.sendEmptyMessage(0);
            return;
        }
        throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        ArrayList<a.InterfaceC0259a> arrayList;
        T();
        B.get().add(this);
        if (this.f54488n <= 0 || (arrayList = this.f54356a) == null) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) arrayList.clone();
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((a.InterfaceC0259a) arrayList2.get(i2)).c(this);
        }
    }

    public void C(g gVar) {
        if (this.f54492r == null) {
            this.f54492r = new ArrayList<>();
        }
        this.f54492r.add(gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(float f4) {
        float interpolation = this.f54491q.getInterpolation(f4);
        this.f54480f = interpolation;
        int length = this.f54493s.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f54493s[i2].a(interpolation);
        }
        ArrayList<g> arrayList = this.f54492r;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.f54492r.get(i4).e(this);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean E(long r10) {
        /*
            r9 = this;
            int r0 = r9.f54483i
            r1 = 0
            r3 = 1
            if (r0 != 0) goto L1a
            r9.f54483i = r3
            long r4 = r9.f54477c
            int r0 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r0 >= 0) goto L12
            r9.f54476b = r10
            goto L1a
        L12:
            long r4 = r10 - r4
            r9.f54476b = r4
            r4 = -1
            r9.f54477c = r4
        L1a:
            int r0 = r9.f54483i
            r4 = 2
            r5 = 0
            if (r0 == r3) goto L23
            if (r0 == r4) goto L23
            goto L82
        L23:
            long r6 = r9.f54487m
            r0 = 1065353216(0x3f800000, float:1.0)
            int r8 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r8 <= 0) goto L32
            long r1 = r9.f54476b
            long r10 = r10 - r1
            float r10 = (float) r10
            float r11 = (float) r6
            float r10 = r10 / r11
            goto L34
        L32:
            r10 = 1065353216(0x3f800000, float:1.0)
        L34:
            int r11 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r11 < 0) goto L77
            int r11 = r9.f54479e
            int r1 = r9.f54489o
            if (r11 < r1) goto L47
            r11 = -1
            if (r1 != r11) goto L42
            goto L47
        L42:
            float r10 = java.lang.Math.min(r10, r0)
            goto L78
        L47:
            java.util.ArrayList<com.nineoldandroids.animation.a$a> r11 = r9.f54356a
            if (r11 == 0) goto L60
            int r11 = r11.size()
            r1 = 0
        L50:
            if (r1 >= r11) goto L60
            java.util.ArrayList<com.nineoldandroids.animation.a$a> r2 = r9.f54356a
            java.lang.Object r2 = r2.get(r1)
            com.nineoldandroids.animation.a$a r2 = (com.nineoldandroids.animation.a.InterfaceC0259a) r2
            r2.b(r9)
            int r1 = r1 + 1
            goto L50
        L60:
            int r11 = r9.f54490p
            if (r11 != r4) goto L69
            boolean r11 = r9.f54478d
            r11 = r11 ^ r3
            r9.f54478d = r11
        L69:
            int r11 = r9.f54479e
            int r1 = (int) r10
            int r11 = r11 + r1
            r9.f54479e = r11
            float r10 = r10 % r0
            long r1 = r9.f54476b
            long r3 = r9.f54487m
            long r1 = r1 + r3
            r9.f54476b = r1
        L77:
            r3 = 0
        L78:
            boolean r11 = r9.f54478d
            if (r11 == 0) goto L7e
            float r10 = r0 - r10
        L7e:
            r9.D(r10)
            r5 = r3
        L82:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nineoldandroids.animation.q.E(long):boolean");
    }

    @Override // com.nineoldandroids.animation.a
    /* renamed from: G */
    public q clone() {
        q qVar = (q) super.clone();
        ArrayList<g> arrayList = this.f54492r;
        if (arrayList != null) {
            qVar.f54492r = new ArrayList<>();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                qVar.f54492r.add(arrayList.get(i2));
            }
        }
        qVar.f54477c = -1L;
        qVar.f54478d = false;
        qVar.f54479e = 0;
        qVar.f54486l = false;
        qVar.f54483i = 0;
        qVar.f54481g = false;
        n[] nVarArr = this.f54493s;
        if (nVarArr != null) {
            int length = nVarArr.length;
            qVar.f54493s = new n[length];
            qVar.f54494t = new HashMap<>(length);
            for (int i4 = 0; i4 < length; i4++) {
                n clone = nVarArr[i4].clone();
                qVar.f54493s[i4] = clone;
                qVar.f54494t.put(clone.f(), clone);
            }
        }
        return qVar;
    }

    public float J() {
        return this.f54480f;
    }

    public Object K() {
        n[] nVarArr = this.f54493s;
        if (nVarArr == null || nVarArr.length <= 0) {
            return null;
        }
        return nVarArr[0].c();
    }

    public Object L(String str) {
        n nVar = this.f54494t.get(str);
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    public long N() {
        if (!this.f54486l || this.f54483i == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.f54476b;
    }

    public Interpolator P() {
        return this.f54491q;
    }

    public int Q() {
        return this.f54489o;
    }

    public int R() {
        return this.f54490p;
    }

    public n[] S() {
        return this.f54493s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T() {
        if (this.f54486l) {
            return;
        }
        int length = this.f54493s.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f54493s[i2].g();
        }
        this.f54486l = true;
    }

    public void Y() {
        ArrayList<g> arrayList = this.f54492r;
        if (arrayList == null) {
            return;
        }
        arrayList.clear();
        this.f54492r = null;
    }

    public void Z(g gVar) {
        ArrayList<g> arrayList = this.f54492r;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(gVar);
        if (this.f54492r.size() == 0) {
            this.f54492r = null;
        }
    }

    public void a0() {
        this.f54478d = !this.f54478d;
        if (this.f54483i == 1) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f54476b = currentAnimationTimeMillis - (this.f54487m - (currentAnimationTimeMillis - this.f54476b));
            return;
        }
        l0(true);
    }

    public void b0(long j4) {
        T();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.f54483i != 1) {
            this.f54477c = j4;
            this.f54483i = 2;
        }
        this.f54476b = currentAnimationTimeMillis - j4;
        E(currentAnimationTimeMillis);
    }

    @Override // com.nineoldandroids.animation.a
    public void c() {
        if (!B.get().contains(this) && !C.get().contains(this)) {
            this.f54481g = false;
            m0();
        } else if (!this.f54486l) {
            T();
        }
        int i2 = this.f54489o;
        if (i2 > 0 && (i2 & 1) == 1) {
            D(0.0f);
        } else {
            D(1.0f);
        }
        I();
    }

    @Override // com.nineoldandroids.animation.a
    /* renamed from: c0 */
    public q k(long j4) {
        if (j4 >= 0) {
            this.f54487m = j4;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j4);
    }

    @Override // com.nineoldandroids.animation.a
    public void cancel() {
        ArrayList<a.InterfaceC0259a> arrayList;
        if (this.f54483i != 0 || C.get().contains(this) || D.get().contains(this)) {
            if (this.f54484j && (arrayList = this.f54356a) != null) {
                Iterator it2 = ((ArrayList) arrayList.clone()).iterator();
                while (it2.hasNext()) {
                    ((a.InterfaceC0259a) it2.next()).a(this);
                }
            }
            I();
        }
    }

    @Override // com.nineoldandroids.animation.a
    public long d() {
        return this.f54487m;
    }

    public void d0(p pVar) {
        n[] nVarArr;
        if (pVar == null || (nVarArr = this.f54493s) == null || nVarArr.length <= 0) {
            return;
        }
        nVarArr[0].q(pVar);
    }

    public void e0(float... fArr) {
        if (fArr == null || fArr.length == 0) {
            return;
        }
        n[] nVarArr = this.f54493s;
        if (nVarArr == null || nVarArr.length == 0) {
            k0(n.i("", fArr));
        } else {
            nVarArr[0].r(fArr);
        }
        this.f54486l = false;
    }

    @Override // com.nineoldandroids.animation.a
    public long f() {
        return this.f54488n;
    }

    @Override // com.nineoldandroids.animation.a
    public boolean g() {
        return this.f54483i == 1 || this.f54484j;
    }

    public void g0(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        n[] nVarArr = this.f54493s;
        if (nVarArr == null || nVarArr.length == 0) {
            k0(n.k("", iArr));
        } else {
            nVarArr[0].s(iArr);
        }
        this.f54486l = false;
    }

    @Override // com.nineoldandroids.animation.a
    public boolean h() {
        return this.f54485k;
    }

    public void h0(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return;
        }
        n[] nVarArr = this.f54493s;
        if (nVarArr == null || nVarArr.length == 0) {
            k0(n.o("", null, objArr));
        } else {
            nVarArr[0].u(objArr);
        }
        this.f54486l = false;
    }

    public void i0(int i2) {
        this.f54489o = i2;
    }

    public void j0(int i2) {
        this.f54490p = i2;
    }

    public void k0(n... nVarArr) {
        int length = nVarArr.length;
        this.f54493s = nVarArr;
        this.f54494t = new HashMap<>(length);
        for (n nVar : nVarArr) {
            this.f54494t.put(nVar.f(), nVar);
        }
        this.f54486l = false;
    }

    @Override // com.nineoldandroids.animation.a
    public void l(Interpolator interpolator) {
        if (interpolator != null) {
            this.f54491q = interpolator;
        } else {
            this.f54491q = new LinearInterpolator();
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void m(long j4) {
        this.f54488n = j4;
    }

    @Override // com.nineoldandroids.animation.a
    public void q() {
        l0(false);
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.f54493s != null) {
            for (int i2 = 0; i2 < this.f54493s.length; i2++) {
                str = str + "\n    " + this.f54493s[i2].toString();
            }
        }
        return str;
    }
}
