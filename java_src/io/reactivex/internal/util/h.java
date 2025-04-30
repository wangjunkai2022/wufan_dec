package io.reactivex.internal.util;

import java.util.ArrayList;
/* compiled from: LinkedArrayList.java */
/* loaded from: classes5.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    final int f70095a;

    /* renamed from: b  reason: collision with root package name */
    Object[] f70096b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f70097c;

    /* renamed from: d  reason: collision with root package name */
    volatile int f70098d;

    /* renamed from: e  reason: collision with root package name */
    int f70099e;

    public h(int i2) {
        this.f70095a = i2;
    }

    public void a(Object obj) {
        if (this.f70098d == 0) {
            Object[] objArr = new Object[this.f70095a + 1];
            this.f70096b = objArr;
            this.f70097c = objArr;
            objArr[0] = obj;
            this.f70099e = 1;
            this.f70098d = 1;
            return;
        }
        int i2 = this.f70099e;
        int i4 = this.f70095a;
        if (i2 == i4) {
            Object[] objArr2 = new Object[i4 + 1];
            objArr2[0] = obj;
            this.f70097c[i4] = objArr2;
            this.f70097c = objArr2;
            this.f70099e = 1;
            this.f70098d++;
            return;
        }
        this.f70097c[i2] = obj;
        this.f70099e = i2 + 1;
        this.f70098d++;
    }

    public Object[] b() {
        return this.f70096b;
    }

    public int c() {
        return this.f70098d;
    }

    public String toString() {
        int i2 = this.f70095a;
        int i4 = this.f70098d;
        ArrayList arrayList = new ArrayList(i4 + 1);
        Object[] b4 = b();
        int i5 = 0;
        while (true) {
            int i6 = 0;
            while (i5 < i4) {
                arrayList.add(b4[i6]);
                i5++;
                i6++;
                if (i6 == i2) {
                    break;
                }
            }
            return arrayList.toString();
            b4 = b4[i2];
        }
    }
}
