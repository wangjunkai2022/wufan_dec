package org.jboss.netty.channel;

import java.util.ArrayList;
/* compiled from: AdaptiveReceiveBufferSizePredictor.java */
/* loaded from: classes5.dex */
public class c implements j0 {

    /* renamed from: f  reason: collision with root package name */
    static final int f73424f = 64;

    /* renamed from: g  reason: collision with root package name */
    static final int f73425g = 1024;

    /* renamed from: h  reason: collision with root package name */
    static final int f73426h = 65536;

    /* renamed from: i  reason: collision with root package name */
    private static final int f73427i = 4;

    /* renamed from: j  reason: collision with root package name */
    private static final int f73428j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f73429k;

    /* renamed from: a  reason: collision with root package name */
    private final int f73430a;

    /* renamed from: b  reason: collision with root package name */
    private final int f73431b;

    /* renamed from: c  reason: collision with root package name */
    private int f73432c;

    /* renamed from: d  reason: collision with root package name */
    private int f73433d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f73434e;

    static {
        int i2;
        ArrayList arrayList = new ArrayList();
        for (int i4 = 1; i4 <= 8; i4++) {
            arrayList.add(Integer.valueOf(i4));
        }
        int i5 = 4;
        while (true) {
            i2 = 0;
            if (i5 >= 32) {
                break;
            }
            long j4 = 1 << i5;
            long j5 = j4 >>> 4;
            long j6 = j4 - (j5 << 3);
            while (i2 < 8) {
                j6 += j5;
                if (j6 > 2147483647L) {
                    arrayList.add(Integer.MAX_VALUE);
                } else {
                    arrayList.add(Integer.valueOf((int) j6));
                }
                i2++;
            }
            i5++;
        }
        f73429k = new int[arrayList.size()];
        while (true) {
            int[] iArr = f73429k;
            if (i2 >= iArr.length) {
                return;
            }
            iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            i2++;
        }
    }

    public c() {
        this(64, 1024, 65536);
    }

    private static int c(int i2) {
        if (i2 <= 16) {
            return i2 - 1;
        }
        int i4 = 0;
        int i5 = i2;
        do {
            i5 >>>= 1;
            i4++;
        } while (i5 != 0);
        int i6 = i4 << 3;
        int i7 = i6 - 25;
        for (int i8 = i6 - 18; i8 >= i7; i8--) {
            if (i2 >= f73429k[i8]) {
                return i8;
            }
        }
        throw new Error("shouldn't reach here; please file a bug report.");
    }

    @Override // org.jboss.netty.channel.j0
    public int a() {
        return this.f73433d;
    }

    @Override // org.jboss.netty.channel.j0
    public void b(int i2) {
        int[] iArr = f73429k;
        if (i2 <= iArr[Math.max(0, (this.f73432c - 1) - 1)]) {
            if (this.f73434e) {
                int max = Math.max(this.f73432c - 1, this.f73430a);
                this.f73432c = max;
                this.f73433d = iArr[max];
                this.f73434e = false;
                return;
            }
            this.f73434e = true;
        } else if (i2 >= this.f73433d) {
            int min = Math.min(this.f73432c + 4, this.f73431b);
            this.f73432c = min;
            this.f73433d = iArr[min];
            this.f73434e = false;
        }
    }

    public c(int i2, int i4, int i5) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("minimum: " + i2);
        } else if (i4 < i2) {
            throw new IllegalArgumentException("initial: " + i4);
        } else if (i5 >= i4) {
            int c4 = c(i2);
            int[] iArr = f73429k;
            if (iArr[c4] < i2) {
                this.f73430a = c4 + 1;
            } else {
                this.f73430a = c4;
            }
            int c5 = c(i5);
            if (iArr[c5] > i5) {
                this.f73431b = c5 - 1;
            } else {
                this.f73431b = c5;
            }
            int c6 = c(i4);
            this.f73432c = c6;
            this.f73433d = iArr[c6];
        } else {
            throw new IllegalArgumentException("maximum: " + i5);
        }
    }
}
