package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import java.io.PrintStream;
import java.util.Arrays;
/* loaded from: classes.dex */
public class KeyFrameArray {

    /* loaded from: classes.dex */
    public static class CustomArray {

        /* renamed from: d  reason: collision with root package name */
        private static final int f2153d = 999;

        /* renamed from: a  reason: collision with root package name */
        int[] f2154a = new int[101];

        /* renamed from: b  reason: collision with root package name */
        CustomAttribute[] f2155b = new CustomAttribute[101];

        /* renamed from: c  reason: collision with root package name */
        int f2156c;

        public CustomArray() {
            clear();
        }

        public void append(int i2, CustomAttribute customAttribute) {
            if (this.f2155b[i2] != null) {
                remove(i2);
            }
            this.f2155b[i2] = customAttribute;
            int[] iArr = this.f2154a;
            int i4 = this.f2156c;
            this.f2156c = i4 + 1;
            iArr[i4] = i2;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.f2154a, 999);
            Arrays.fill(this.f2155b, (Object) null);
            this.f2156c = 0;
        }

        public void dump() {
            PrintStream printStream = System.out;
            printStream.println("V: " + Arrays.toString(Arrays.copyOf(this.f2154a, this.f2156c)));
            System.out.print("K: [");
            int i2 = 0;
            while (i2 < this.f2156c) {
                PrintStream printStream2 = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(i2 == 0 ? "" : ", ");
                sb.append(valueAt(i2));
                printStream2.print(sb.toString());
                i2++;
            }
            System.out.println("]");
        }

        public int keyAt(int i2) {
            return this.f2154a[i2];
        }

        public void remove(int i2) {
            this.f2155b[i2] = null;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int i6 = this.f2156c;
                if (i4 < i6) {
                    int[] iArr = this.f2154a;
                    if (i2 == iArr[i4]) {
                        iArr[i4] = 999;
                        i5++;
                    }
                    if (i4 != i5) {
                        iArr[i4] = iArr[i5];
                    }
                    i5++;
                    i4++;
                } else {
                    this.f2156c = i6 - 1;
                    return;
                }
            }
        }

        public int size() {
            return this.f2156c;
        }

        public CustomAttribute valueAt(int i2) {
            return this.f2155b[this.f2154a[i2]];
        }
    }

    /* loaded from: classes.dex */
    public static class CustomVar {

        /* renamed from: d  reason: collision with root package name */
        private static final int f2157d = 999;

        /* renamed from: a  reason: collision with root package name */
        int[] f2158a = new int[101];

        /* renamed from: b  reason: collision with root package name */
        CustomVariable[] f2159b = new CustomVariable[101];

        /* renamed from: c  reason: collision with root package name */
        int f2160c;

        public CustomVar() {
            clear();
        }

        public void append(int i2, CustomVariable customVariable) {
            if (this.f2159b[i2] != null) {
                remove(i2);
            }
            this.f2159b[i2] = customVariable;
            int[] iArr = this.f2158a;
            int i4 = this.f2160c;
            this.f2160c = i4 + 1;
            iArr[i4] = i2;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.f2158a, 999);
            Arrays.fill(this.f2159b, (Object) null);
            this.f2160c = 0;
        }

        public void dump() {
            PrintStream printStream = System.out;
            printStream.println("V: " + Arrays.toString(Arrays.copyOf(this.f2158a, this.f2160c)));
            System.out.print("K: [");
            int i2 = 0;
            while (i2 < this.f2160c) {
                PrintStream printStream2 = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(i2 == 0 ? "" : ", ");
                sb.append(valueAt(i2));
                printStream2.print(sb.toString());
                i2++;
            }
            System.out.println("]");
        }

        public int keyAt(int i2) {
            return this.f2158a[i2];
        }

        public void remove(int i2) {
            this.f2159b[i2] = null;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int i6 = this.f2160c;
                if (i4 < i6) {
                    int[] iArr = this.f2158a;
                    if (i2 == iArr[i4]) {
                        iArr[i4] = 999;
                        i5++;
                    }
                    if (i4 != i5) {
                        iArr[i4] = iArr[i5];
                    }
                    i5++;
                    i4++;
                } else {
                    this.f2160c = i6 - 1;
                    return;
                }
            }
        }

        public int size() {
            return this.f2160c;
        }

        public CustomVariable valueAt(int i2) {
            return this.f2159b[this.f2158a[i2]];
        }
    }

    /* loaded from: classes.dex */
    static class FloatArray {

        /* renamed from: d  reason: collision with root package name */
        private static final int f2161d = 999;

        /* renamed from: a  reason: collision with root package name */
        int[] f2162a = new int[101];

        /* renamed from: b  reason: collision with root package name */
        float[][] f2163b = new float[101];

        /* renamed from: c  reason: collision with root package name */
        int f2164c;

        public FloatArray() {
            clear();
        }

        public void append(int i2, float[] fArr) {
            if (this.f2163b[i2] != null) {
                remove(i2);
            }
            this.f2163b[i2] = fArr;
            int[] iArr = this.f2162a;
            int i4 = this.f2164c;
            this.f2164c = i4 + 1;
            iArr[i4] = i2;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.f2162a, 999);
            Arrays.fill(this.f2163b, (Object) null);
            this.f2164c = 0;
        }

        public void dump() {
            PrintStream printStream = System.out;
            printStream.println("V: " + Arrays.toString(Arrays.copyOf(this.f2162a, this.f2164c)));
            System.out.print("K: [");
            int i2 = 0;
            while (i2 < this.f2164c) {
                PrintStream printStream2 = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(i2 == 0 ? "" : ", ");
                sb.append(Arrays.toString(valueAt(i2)));
                printStream2.print(sb.toString());
                i2++;
            }
            System.out.println("]");
        }

        public int keyAt(int i2) {
            return this.f2162a[i2];
        }

        public void remove(int i2) {
            this.f2163b[i2] = null;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int i6 = this.f2164c;
                if (i4 < i6) {
                    int[] iArr = this.f2162a;
                    if (i2 == iArr[i4]) {
                        iArr[i4] = 999;
                        i5++;
                    }
                    if (i4 != i5) {
                        iArr[i4] = iArr[i5];
                    }
                    i5++;
                    i4++;
                } else {
                    this.f2164c = i6 - 1;
                    return;
                }
            }
        }

        public int size() {
            return this.f2164c;
        }

        public float[] valueAt(int i2) {
            return this.f2163b[this.f2162a[i2]];
        }
    }
}
