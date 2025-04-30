package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.nineoldandroids.animation.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* compiled from: AnimatorSet.java */
/* loaded from: classes4.dex */
public final class d extends com.nineoldandroids.animation.a {

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<com.nineoldandroids.animation.a> f54372b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private HashMap<com.nineoldandroids.animation.a, f> f54373c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<f> f54374d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<f> f54375e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private boolean f54376f = true;

    /* renamed from: g  reason: collision with root package name */
    private b f54377g = null;

    /* renamed from: h  reason: collision with root package name */
    boolean f54378h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54379i = false;

    /* renamed from: j  reason: collision with root package name */
    private long f54380j = 0;

    /* renamed from: k  reason: collision with root package name */
    private q f54381k = null;

    /* renamed from: l  reason: collision with root package name */
    private long f54382l = -1;

    /* compiled from: AnimatorSet.java */
    /* loaded from: classes4.dex */
    class a extends com.nineoldandroids.animation.c {

        /* renamed from: a  reason: collision with root package name */
        boolean f54383a = false;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f54384b;

        a(ArrayList arrayList) {
            this.f54384b = arrayList;
        }

        @Override // com.nineoldandroids.animation.c, com.nineoldandroids.animation.a.InterfaceC0259a
        public void a(com.nineoldandroids.animation.a aVar) {
            this.f54383a = true;
        }

