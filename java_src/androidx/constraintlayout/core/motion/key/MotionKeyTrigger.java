package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
/* loaded from: classes.dex */
public class MotionKeyTrigger extends MotionKey {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final int TYPE_CROSS = 312;
    public static final int TYPE_NEGATIVE_CROSS = 310;
    public static final int TYPE_POSITIVE_CROSS = 309;
    public static final int TYPE_POST_LAYOUT = 304;
    public static final int TYPE_TRIGGER_COLLISION_ID = 307;
    public static final int TYPE_TRIGGER_COLLISION_VIEW = 306;
    public static final int TYPE_TRIGGER_ID = 308;
    public static final int TYPE_TRIGGER_RECEIVER = 311;
    public static final int TYPE_TRIGGER_SLACK = 305;
    public static final int TYPE_VIEW_TRANSITION_ON_CROSS = 301;
    public static final int TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS = 303;
    public static final int TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS = 302;
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";

    /* renamed from: v  reason: collision with root package name */
    private static final String f2036v = "KeyTrigger";

    /* renamed from: c  reason: collision with root package name */
    private int f2037c = -1;

    /* renamed from: d  reason: collision with root package name */
    private String f2038d = null;

    /* renamed from: e  reason: collision with root package name */
    private int f2039e;

    /* renamed from: f  reason: collision with root package name */
    private String f2040f;

    /* renamed from: g  reason: collision with root package name */
    private String f2041g;

    /* renamed from: h  reason: collision with root package name */
    private int f2042h;

    /* renamed from: i  reason: collision with root package name */
    private int f2043i;

    /* renamed from: j  reason: collision with root package name */
    float f2044j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f2045k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f2046l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f2047m;

    /* renamed from: n  reason: collision with root package name */
    private float f2048n;

    /* renamed from: o  reason: collision with root package name */
    private float f2049o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f2050p;

    /* renamed from: q  reason: collision with root package name */
    int f2051q;

    /* renamed from: r  reason: collision with root package name */
    int f2052r;

    /* renamed from: s  reason: collision with root package name */
    int f2053s;

    /* renamed from: t  reason: collision with root package name */
    FloatRect f2054t;

    /* renamed from: u  reason: collision with root package name */
    FloatRect f2055u;

    public MotionKeyTrigger() {
        int i2 = MotionKey.UNSET;
        this.f2039e = i2;
        this.f2040f = null;
        this.f2041g = null;
        this.f2042h = i2;
        this.f2043i = i2;
        this.f2044j = 0.1f;
        this.f2045k = true;
        this.f2046l = true;
        this.f2047m = true;
        this.f2048n = Float.NaN;
        this.f2050p = false;
        this.f2051q = i2;
        this.f2052r = i2;
        this.f2053s = i2;
        this.f2054t = new FloatRect();
        this.f2055u = new FloatRect();
        this.mType = 5;
        this.mCustom = new HashMap<>();
    }

    private void e(String str, MotionWidget motionWidget) {
        boolean z3 = str.length() == 1;
        if (!z3) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustom.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z3 || lowerCase.matches(str)) {
                CustomVariable customVariable = this.mCustom.get(str2);
                if (customVariable != null) {
                    customVariable.applyToWidget(motionWidget);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> hashMap) {
    }

    public void conditionallyFire(float f4, MotionWidget motionWidget) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        char c4;
        str.hashCode();
        switch (str.hashCode()) {
            case -1594793529:
                if (str.equals("positiveCross")) {
                    c4 = 0;
                    break;
                }
                c4 = 65535;
                break;
            case -966421266:
                if (str.equals("viewTransitionOnPositiveCross")) {
                    c4 = 1;
                    break;
                }
                c4 = 65535;
                break;
            case -786670827:
                if (str.equals("triggerCollisionId")) {
                    c4 = 2;
                    break;
                }
                c4 = 65535;
                break;
            case -648752941:
                if (str.equals("triggerID")) {
                    c4 = 3;
                    break;
                }
                c4 = 65535;
                break;
            case -638126837:
                if (str.equals("negativeCross")) {
                    c4 = 4;
                    break;
                }
                c4 = 65535;
                break;
            case -76025313:
                if (str.equals("triggerCollisionView")) {
                    c4 = 5;
                    break;
                }
                c4 = 65535;
                break;
            case -9754574:
                if (str.equals("viewTransitionOnNegativeCross")) {
                    c4 = 6;
                    break;
                }
                c4 = 65535;
                break;
            case 364489912:
                if (str.equals("triggerSlack")) {
                    c4 = 7;
                    break;
                }
                c4 = 65535;
                break;
            case 1301930599:
                if (str.equals("viewTransitionOnCross")) {
                    c4 = '\b';
                    break;
                }
                c4 = 65535;
                break;
            case 1401391082:
                if (str.equals("postLayout")) {
                    c4 = '\t';
                    break;
                }
                c4 = 65535;
                break;
            case 1535404999:
                if (str.equals("triggerReceiver")) {
                    c4 = '\n';
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
                return 309;
            case 1:
                return 302;
            case 2:
                return 307;
            case 3:
                return 308;
            case 4:
                return 310;
            case 5:
                return 306;
            case 6:
                return 303;
            case 7:
                return 305;
            case '\b':
                return 301;
            case '\t':
                return 304;
            case '\n':
                return 311;
            default:
                return -1;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, int i4) {
        if (i2 == 307) {
            this.f2043i = i4;
            return true;
        } else if (i2 == 308) {
            this.f2042h = d(Integer.valueOf(i4));
            return true;
        } else if (i2 != 311) {
            switch (i2) {
                case 301:
                    this.f2053s = i4;
                    return true;
                case 302:
                    this.f2052r = i4;
                    return true;
                case 303:
                    this.f2051q = i4;
                    return true;
                default:
                    return super.setValue(i2, i4);
            }
        } else {
            this.f2039e = i4;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo2clone() {
        return new MotionKeyTrigger().copy((MotionKey) this);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKeyTrigger copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyTrigger motionKeyTrigger = (MotionKeyTrigger) motionKey;
        this.f2037c = motionKeyTrigger.f2037c;
        this.f2038d = motionKeyTrigger.f2038d;
        this.f2039e = motionKeyTrigger.f2039e;
        this.f2040f = motionKeyTrigger.f2040f;
        this.f2041g = motionKeyTrigger.f2041g;
        this.f2042h = motionKeyTrigger.f2042h;
        this.f2043i = motionKeyTrigger.f2043i;
        this.f2044j = motionKeyTrigger.f2044j;
        this.f2045k = motionKeyTrigger.f2045k;
        this.f2046l = motionKeyTrigger.f2046l;
        this.f2047m = motionKeyTrigger.f2047m;
        this.f2048n = motionKeyTrigger.f2048n;
        this.f2049o = motionKeyTrigger.f2049o;
        this.f2050p = motionKeyTrigger.f2050p;
        this.f2054t = motionKeyTrigger.f2054t;
        this.f2055u = motionKeyTrigger.f2055u;
        return this;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, float f4) {
        if (i2 != 305) {
            return super.setValue(i2, f4);
        }
        this.f2044j = f4;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, String str) {
        if (i2 == 309) {
            this.f2041g = str;
            return true;
        } else if (i2 == 310) {
            this.f2040f = str;
            return true;
        } else if (i2 != 312) {
            return super.setValue(i2, str);
        } else {
            this.f2038d = str;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, boolean z3) {
        if (i2 != 304) {
            return super.setValue(i2, z3);
        }
        this.f2050p = z3;
        return true;
    }
}
