package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.a;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MotionKeyAttributes extends MotionKey {
    public static final int KEY_TYPE = 1;

    /* renamed from: t  reason: collision with root package name */
    static final String f1970t = "KeyAttribute";

    /* renamed from: u  reason: collision with root package name */
    private static final String f1971u = "KeyAttributes";

    /* renamed from: v  reason: collision with root package name */
    private static final boolean f1972v = false;

    /* renamed from: c  reason: collision with root package name */
    private String f1973c;

    /* renamed from: d  reason: collision with root package name */
    private int f1974d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f1975e = 0;

    /* renamed from: f  reason: collision with root package name */
    private float f1976f = Float.NaN;

    /* renamed from: g  reason: collision with root package name */
    private float f1977g = Float.NaN;

    /* renamed from: h  reason: collision with root package name */
    private float f1978h = Float.NaN;

    /* renamed from: i  reason: collision with root package name */
    private float f1979i = Float.NaN;

    /* renamed from: j  reason: collision with root package name */
    private float f1980j = Float.NaN;

    /* renamed from: k  reason: collision with root package name */
    private float f1981k = Float.NaN;

    /* renamed from: l  reason: collision with root package name */
    private float f1982l = Float.NaN;

    /* renamed from: m  reason: collision with root package name */
    private float f1983m = Float.NaN;

    /* renamed from: n  reason: collision with root package name */
    private float f1984n = Float.NaN;

    /* renamed from: o  reason: collision with root package name */
    private float f1985o = Float.NaN;

    /* renamed from: p  reason: collision with root package name */
    private float f1986p = Float.NaN;

    /* renamed from: q  reason: collision with root package name */
    private float f1987q = Float.NaN;

    /* renamed from: r  reason: collision with root package name */
    private float f1988r = Float.NaN;

    /* renamed from: s  reason: collision with root package name */
    private float f1989s = Float.NaN;

    public MotionKeyAttributes() {
        this.mType = 1;
        this.mCustom = new HashMap<>();
    }

    private float e(int i2) {
        if (i2 != 100) {
            switch (i2) {
                case 303:
                    return this.f1976f;
                case 304:
                    return this.f1986p;
                case 305:
                    return this.f1987q;
                case 306:
                    return this.f1988r;
                case 307:
                    return this.f1977g;
                case 308:
                    return this.f1979i;
                case 309:
                    return this.f1980j;
                case 310:
                    return this.f1978h;
                case 311:
                    return this.f1984n;
                case 312:
                    return this.f1985o;
                case 313:
                    return this.f1981k;
                case 314:
                    return this.f1982l;
                case 315:
                    return this.f1989s;
                case TypedValues.AttributesType.TYPE_PATH_ROTATE /* 316 */:
                    return this.f1983m;
                default:
                    return Float.NaN;
            }
        }
        return this.mFramePosition;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009a, code lost:
        if (r1.equals("pivotX") == false) goto L12;
     */
    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.core.motion.utils.SplineSet> r7) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.key.MotionKeyAttributes.addValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo2clone() {
        return null;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f1976f)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1977g)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1978h)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.f1979i)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1980j)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1981k)) {
            hashSet.add("pivotX");
        }
        if (!Float.isNaN(this.f1982l)) {
            hashSet.add("pivotY");
        }
        if (!Float.isNaN(this.f1986p)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1987q)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1988r)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f1983m)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.f1984n)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1985o)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1989s)) {
            hashSet.add("progress");
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it2 = this.mCustom.keySet().iterator();
            while (it2.hasNext()) {
                hashSet.add("CUSTOM," + it2.next());
            }
        }
    }

    public int getCurveFit() {
        return this.f1974d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return a.a(str);
    }

    public void printAttributes() {
        HashSet<String> hashSet = new HashSet<>();
        getAttributeNames(hashSet);
        PrintStream printStream = System.out;
        printStream.println(" ------------- " + this.mFramePosition + " -------------");
        String[] strArr = (String[]) hashSet.toArray(new String[0]);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            int a4 = a.a(strArr[i2]);
            PrintStream printStream2 = System.out;
            printStream2.println(strArr[i2] + ":" + e(a4));
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void setInterpolation(HashMap<String, Integer> hashMap) {
        if (!Float.isNaN(this.f1976f)) {
            hashMap.put("alpha", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1977g)) {
            hashMap.put("elevation", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1978h)) {
            hashMap.put("rotationZ", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1979i)) {
            hashMap.put("rotationX", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1980j)) {
            hashMap.put("rotationY", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1981k)) {
            hashMap.put("pivotX", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1982l)) {
            hashMap.put("pivotY", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1986p)) {
            hashMap.put("translationX", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1987q)) {
            hashMap.put("translationY", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1988r)) {
            hashMap.put("translationZ", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1983m)) {
            hashMap.put("pathRotate", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1984n)) {
            hashMap.put("scaleX", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1985o)) {
            hashMap.put("scaleY", Integer.valueOf(this.f1974d));
        }
        if (!Float.isNaN(this.f1989s)) {
            hashMap.put("progress", Integer.valueOf(this.f1974d));
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it2 = this.mCustom.keySet().iterator();
            while (it2.hasNext()) {
                hashMap.put("CUSTOM," + it2.next(), Integer.valueOf(this.f1974d));
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, int i4) {
        if (i2 == 100) {
            this.mFramePosition = i4;
            return true;
        } else if (i2 == 301) {
            this.f1974d = i4;
            return true;
        } else if (i2 != 302) {
            if (setValue(i2, i4)) {
                return true;
            }
            return super.setValue(i2, i4);
        } else {
            this.f1975e = i4;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, float f4) {
        if (i2 != 100) {
            switch (i2) {
                case 303:
                    this.f1976f = f4;
                    return true;
                case 304:
                    this.f1986p = f4;
                    return true;
                case 305:
                    this.f1987q = f4;
                    return true;
                case 306:
                    this.f1988r = f4;
                    return true;
                case 307:
                    this.f1977g = f4;
                    return true;
                case 308:
                    this.f1979i = f4;
                    return true;
                case 309:
                    this.f1980j = f4;
                    return true;
                case 310:
                    this.f1978h = f4;
                    return true;
                case 311:
                    this.f1984n = f4;
                    return true;
                case 312:
                    this.f1985o = f4;
                    return true;
                case 313:
                    this.f1981k = f4;
                    return true;
                case 314:
                    this.f1982l = f4;
                    return true;
                case 315:
                    this.f1989s = f4;
                    return true;
                case TypedValues.AttributesType.TYPE_PATH_ROTATE /* 316 */:
                    this.f1983m = f4;
                    return true;
                default:
                    return super.setValue(i2, f4);
            }
        }
        this.f1983m = f4;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, String str) {
        if (i2 == 101) {
            this.f1969b = str;
            return true;
        } else if (i2 != 317) {
            return super.setValue(i2, str);
        } else {
            this.f1973c = str;
            return true;
        }
    }
}