        @Override // com.nineoldandroids.animation.c, com.nineoldandroids.animation.a.InterfaceC0259a
        public void d(com.nineoldandroids.animation.a aVar) {
            if (this.f54383a) {
                return;
            }
            int size = this.f54384b.size();
            for (int i2 = 0; i2 < size; i2++) {
                f fVar = (f) this.f54384b.get(i2);
                fVar.f54397a.q();
                d.this.f54372b.add(fVar.f54397a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatorSet.java */
    /* loaded from: classes4.dex */
    public class b implements a.InterfaceC0259a {

        /* renamed from: a  reason: collision with root package name */
        private d f54386a;

        b(d dVar) {
            this.f54386a = dVar;
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void a(com.nineoldandroids.animation.a aVar) {
            ArrayList<a.InterfaceC0259a> arrayList;
            d dVar = d.this;
            if (dVar.f54378h || dVar.f54372b.size() != 0 || (arrayList = d.this.f54356a) == null) {
                return;
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                d.this.f54356a.get(i2).a(this.f54386a);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void b(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void c(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void d(com.nineoldandroids.animation.a aVar) {
            aVar.j(this);
            d.this.f54372b.remove(aVar);
            boolean z3 = true;
            ((f) this.f54386a.f54373c.get(aVar)).f54402f = true;
            if (d.this.f54378h) {
                return;
            }
            ArrayList arrayList = this.f54386a.f54375e;
            int size = arrayList.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                } else if (!((f) arrayList.get(i2)).f54402f) {
                    z3 = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z3) {
                ArrayList<a.InterfaceC0259a> arrayList2 = d.this.f54356a;
                if (arrayList2 != null) {
                    ArrayList arrayList3 = (ArrayList) arrayList2.clone();
                    int size2 = arrayList3.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        ((a.InterfaceC0259a) arrayList3.get(i4)).d(this.f54386a);
                    }
                }
                this.f54386a.f54379i = false;
            }
        }
    }

    /* compiled from: AnimatorSet.java */
    /* loaded from: classes4.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        private f f54388a;

        c(com.nineoldandroids.animation.a aVar) {
            f fVar = (f) d.this.f54373c.get(aVar);
            this.f54388a = fVar;
            if (fVar == null) {
                this.f54388a = new f(aVar);
                d.this.f54373c.put(aVar, this.f54388a);
                d.this.f54374d.add(this.f54388a);
            }
        }

        public c a(long j4) {
            q U = q.U(0.0f, 1.0f);
            U.k(j4);
            b(U);
            return this;
        }

        public c b(com.nineoldandroids.animation.a aVar) {
            f fVar = (f) d.this.f54373c.get(aVar);
            if (fVar == null) {
                fVar = new f(aVar);
                d.this.f54373c.put(aVar, fVar);
                d.this.f54374d.add(fVar);
            }
            this.f54388a.a(new C0260d(fVar, 1));
            return this;
        }

        public c c(com.nineoldandroids.animation.a aVar) {
            f fVar = (f) d.this.f54373c.get(aVar);
            if (fVar == null) {
                fVar = new f(aVar);
                d.this.f54373c.put(aVar, fVar);
                d.this.f54374d.add(fVar);
            }
            fVar.a(new C0260d(this.f54388a, 1));
            return this;
        }

        public c d(com.nineoldandroids.animation.a aVar) {
            f fVar = (f) d.this.f54373c.get(aVar);
            if (fVar == null) {
                fVar = new f(aVar);
                d.this.f54373c.put(aVar, fVar);
                d.this.f54374d.add(fVar);
            }
            fVar.a(new C0260d(this.f54388a, 0));
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatorSet.java */
    /* renamed from: com.nineoldandroids.animation.d$d  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0260d {

        /* renamed from: c  reason: collision with root package name */
        static final int f54390c = 0;

        /* renamed from: d  reason: collision with root package name */
        static final int f54391d = 1;

        /* renamed from: a  reason: collision with root package name */
        public f f54392a;

        /* renamed from: b  reason: collision with root package name */
        public int f54393b;

        public C0260d(f fVar, int i2) {
            this.f54392a = fVar;
            this.f54393b = i2;
        }
    }

    /* compiled from: AnimatorSet.java */
    /* loaded from: classes4.dex */
    private static class e implements a.InterfaceC0259a {

        /* renamed from: a  reason: collision with root package name */
        private d f54394a;

        /* renamed from: b  reason: collision with root package name */
        private f f54395b;

        /* renamed from: c  reason: collision with root package name */
        private int f54396c;

        public e(d dVar, f fVar, int i2) {
            this.f54394a = dVar;
            this.f54395b = fVar;
            this.f54396c = i2;
        }

        private void e(com.nineoldandroids.animation.a aVar) {
            if (this.f54394a.f54378h) {
                return;
            }
            C0260d c0260d = null;
            int size = this.f54395b.f54399c.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                C0260d c0260d2 = this.f54395b.f54399c.get(i2);
                if (c0260d2.f54393b == this.f54396c && c0260d2.f54392a.f54397a == aVar) {
                    aVar.j(this);
                    c0260d = c0260d2;
                    break;
                }
                i2++;
            }
            this.f54395b.f54399c.remove(c0260d);
            if (this.f54395b.f54399c.size() == 0) {
                this.f54395b.f54397a.q();
                this.f54394a.f54372b.add(this.f54395b.f54397a);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void a(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void b(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void c(com.nineoldandroids.animation.a aVar) {
            if (this.f54396c == 0) {
                e(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void d(com.nineoldandroids.animation.a aVar) {
            if (this.f54396c == 1) {
                e(aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatorSet.java */
    /* loaded from: classes4.dex */
    public static class f implements Cloneable {

        /* renamed from: a  reason: collision with root package name */
        public com.nineoldandroids.animation.a f54397a;

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<C0260d> f54398b = null;

        /* renamed from: c  reason: collision with root package name */
        public ArrayList<C0260d> f54399c = null;

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<f> f54400d = null;

        /* renamed from: e  reason: collision with root package name */
        public ArrayList<f> f54401e = null;

        /* renamed from: f  reason: collision with root package name */
        public boolean f54402f = false;

        public f(com.nineoldandroids.animation.a aVar) {
            this.f54397a = aVar;
        }

        public void a(C0260d c0260d) {
            if (this.f54398b == null) {
                this.f54398b = new ArrayList<>();
                this.f54400d = new ArrayList<>();
            }
            this.f54398b.add(c0260d);
            if (!this.f54400d.contains(c0260d.f54392a)) {
                this.f54400d.add(c0260d.f54392a);
            }
            f fVar = c0260d.f54392a;
            if (fVar.f54401e == null) {
                fVar.f54401e = new ArrayList<>();
            }
            fVar.f54401e.add(this);
        }

        /* renamed from: b */
        public f clone() {
            try {
                f fVar = (f) super.clone();
                fVar.f54397a = this.f54397a.clone();
                return fVar;
            } catch (CloneNotSupportedException unused) {
                throw new AssertionError();
            }
        }
    }

    private void E() {
        if (this.f54376f) {
            this.f54375e.clear();
            ArrayList arrayList = new ArrayList();
            int size = this.f54374d.size();
            for (int i2 = 0; i2 < size; i2++) {
                f fVar = this.f54374d.get(i2);
                ArrayList<C0260d> arrayList2 = fVar.f54398b;
                if (arrayList2 == null || arrayList2.size() == 0) {
                    arrayList.add(fVar);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            while (arrayList.size() > 0) {
                int size2 = arrayList.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    f fVar2 = (f) arrayList.get(i4);
                    this.f54375e.add(fVar2);
                    ArrayList<f> arrayList4 = fVar2.f54401e;
                    if (arrayList4 != null) {
                        int size3 = arrayList4.size();
                        for (int i5 = 0; i5 < size3; i5++) {
                            f fVar3 = fVar2.f54401e.get(i5);
                            fVar3.f54400d.remove(fVar2);
                            if (fVar3.f54400d.size() == 0) {
                                arrayList3.add(fVar3);
                            }
                        }
                    }
                }
                arrayList.clear();
                arrayList.addAll(arrayList3);
                arrayList3.clear();
            }
            this.f54376f = false;
            if (this.f54375e.size() != this.f54374d.size()) {
                throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
            }
            return;
        }
        int size4 = this.f54374d.size();
        for (int i6 = 0; i6 < size4; i6++) {
            f fVar4 = this.f54374d.get(i6);
            ArrayList<C0260d> arrayList5 = fVar4.f54398b;
            if (arrayList5 != null && arrayList5.size() > 0) {
                int size5 = fVar4.f54398b.size();
                for (int i7 = 0; i7 < size5; i7++) {
                    C0260d c0260d = fVar4.f54398b.get(i7);
                    if (fVar4.f54400d == null) {
                        fVar4.f54400d = new ArrayList<>();
                    }
                    if (!fVar4.f54400d.contains(c0260d.f54392a)) {
                        fVar4.f54400d.add(c0260d.f54392a);
                    }
                }
            }
            fVar4.f54402f = false;
        }
    }

    public void A(com.nineoldandroids.animation.a... aVarArr) {
        if (aVarArr != null) {
            this.f54376f = true;
            int i2 = 0;
            if (aVarArr.length == 1) {
                y(aVarArr[0]);
                return;
            }
            while (i2 < aVarArr.length - 1) {
                i2++;
                y(aVarArr[i2]).c(aVarArr[i2]);
            }
        }
    }

    public void B(Collection<com.nineoldandroids.animation.a> collection) {
        if (collection == null || collection.size() <= 0) {
            return;
        }
        this.f54376f = true;
        c cVar = null;
        for (com.nineoldandroids.animation.a aVar : collection) {
            if (cVar == null) {
                cVar = y(aVar);
            } else {
                cVar.d(aVar);
            }
        }
    }

    public void C(com.nineoldandroids.animation.a... aVarArr) {
        if (aVarArr != null) {
            this.f54376f = true;
            c y3 = y(aVarArr[0]);
            for (int i2 = 1; i2 < aVarArr.length; i2++) {
                y3.d(aVarArr[i2]);
            }
        }
    }

    @Override // com.nineoldandroids.animation.a
    /* renamed from: D */
    public d k(long j4) {
        if (j4 >= 0) {
            Iterator<f> it2 = this.f54374d.iterator();
            while (it2.hasNext()) {
                it2.next().f54397a.k(j4);
            }
            this.f54382l = j4;
            return this;
        }
        throw new IllegalArgumentException("duration must be a value of zero or greater");
    }

    @Override // com.nineoldandroids.animation.a
    public void c() {
        this.f54378h = true;
        if (h()) {
            if (this.f54375e.size() != this.f54374d.size()) {
                E();
                Iterator<f> it2 = this.f54375e.iterator();
                while (it2.hasNext()) {
                    f next = it2.next();
                    if (this.f54377g == null) {
                        this.f54377g = new b(this);
                    }
                    next.f54397a.a(this.f54377g);
                }
            }
            q qVar = this.f54381k;
            if (qVar != null) {
                qVar.cancel();
            }
            if (this.f54375e.size() > 0) {
                Iterator<f> it3 = this.f54375e.iterator();
                while (it3.hasNext()) {
                    it3.next().f54397a.c();
                }
            }
            ArrayList<a.InterfaceC0259a> arrayList = this.f54356a;
            if (arrayList != null) {
                Iterator it4 = ((ArrayList) arrayList.clone()).iterator();
                while (it4.hasNext()) {
                    ((a.InterfaceC0259a) it4.next()).d(this);
                }
            }
            this.f54379i = false;
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void cancel() {
        this.f54378h = true;
        if (h()) {
            ArrayList arrayList = null;
            ArrayList<a.InterfaceC0259a> arrayList2 = this.f54356a;
            if (arrayList2 != null) {
                arrayList = (ArrayList) arrayList2.clone();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((a.InterfaceC0259a) it2.next()).a(this);
                }
            }
            q qVar = this.f54381k;
            if (qVar != null && qVar.g()) {
                this.f54381k.cancel();
            } else if (this.f54375e.size() > 0) {
                Iterator<f> it3 = this.f54375e.iterator();
                while (it3.hasNext()) {
                    it3.next().f54397a.cancel();
                }
            }
            if (arrayList != null) {
                Iterator it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    ((a.InterfaceC0259a) it4.next()).d(this);
                }
            }
            this.f54379i = false;
        }
    }

    @Override // com.nineoldandroids.animation.a
    public long d() {
        return this.f54382l;
    }

    @Override // com.nineoldandroids.animation.a
    public long f() {
        return this.f54380j;
    }

    @Override // com.nineoldandroids.animation.a
    public boolean g() {
        Iterator<f> it2 = this.f54374d.iterator();
        while (it2.hasNext()) {
            if (it2.next().f54397a.g()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.nineoldandroids.animation.a
    public boolean h() {
        return this.f54379i;
    }

    @Override // com.nineoldandroids.animation.a
    public void l(Interpolator interpolator) {
        Iterator<f> it2 = this.f54374d.iterator();
        while (it2.hasNext()) {
            it2.next().f54397a.l(interpolator);
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void m(long j4) {
        this.f54380j = j4;
    }

    @Override // com.nineoldandroids.animation.a
    public void n(Object obj) {
        Iterator<f> it2 = this.f54374d.iterator();
        while (it2.hasNext()) {
            com.nineoldandroids.animation.a aVar = it2.next().f54397a;
            if (aVar instanceof d) {
                ((d) aVar).n(obj);
            } else if (aVar instanceof l) {
                ((l) aVar).n(obj);
            }
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void o() {
        Iterator<f> it2 = this.f54374d.iterator();
        while (it2.hasNext()) {
            it2.next().f54397a.o();
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void p() {
        Iterator<f> it2 = this.f54374d.iterator();
        while (it2.hasNext()) {
            it2.next().f54397a.p();
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void q() {
        this.f54378h = false;
        this.f54379i = true;
        E();
        int size = this.f54375e.size();
        for (int i2 = 0; i2 < size; i2++) {
            f fVar = this.f54375e.get(i2);
            ArrayList<a.InterfaceC0259a> e4 = fVar.f54397a.e();
            if (e4 != null && e4.size() > 0) {
                Iterator it2 = new ArrayList(e4).iterator();
                while (it2.hasNext()) {
                    a.InterfaceC0259a interfaceC0259a = (a.InterfaceC0259a) it2.next();
                    if ((interfaceC0259a instanceof e) || (interfaceC0259a instanceof b)) {
                        fVar.f54397a.j(interfaceC0259a);
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < size; i4++) {
            f fVar2 = this.f54375e.get(i4);
            if (this.f54377g == null) {
                this.f54377g = new b(this);
            }
            ArrayList<C0260d> arrayList2 = fVar2.f54398b;
            if (arrayList2 != null && arrayList2.size() != 0) {
                int size2 = fVar2.f54398b.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    C0260d c0260d = fVar2.f54398b.get(i5);
                    c0260d.f54392a.f54397a.a(new e(this, fVar2, c0260d.f54393b));
                }
                fVar2.f54399c = (ArrayList) fVar2.f54398b.clone();
            } else {
                arrayList.add(fVar2);
            }
            fVar2.f54397a.a(this.f54377g);
        }
        if (this.f54380j <= 0) {
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                f fVar3 = (f) it3.next();
                fVar3.f54397a.q();
                this.f54372b.add(fVar3.f54397a);
            }
        } else {
            q U = q.U(0.0f, 1.0f);
            this.f54381k = U;
            U.k(this.f54380j);
            this.f54381k.a(new a(arrayList));
            this.f54381k.q();
        }
        ArrayList<a.InterfaceC0259a> arrayList3 = this.f54356a;
        if (arrayList3 != null) {
            ArrayList arrayList4 = (ArrayList) arrayList3.clone();
            int size3 = arrayList4.size();
            for (int i6 = 0; i6 < size3; i6++) {
                ((a.InterfaceC0259a) arrayList4.get(i6)).c(this);
            }
        }
        if (this.f54374d.size() == 0 && this.f54380j == 0) {
            this.f54379i = false;
            ArrayList<a.InterfaceC0259a> arrayList5 = this.f54356a;
            if (arrayList5 != null) {
                ArrayList arrayList6 = (ArrayList) arrayList5.clone();
                int size4 = arrayList6.size();
                for (int i7 = 0; i7 < size4; i7++) {
                    ((a.InterfaceC0259a) arrayList6.get(i7)).d(this);
                }
            }
        }
    }

    @Override // com.nineoldandroids.animation.a
    /* renamed from: w */
    public d clone() {
        d dVar = (d) super.clone();
        dVar.f54376f = true;
        dVar.f54378h = false;
        dVar.f54379i = false;
        dVar.f54372b = new ArrayList<>();
        dVar.f54373c = new HashMap<>();
        dVar.f54374d = new ArrayList<>();
        dVar.f54375e = new ArrayList<>();
        HashMap hashMap = new HashMap();
        Iterator<f> it2 = this.f54374d.iterator();
        while (it2.hasNext()) {
            f next = it2.next();
            f clone = next.clone();
            hashMap.put(next, clone);
            dVar.f54374d.add(clone);
            dVar.f54373c.put(clone.f54397a, clone);
            ArrayList arrayList = null;
            clone.f54398b = null;
            clone.f54399c = null;
            clone.f54401e = null;
            clone.f54400d = null;
            ArrayList<a.InterfaceC0259a> e4 = clone.f54397a.e();
            if (e4 != null) {
                Iterator<a.InterfaceC0259a> it3 = e4.iterator();
                while (it3.hasNext()) {
                    a.InterfaceC0259a next2 = it3.next();
                    if (next2 instanceof b) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(next2);
                    }
                }
                if (arrayList != null) {
                    Iterator it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        e4.remove((a.InterfaceC0259a) it4.next());
                    }
                }
            }
        }
        Iterator<f> it5 = this.f54374d.iterator();
        while (it5.hasNext()) {
            f next3 = it5.next();
            f fVar = (f) hashMap.get(next3);
            ArrayList<C0260d> arrayList2 = next3.f54398b;
            if (arrayList2 != null) {
                Iterator<C0260d> it6 = arrayList2.iterator();
                while (it6.hasNext()) {
                    C0260d next4 = it6.next();
                    fVar.a(new C0260d((f) hashMap.get(next4.f54392a), next4.f54393b));
                }
            }
        }
        return dVar;
    }

    public ArrayList<com.nineoldandroids.animation.a> x() {
        ArrayList<com.nineoldandroids.animation.a> arrayList = new ArrayList<>();
        Iterator<f> it2 = this.f54374d.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().f54397a);
        }
        return arrayList;
    }

    public c y(com.nineoldandroids.animation.a aVar) {
        if (aVar != null) {
            this.f54376f = true;
            return new c(aVar);
        }
        return null;
    }

    public void z(List<com.nineoldandroids.animation.a> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f54376f = true;
        int i2 = 0;
        if (list.size() == 1) {
            y(list.get(0));
            return;
        }
        while (i2 < list.size() - 1) {
            i2++;
            y(list.get(i2)).c(list.get(i2));
        }
    }
}
