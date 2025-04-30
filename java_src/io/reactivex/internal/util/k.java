package io.reactivex.internal.util;
/* compiled from: OpenHashSet.java */
/* loaded from: classes5.dex */
public final class k<T> {

    /* renamed from: f  reason: collision with root package name */
    private static final int f70101f = -1640531527;

    /* renamed from: a  reason: collision with root package name */
    final float f70102a;

    /* renamed from: b  reason: collision with root package name */
    int f70103b;

    /* renamed from: c  reason: collision with root package name */
    int f70104c;

    /* renamed from: d  reason: collision with root package name */
    int f70105d;

    /* renamed from: e  reason: collision with root package name */
    T[] f70106e;

    public k() {
        this(16, 0.75f);
    }

    static int c(int i2) {
        int i4 = i2 * f70101f;
        return i4 ^ (i4 >>> 16);
    }

    public boolean a(T t3) {
        T t4;
        T[] tArr = this.f70106e;
        int i2 = this.f70103b;
        int c4 = c(t3.hashCode()) & i2;
        T t5 = tArr[c4];
        if (t5 != null) {
            if (t5.equals(t3)) {
                return false;
            }
            do {
                c4 = (c4 + 1) & i2;
                t4 = tArr[c4];
                if (t4 == null) {
                }
            } while (!t4.equals(t3));
            return false;
        }
        tArr[c4] = t3;
        int i4 = this.f70104c + 1;
        this.f70104c = i4;
        if (i4 >= this.f70105d) {
            d();
        }
        return true;
    }

    public Object[] b() {
        return this.f70106e;
    }

    void d() {
        T[] tArr = this.f70106e;
        int length = tArr.length;
        int i2 = length << 1;
        int i4 = i2 - 1;
        T[] tArr2 = (T[]) new Object[i2];
        int i5 = this.f70104c;
        while (true) {
            int i6 = i5 - 1;
            if (i5 != 0) {
                do {
                    length--;
                } while (tArr[length] == null);
                int c4 = c(tArr[length].hashCode()) & i4;
                if (tArr2[c4] != null) {
                    do {
                        c4 = (c4 + 1) & i4;
                    } while (tArr2[c4] != null);
                }
                tArr2[c4] = tArr[length];
                i5 = i6;
            } else {
                this.f70103b = i4;
                this.f70105d = (int) (i2 * this.f70102a);
                this.f70106e = tArr2;
                return;
            }
        }
    }

    public boolean e(T t3) {
        T t4;
        T[] tArr = this.f70106e;
        int i2 = this.f70103b;
        int c4 = c(t3.hashCode()) & i2;
        T t5 = tArr[c4];
        if (t5 == null) {
            return false;
        }
        if (t5.equals(t3)) {
            return f(c4, tArr, i2);
        }
        do {
            c4 = (c4 + 1) & i2;
            t4 = tArr[c4];
            if (t4 == null) {
                return false;
            }
        } while (!t4.equals(t3));
        return f(c4, tArr, i2);
    }

    boolean f(int i2, T[] tArr, int i4) {
        int i5;
        T t3;
        this.f70104c--;
        while (true) {
            int i6 = i2 + 1;
            while (true) {
                i5 = i6 & i4;
                t3 = tArr[i5];
                if (t3 == null) {
                    tArr[i2] = null;
                    return true;
                }
                int c4 = c(t3.hashCode()) & i4;
                if (i2 > i5) {
                    if (i2 >= c4 && c4 > i5) {
                        break;
                    }
                    i6 = i5 + 1;
                } else if (i2 < c4 && c4 <= i5) {
                    i6 = i5 + 1;
                }
            }
            tArr[i2] = t3;
            i2 = i5;
        }
    }

    public int g() {
        return this.f70104c;
    }

    public k(int i2) {
        this(i2, 0.75f);
    }

    public k(int i2, float f4) {
        this.f70102a = f4;
        int b4 = l.b(i2);
        this.f70103b = b4 - 1;
        this.f70105d = (int) (f4 * b4);
        this.f70106e = (T[]) new Object[b4];
    }
}
