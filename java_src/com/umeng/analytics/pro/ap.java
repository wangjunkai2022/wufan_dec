package com.umeng.analytics.pro;
/* compiled from: ShortStack.java */
/* loaded from: classes4.dex */
public class ap {

    /* renamed from: a  reason: collision with root package name */
    private short[] f60491a;

    /* renamed from: b  reason: collision with root package name */
    private int f60492b = -1;

    public ap(int i2) {
        this.f60491a = new short[i2];
    }

    private void d() {
        short[] sArr = this.f60491a;
        short[] sArr2 = new short[sArr.length * 2];
        System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        this.f60491a = sArr2;
    }

    public short a() {
        short[] sArr = this.f60491a;
        int i2 = this.f60492b;
        this.f60492b = i2 - 1;
        return sArr[i2];
    }

    public short b() {
        return this.f60491a[this.f60492b];
    }

    public void c() {
        this.f60492b = -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<ShortStack vector:[");
        for (int i2 = 0; i2 < this.f60491a.length; i2++) {
            if (i2 != 0) {
                sb.append(" ");
            }
            if (i2 == this.f60492b) {
                sb.append(">>");
            }
            sb.append((int) this.f60491a[i2]);
            if (i2 == this.f60492b) {
                sb.append("<<");
            }
        }
        sb.append("]>");
        return sb.toString();
    }

    public void a(short s3) {
        if (this.f60491a.length == this.f60492b + 1) {
            d();
        }
        short[] sArr = this.f60491a;
        int i2 = this.f60492b + 1;
        this.f60492b = i2;
        sArr[i2] = s3;
    }
}
