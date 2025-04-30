package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.nineoldandroids.animation.j;
import java.util.ArrayList;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KeyframeSet.java */
/* loaded from: classes4.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    int f54418a;

    /* renamed from: b  reason: collision with root package name */
    j f54419b;

    /* renamed from: c  reason: collision with root package name */
    j f54420c;

    /* renamed from: d  reason: collision with root package name */
    Interpolator f54421d;

    /* renamed from: e  reason: collision with root package name */
    ArrayList<j> f54422e;

    /* renamed from: f  reason: collision with root package name */
    p f54423f;

    public k(j... jVarArr) {
        this.f54418a = jVarArr.length;
        ArrayList<j> arrayList = new ArrayList<>();
        this.f54422e = arrayList;
        arrayList.addAll(Arrays.asList(jVarArr));
        this.f54419b = this.f54422e.get(0);
        j jVar = this.f54422e.get(this.f54418a - 1);
        this.f54420c = jVar;
        this.f54421d = jVar.c();
    }

    public static k c(float... fArr) {
        int length = fArr.length;
        j.a[] aVarArr = new j.a[Math.max(length, 2)];
        if (length == 1) {
            aVarArr[0] = (j.a) j.f(0.0f);
            aVarArr[1] = (j.a) j.g(1.0f, fArr[0]);
        } else {
            aVarArr[0] = (j.a) j.g(0.0f, fArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                aVarArr[i2] = (j.a) j.g(i2 / (length - 1), fArr[i2]);
            }
        }
        return new g(aVarArr);
    }

    public static k d(int... iArr) {
        int length = iArr.length;
        j.b[] bVarArr = new j.b[Math.max(length, 2)];
        if (length == 1) {
            bVarArr[0] = (j.b) j.h(0.0f);
            bVarArr[1] = (j.b) j.i(1.0f, iArr[0]);
        } else {
            bVarArr[0] = (j.b) j.i(0.0f, iArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                bVarArr[i2] = (j.b) j.i(i2 / (length - 1), iArr[i2]);
            }
        }
        return new i(bVarArr);
    }

    public static k e(j... jVarArr) {
        int length = jVarArr.length;
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        for (int i4 = 0; i4 < length; i4++) {
            if (jVarArr[i4] instanceof j.a) {
                z3 = true;
            } else if (jVarArr[i4] instanceof j.b) {
                z4 = true;
            } else {
                z5 = true;
            }
        }
        if (z3 && !z4 && !z5) {
            j.a[] aVarArr = new j.a[length];
            while (i2 < length) {
                aVarArr[i2] = (j.a) jVarArr[i2];
                i2++;
            }
            return new g(aVarArr);
        } else if (z4 && !z3 && !z5) {
            j.b[] bVarArr = new j.b[length];
            while (i2 < length) {
                bVarArr[i2] = (j.b) jVarArr[i2];
                i2++;
            }
            return new i(bVarArr);
        } else {
            return new k(jVarArr);
        }
    }

    public static k f(Object... objArr) {
        int length = objArr.length;
        j.c[] cVarArr = new j.c[Math.max(length, 2)];
        if (length == 1) {
            cVarArr[0] = (j.c) j.j(0.0f);
            cVarArr[1] = (j.c) j.k(1.0f, objArr[0]);
        } else {
            cVarArr[0] = (j.c) j.k(0.0f, objArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                cVarArr[i2] = (j.c) j.k(i2 / (length - 1), objArr[i2]);
            }
        }
        return new k(cVarArr);
    }

    @Override // 
    /* renamed from: a */
    public k clone() {
        ArrayList<j> arrayList = this.f54422e;
        int size = arrayList.size();
        j[] jVarArr = new j[size];
        for (int i2 = 0; i2 < size; i2++) {
            jVarArr[i2] = arrayList.get(i2).clone();
        }
        return new k(jVarArr);
    }

    public Object b(float f4) {
        int i2 = this.f54418a;
        if (i2 == 2) {
            Interpolator interpolator = this.f54421d;
            if (interpolator != null) {
                f4 = interpolator.getInterpolation(f4);
            }
            return this.f54423f.evaluate(f4, this.f54419b.d(), this.f54420c.d());
        }
        int i4 = 1;
        if (f4 <= 0.0f) {
            j jVar = this.f54422e.get(1);
            Interpolator c4 = jVar.c();
            if (c4 != null) {
                f4 = c4.getInterpolation(f4);
            }
            float b4 = this.f54419b.b();
            return this.f54423f.evaluate((f4 - b4) / (jVar.b() - b4), this.f54419b.d(), jVar.d());
        } else if (f4 >= 1.0f) {
            j jVar2 = this.f54422e.get(i2 - 2);
            Interpolator c5 = this.f54420c.c();
            if (c5 != null) {
                f4 = c5.getInterpolation(f4);
            }
            float b5 = jVar2.b();
            return this.f54423f.evaluate((f4 - b5) / (this.f54420c.b() - b5), jVar2.d(), this.f54420c.d());
        } else {
            j jVar3 = this.f54419b;
            while (i4 < this.f54418a) {
                j jVar4 = this.f54422e.get(i4);
                if (f4 < jVar4.b()) {
                    Interpolator c6 = jVar4.c();
                    if (c6 != null) {
                        f4 = c6.getInterpolation(f4);
                    }
                    float b6 = jVar3.b();
                    return this.f54423f.evaluate((f4 - b6) / (jVar4.b() - b6), jVar3.d(), jVar4.d());
                }
                i4++;
                jVar3 = jVar4;
            }
            return this.f54420c.d();
        }
    }

    public void g(p pVar) {
        this.f54423f = pVar;
    }

    public String toString() {
        String str = " ";
        for (int i2 = 0; i2 < this.f54418a; i2++) {
            str = str + this.f54422e.get(i2).d() + "  ";
        }
        return str;
    }
}
