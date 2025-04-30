package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
/* loaded from: classes.dex */
public class TypedBundle {

    /* renamed from: m  reason: collision with root package name */
    private static final int f2258m = 4;

    /* renamed from: n  reason: collision with root package name */
    private static final int f2259n = 10;

    /* renamed from: o  reason: collision with root package name */
    private static final int f2260o = 10;

    /* renamed from: p  reason: collision with root package name */
    private static final int f2261p = 5;

    /* renamed from: a  reason: collision with root package name */
    int[] f2262a = new int[10];

    /* renamed from: b  reason: collision with root package name */
    int[] f2263b = new int[10];

    /* renamed from: c  reason: collision with root package name */
    int f2264c = 0;

    /* renamed from: d  reason: collision with root package name */
    int[] f2265d = new int[10];

    /* renamed from: e  reason: collision with root package name */
    float[] f2266e = new float[10];

    /* renamed from: f  reason: collision with root package name */
    int f2267f = 0;

    /* renamed from: g  reason: collision with root package name */
    int[] f2268g = new int[5];

    /* renamed from: h  reason: collision with root package name */
    String[] f2269h = new String[5];

    /* renamed from: i  reason: collision with root package name */
    int f2270i = 0;

    /* renamed from: j  reason: collision with root package name */
    int[] f2271j = new int[4];

    /* renamed from: k  reason: collision with root package name */
    boolean[] f2272k = new boolean[4];

    /* renamed from: l  reason: collision with root package name */
    int f2273l = 0;

    public void add(int i2, int i4) {
        int i5 = this.f2264c;
        int[] iArr = this.f2262a;
        if (i5 >= iArr.length) {
            this.f2262a = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.f2263b;
            this.f2263b = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f2262a;
        int i6 = this.f2264c;
        iArr3[i6] = i2;
        int[] iArr4 = this.f2263b;
        this.f2264c = i6 + 1;
        iArr4[i6] = i4;
    }

    public void addIfNotNull(int i2, String str) {
        if (str != null) {
            add(i2, str);
        }
    }

    public void applyDelta(TypedValues typedValues) {
        for (int i2 = 0; i2 < this.f2264c; i2++) {
            typedValues.setValue(this.f2262a[i2], this.f2263b[i2]);
        }
        for (int i4 = 0; i4 < this.f2267f; i4++) {
            typedValues.setValue(this.f2265d[i4], this.f2266e[i4]);
        }
        for (int i5 = 0; i5 < this.f2270i; i5++) {
            typedValues.setValue(this.f2268g[i5], this.f2269h[i5]);
        }
        for (int i6 = 0; i6 < this.f2273l; i6++) {
            typedValues.setValue(this.f2271j[i6], this.f2272k[i6]);
        }
    }

    public void clear() {
        this.f2273l = 0;
        this.f2270i = 0;
        this.f2267f = 0;
        this.f2264c = 0;
    }

    public int getInteger(int i2) {
        for (int i4 = 0; i4 < this.f2264c; i4++) {
            if (this.f2262a[i4] == i2) {
                return this.f2263b[i4];
            }
        }
        return -1;
    }

    public void add(int i2, float f4) {
        int i4 = this.f2267f;
        int[] iArr = this.f2265d;
        if (i4 >= iArr.length) {
            this.f2265d = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f2266e;
            this.f2266e = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f2265d;
        int i5 = this.f2267f;
        iArr2[i5] = i2;
        float[] fArr2 = this.f2266e;
        this.f2267f = i5 + 1;
        fArr2[i5] = f4;
    }

    public void applyDelta(TypedBundle typedBundle) {
        for (int i2 = 0; i2 < this.f2264c; i2++) {
            typedBundle.add(this.f2262a[i2], this.f2263b[i2]);
        }
        for (int i4 = 0; i4 < this.f2267f; i4++) {
            typedBundle.add(this.f2265d[i4], this.f2266e[i4]);
        }
        for (int i5 = 0; i5 < this.f2270i; i5++) {
            typedBundle.add(this.f2268g[i5], this.f2269h[i5]);
        }
        for (int i6 = 0; i6 < this.f2273l; i6++) {
            typedBundle.add(this.f2271j[i6], this.f2272k[i6]);
        }
    }

    public void add(int i2, String str) {
        int i4 = this.f2270i;
        int[] iArr = this.f2268g;
        if (i4 >= iArr.length) {
            this.f2268g = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f2269h;
            this.f2269h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.f2268g;
        int i5 = this.f2270i;
        iArr2[i5] = i2;
        String[] strArr2 = this.f2269h;
        this.f2270i = i5 + 1;
        strArr2[i5] = str;
    }

    public void add(int i2, boolean z3) {
        int i4 = this.f2273l;
        int[] iArr = this.f2271j;
        if (i4 >= iArr.length) {
            this.f2271j = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.f2272k;
            this.f2272k = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.f2271j;
        int i5 = this.f2273l;
        iArr2[i5] = i2;
        boolean[] zArr2 = this.f2272k;
        this.f2273l = i5 + 1;
        zArr2[i5] = z3;
    }
}
