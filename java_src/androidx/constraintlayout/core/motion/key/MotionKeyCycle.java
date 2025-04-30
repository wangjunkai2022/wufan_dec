package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.constraintlayout.core.motion.utils.a;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MotionKeyCycle extends MotionKey {
    public static final int KEY_TYPE = 4;
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_PHASE = "wavePhase";
    public static final String WAVE_SHAPE = "waveShape";

    /* renamed from: v  reason: collision with root package name */
    private static final String f1990v = "KeyCycle";

    /* renamed from: w  reason: collision with root package name */
    static final String f1991w = "KeyCycle";

    /* renamed from: c  reason: collision with root package name */
    private String f1992c = null;

    /* renamed from: d  reason: collision with root package name */
    private int f1993d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f1994e = -1;

    /* renamed from: f  reason: collision with root package name */
    private String f1995f = null;

    /* renamed from: g  reason: collision with root package name */
    private float f1996g = Float.NaN;

    /* renamed from: h  reason: collision with root package name */
    private float f1997h = 0.0f;

    /* renamed from: i  reason: collision with root package name */
    private float f1998i = 0.0f;

    /* renamed from: j  reason: collision with root package name */
    private float f1999j = Float.NaN;

    /* renamed from: k  reason: collision with root package name */
    private float f2000k = Float.NaN;

    /* renamed from: l  reason: collision with root package name */
    private float f2001l = Float.NaN;

    /* renamed from: m  reason: collision with root package name */
    private float f2002m = Float.NaN;

    /* renamed from: n  reason: collision with root package name */
    private float f2003n = Float.NaN;

    /* renamed from: o  reason: collision with root package name */
    private float f2004o = Float.NaN;

    /* renamed from: p  reason: collision with root package name */
    private float f2005p = Float.NaN;

    /* renamed from: q  reason: collision with root package name */
    private float f2006q = Float.NaN;

    /* renamed from: r  reason: collision with root package name */
    private float f2007r = Float.NaN;

    /* renamed from: s  reason: collision with root package name */
    private float f2008s = Float.NaN;

    /* renamed from: t  reason: collision with root package name */
    private float f2009t = Float.NaN;

    /* renamed from: u  reason: collision with root package name */
    private float f2010u = Float.NaN;

    public MotionKeyCycle() {
        this.mType = 4;
        this.mCustom = new HashMap<>();
    }

    public void addCycleValues(HashMap<String, KeyCycleOscillator> hashMap) {
        KeyCycleOscillator keyCycleOscillator;
        KeyCycleOscillator keyCycleOscillator2;
        for (String str : hashMap.keySet()) {
            if (str.startsWith("CUSTOM")) {
                CustomVariable customVariable = this.mCustom.get(str.substring(7));
                if (customVariable != null && customVariable.getType() == 901 && (keyCycleOscillator = hashMap.get(str)) != null) {
                    keyCycleOscillator.setPoint(this.mFramePosition, this.f1994e, this.f1995f, -1, this.f1996g, this.f1997h, this.f1998i, customVariable.getValueToInterpolate(), customVariable);
                }
            } else {
                float value = getValue(str);
                if (!Float.isNaN(value) && (keyCycleOscillator2 = hashMap.get(str)) != null) {
                    keyCycleOscillator2.setPoint(this.mFramePosition, this.f1994e, this.f1995f, -1, this.f1996g, this.f1997h, this.f1998i, value);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> hashMap) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo2clone() {
        return null;
    }

    public void dump() {
        PrintStream printStream = System.out;
        printStream.println("MotionKeyCycle{mWaveShape=" + this.f1994e + ", mWavePeriod=" + this.f1996g + ", mWaveOffset=" + this.f1997h + ", mWavePhase=" + this.f1998i + ", mRotation=" + this.f2002m + '}');
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f2000k)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f2001l)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f2002m)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.f2004o)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f2005p)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f2006q)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f2007r)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f2003n)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.f2008s)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f2009t)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f2010u)) {
            hashSet.add("translationZ");
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it2 = this.mCustom.keySet().iterator();
            while (it2.hasNext()) {
                hashSet.add("CUSTOM," + it2.next());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        char c4;
        str.hashCode();
        switch (str.hashCode()) {
            case -1581616630:
                if (str.equals(TypedValues.CycleType.S_CUSTOM_WAVE_SHAPE)) {
                    c4 = 0;
                    break;
                }
                c4 = 65535;
                break;
            case -1310311125:
                if (str.equals("easing")) {
                    c4 = 1;
                    break;
                }
                c4 = 65535;
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    c4 = 2;
                    break;
                }
                c4 = 65535;
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c4 = 3;
                    break;
                }
                c4 = 65535;
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    c4 = 4;
                    break;
                }
                c4 = 65535;
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c4 = 5;
                    break;
                }
                c4 = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c4 = 6;
                    break;
                }
                c4 = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c4 = 7;
                    break;
                }
                c4 = 65535;
                break;
            case -1019779949:
                if (str.equals("offset")) {
                    c4 = '\b';
                    break;
                }
                c4 = 65535;
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c4 = '\t';
                    break;
                }
                c4 = 65535;
                break;
            case -991726143:
                if (str.equals("period")) {
                    c4 = '\n';
                    break;
                }
                c4 = 65535;
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    c4 = 11;
                    break;
                }
                c4 = 65535;
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    c4 = '\f';
                    break;
                }
                c4 = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c4 = '\r';
                    break;
                }
                c4 = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c4 = 14;
                    break;
                }
                c4 = 65535;
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c4 = 15;
                    break;
                }
                c4 = 65535;
                break;
            case 106629499:
                if (str.equals(TypedValues.CycleType.S_WAVE_PHASE)) {
                    c4 = 16;
                    break;
                }
                c4 = 65535;
                break;
            case 579057826:
                if (str.equals("curveFit")) {
                    c4 = 17;
                    break;
                }
                c4 = 65535;
                break;
            case 803192288:
                if (str.equals("pathRotate")) {
                    c4 = 18;
                    break;
                }
                c4 = 65535;
                break;
            case 1532805160:
                if (str.equals("waveShape")) {
                    c4 = 19;
                    break;
                }
                c4 = 65535;
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    c4 = 20;
                    break;
                }
                c4 = 65535;
                break;
            default:
                c4 = 65535;
                break;
        }
        switch (c4) {
            case 0:
                return TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE;
            case 1:
                return TypedValues.CycleType.TYPE_EASING;
            case 2:
                return 308;
            case 3:
                return 309;
            case 4:
                return 310;
            case 5:
                return 304;
            case 6:
                return 305;
            case 7:
                return 306;
            case '\b':
                return TypedValues.CycleType.TYPE_WAVE_OFFSET;
            case '\t':
                return 315;
            case '\n':
                return TypedValues.CycleType.TYPE_WAVE_PERIOD;
            case 11:
                return 313;
            case '\f':
                return 314;
            case '\r':
                return 311;
            case 14:
                return 312;
            case 15:
                return 403;
            case 16:
                return TypedValues.CycleType.TYPE_WAVE_PHASE;
            case 17:
                return 401;
            case 18:
                return 416;
            case 19:
                return TypedValues.CycleType.TYPE_WAVE_SHAPE;
            case 20:
                return 402;
            default:
                return -1;
        }
    }

    public float getValue(String str) {
        str.hashCode();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c4 = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c4 = 1;
                    break;
                }
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    c4 = 2;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c4 = 3;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c4 = 4;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c4 = 5;
                    break;
                }
                break;
            case -1019779949:
                if (str.equals("offset")) {
                    c4 = 6;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c4 = 7;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c4 = '\b';
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c4 = '\t';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c4 = '\n';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c4 = 11;
                    break;
                }
                break;
            case 106629499:
                if (str.equals(TypedValues.CycleType.S_WAVE_PHASE)) {
                    c4 = '\f';
                    break;
                }
                break;
            case 803192288:
                if (str.equals("pathRotate")) {
                    c4 = '\r';
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                return this.f2004o;
            case 1:
                return this.f2005p;
            case 2:
                return this.f2002m;
            case 3:
                return this.f2008s;
            case 4:
                return this.f2009t;
            case 5:
                return this.f2010u;
            case 6:
                return this.f1997h;
            case 7:
                return this.f1999j;
            case '\b':
                return this.f2006q;
            case '\t':
                return this.f2007r;
            case '\n':
                return this.f2001l;
            case 11:
                return this.f2000k;
            case '\f':
                return this.f1998i;
            case '\r':
                return this.f2003n;
            default:
                return Float.NaN;
        }
    }

    public void printAttributes() {
        HashSet<String> hashSet = new HashSet<>();
        getAttributeNames(hashSet);
        Utils.log(" ------------- " + this.mFramePosition + " -------------");
        Utils.log("MotionKeyCycle{Shape=" + this.f1994e + ", Period=" + this.f1996g + ", Offset=" + this.f1997h + ", Phase=" + this.f1998i + '}');
        String[] strArr = (String[]) hashSet.toArray(new String[0]);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            a.a(strArr[i2]);
            Utils.log(strArr[i2] + ":" + getValue(strArr[i2]));
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, int i4) {
        if (i2 == 401) {
            this.f1993d = i4;
            return true;
        } else if (i2 != 421) {
            if (setValue(i2, i4)) {
                return true;
            }
            return super.setValue(i2, i4);
        } else {
            this.f1994e = i4;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, String str) {
        if (i2 == 420) {
            this.f1992c = str;
            return true;
        } else if (i2 != 422) {
            return super.setValue(i2, str);
        } else {
            this.f1995f = str;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, float f4) {
        if (i2 == 315) {
            this.f1999j = f4;
            return true;
        } else if (i2 == 403) {
            this.f2000k = f4;
            return true;
        } else if (i2 != 416) {
            switch (i2) {
                case 304:
                    this.f2008s = f4;
                    return true;
                case 305:
                    this.f2009t = f4;
                    return true;
                case 306:
                    this.f2010u = f4;
                    return true;
                case 307:
                    this.f2001l = f4;
                    return true;
                case 308:
                    this.f2004o = f4;
                    return true;
                case 309:
                    this.f2005p = f4;
                    return true;
                case 310:
                    this.f2002m = f4;
                    return true;
                case 311:
                    this.f2006q = f4;
                    return true;
                case 312:
                    this.f2007r = f4;
                    return true;
                default:
                    switch (i2) {
                        case TypedValues.CycleType.TYPE_WAVE_PERIOD /* 423 */:
                            this.f1996g = f4;
                            return true;
                        case TypedValues.CycleType.TYPE_WAVE_OFFSET /* 424 */:
                            this.f1997h = f4;
                            return true;
                        case TypedValues.CycleType.TYPE_WAVE_PHASE /* 425 */:
                            this.f1998i = f4;
                            return true;
                        default:
                            return super.setValue(i2, f4);
                    }
            }
        } else {
            this.f2003n = f4;
            return true;
        }
    }
}
