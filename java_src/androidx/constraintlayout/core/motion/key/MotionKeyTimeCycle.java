package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MotionKeyTimeCycle extends MotionKey {
    public static final int KEY_TYPE = 3;

    /* renamed from: u  reason: collision with root package name */
    static final String f2016u = "KeyTimeCycle";

    /* renamed from: v  reason: collision with root package name */
    private static final String f2017v = "KeyTimeCycle";

    /* renamed from: c  reason: collision with root package name */
    private String f2018c;

    /* renamed from: d  reason: collision with root package name */
    private int f2019d = -1;

    /* renamed from: e  reason: collision with root package name */
    private float f2020e = Float.NaN;

    /* renamed from: f  reason: collision with root package name */
    private float f2021f = Float.NaN;

    /* renamed from: g  reason: collision with root package name */
    private float f2022g = Float.NaN;

    /* renamed from: h  reason: collision with root package name */
    private float f2023h = Float.NaN;

    /* renamed from: i  reason: collision with root package name */
    private float f2024i = Float.NaN;

    /* renamed from: j  reason: collision with root package name */
    private float f2025j = Float.NaN;

    /* renamed from: k  reason: collision with root package name */
    private float f2026k = Float.NaN;

    /* renamed from: l  reason: collision with root package name */
    private float f2027l = Float.NaN;

    /* renamed from: m  reason: collision with root package name */
    private float f2028m = Float.NaN;

    /* renamed from: n  reason: collision with root package name */
    private float f2029n = Float.NaN;

    /* renamed from: o  reason: collision with root package name */
    private float f2030o = Float.NaN;

    /* renamed from: p  reason: collision with root package name */
    private float f2031p = Float.NaN;

    /* renamed from: q  reason: collision with root package name */
    private int f2032q = 0;

    /* renamed from: r  reason: collision with root package name */
    private String f2033r = null;

    /* renamed from: s  reason: collision with root package name */
    private float f2034s = Float.NaN;

    /* renamed from: t  reason: collision with root package name */
    private float f2035t = 0.0f;

    public MotionKeyTimeCycle() {
        this.mType = 3;
        this.mCustom = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0089, code lost:
        if (r1.equals("scaleX") == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addTimeValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet> r11) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle.addTimeValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> hashMap) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f2020e)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f2021f)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f2022g)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.f2023h)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f2024i)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f2026k)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f2027l)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f2025j)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.f2028m)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f2029n)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f2030o)) {
            hashSet.add("translationZ");
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it2 = this.mCustom.keySet().iterator();
            while (it2.hasNext()) {
                hashSet.add("CUSTOM," + it2.next());
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return c.a(str);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, int i4) {
        if (i2 == 100) {
            this.mFramePosition = i4;
            return true;
        } else if (i2 != 421) {
            return super.setValue(i2, i4);
        } else {
            this.f2032q = i4;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo2clone() {
        return new MotionKeyTimeCycle().copy((MotionKey) this);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKeyTimeCycle copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyTimeCycle motionKeyTimeCycle = (MotionKeyTimeCycle) motionKey;
        this.f2018c = motionKeyTimeCycle.f2018c;
        this.f2019d = motionKeyTimeCycle.f2019d;
        this.f2032q = motionKeyTimeCycle.f2032q;
        this.f2034s = motionKeyTimeCycle.f2034s;
        this.f2035t = motionKeyTimeCycle.f2035t;
        this.f2031p = motionKeyTimeCycle.f2031p;
        this.f2020e = motionKeyTimeCycle.f2020e;
        this.f2021f = motionKeyTimeCycle.f2021f;
        this.f2022g = motionKeyTimeCycle.f2022g;
        this.f2025j = motionKeyTimeCycle.f2025j;
        this.f2023h = motionKeyTimeCycle.f2023h;
        this.f2024i = motionKeyTimeCycle.f2024i;
        this.f2026k = motionKeyTimeCycle.f2026k;
        this.f2027l = motionKeyTimeCycle.f2027l;
        this.f2028m = motionKeyTimeCycle.f2028m;
        this.f2029n = motionKeyTimeCycle.f2029n;
        this.f2030o = motionKeyTimeCycle.f2030o;
        return this;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, float f4) {
        if (i2 == 315) {
            this.f2031p = c(Float.valueOf(f4));
            return true;
        } else if (i2 == 401) {
            this.f2019d = d(Float.valueOf(f4));
            return true;
        } else if (i2 == 403) {
            this.f2020e = f4;
            return true;
        } else if (i2 == 416) {
            this.f2025j = c(Float.valueOf(f4));
            return true;
        } else if (i2 == 423) {
            this.f2034s = c(Float.valueOf(f4));
            return true;
        } else if (i2 != 424) {
            switch (i2) {
                case 304:
                    this.f2028m = c(Float.valueOf(f4));
                    return true;
                case 305:
                    this.f2029n = c(Float.valueOf(f4));
                    return true;
                case 306:
                    this.f2030o = c(Float.valueOf(f4));
                    return true;
                case 307:
                    this.f2021f = c(Float.valueOf(f4));
                    return true;
                case 308:
                    this.f2023h = c(Float.valueOf(f4));
                    return true;
                case 309:
                    this.f2024i = c(Float.valueOf(f4));
                    return true;
                case 310:
                    this.f2022g = c(Float.valueOf(f4));
                    return true;
                case 311:
                    this.f2026k = c(Float.valueOf(f4));
                    return true;
                case 312:
                    this.f2027l = c(Float.valueOf(f4));
                    return true;
                default:
                    return super.setValue(i2, f4);
            }
        } else {
            this.f2035t = c(Float.valueOf(f4));
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, String str) {
        if (i2 == 420) {
            this.f2018c = str;
            return true;
        } else if (i2 != 421) {
            return super.setValue(i2, str);
        } else {
            this.f2032q = 7;
            this.f2033r = str;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, boolean z3) {
        return super.setValue(i2, z3);
    }
}
