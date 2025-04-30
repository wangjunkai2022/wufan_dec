package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class KeyCycle extends Key {
    static final String A = "KeyCycle";
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

    /* renamed from: z  reason: collision with root package name */
    private static final String f2763z = "KeyCycle";

    /* renamed from: f  reason: collision with root package name */
    private String f2764f = null;

    /* renamed from: g  reason: collision with root package name */
    private int f2765g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f2766h = -1;

    /* renamed from: i  reason: collision with root package name */
    private String f2767i = null;

    /* renamed from: j  reason: collision with root package name */
    private float f2768j = Float.NaN;

    /* renamed from: k  reason: collision with root package name */
    private float f2769k = 0.0f;

    /* renamed from: l  reason: collision with root package name */
    private float f2770l = 0.0f;

    /* renamed from: m  reason: collision with root package name */
    private float f2771m = Float.NaN;

    /* renamed from: n  reason: collision with root package name */
    private int f2772n = -1;

    /* renamed from: o  reason: collision with root package name */
    private float f2773o = Float.NaN;

    /* renamed from: p  reason: collision with root package name */
    private float f2774p = Float.NaN;

    /* renamed from: q  reason: collision with root package name */
    private float f2775q = Float.NaN;

    /* renamed from: r  reason: collision with root package name */
    private float f2776r = Float.NaN;

    /* renamed from: s  reason: collision with root package name */
    private float f2777s = Float.NaN;

    /* renamed from: t  reason: collision with root package name */
    private float f2778t = Float.NaN;

    /* renamed from: u  reason: collision with root package name */
    private float f2779u = Float.NaN;

    /* renamed from: v  reason: collision with root package name */
    private float f2780v = Float.NaN;

    /* renamed from: w  reason: collision with root package name */
    private float f2781w = Float.NaN;

    /* renamed from: x  reason: collision with root package name */
    private float f2782x = Float.NaN;

    /* renamed from: y  reason: collision with root package name */
    private float f2783y = Float.NaN;

    /* loaded from: classes.dex */
    private static class Loader {

        /* renamed from: a  reason: collision with root package name */
        private static final int f2784a = 1;

        /* renamed from: b  reason: collision with root package name */
        private static final int f2785b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final int f2786c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final int f2787d = 4;

        /* renamed from: e  reason: collision with root package name */
        private static final int f2788e = 5;

        /* renamed from: f  reason: collision with root package name */
        private static final int f2789f = 6;

        /* renamed from: g  reason: collision with root package name */
        private static final int f2790g = 7;

        /* renamed from: h  reason: collision with root package name */
        private static final int f2791h = 8;

        /* renamed from: i  reason: collision with root package name */
        private static final int f2792i = 9;

        /* renamed from: j  reason: collision with root package name */
        private static final int f2793j = 10;

        /* renamed from: k  reason: collision with root package name */
        private static final int f2794k = 11;

        /* renamed from: l  reason: collision with root package name */
        private static final int f2795l = 12;

        /* renamed from: m  reason: collision with root package name */
        private static final int f2796m = 13;

        /* renamed from: n  reason: collision with root package name */
        private static final int f2797n = 14;

        /* renamed from: o  reason: collision with root package name */
        private static final int f2798o = 15;

        /* renamed from: p  reason: collision with root package name */
        private static final int f2799p = 16;

        /* renamed from: q  reason: collision with root package name */
        private static final int f2800q = 17;

        /* renamed from: r  reason: collision with root package name */
        private static final int f2801r = 18;

        /* renamed from: s  reason: collision with root package name */
        private static final int f2802s = 19;

        /* renamed from: t  reason: collision with root package name */
        private static final int f2803t = 20;

        /* renamed from: u  reason: collision with root package name */
        private static final int f2804u = 21;

        /* renamed from: v  reason: collision with root package name */
        private static SparseIntArray f2805v;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2805v = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyCycle_motionTarget, 1);
            f2805v.append(R.styleable.KeyCycle_framePosition, 2);
            f2805v.append(R.styleable.KeyCycle_transitionEasing, 3);
            f2805v.append(R.styleable.KeyCycle_curveFit, 4);
            f2805v.append(R.styleable.KeyCycle_waveShape, 5);
            f2805v.append(R.styleable.KeyCycle_wavePeriod, 6);
            f2805v.append(R.styleable.KeyCycle_waveOffset, 7);
            f2805v.append(R.styleable.KeyCycle_waveVariesBy, 8);
            f2805v.append(R.styleable.KeyCycle_android_alpha, 9);
            f2805v.append(R.styleable.KeyCycle_android_elevation, 10);
            f2805v.append(R.styleable.KeyCycle_android_rotation, 11);
            f2805v.append(R.styleable.KeyCycle_android_rotationX, 12);
            f2805v.append(R.styleable.KeyCycle_android_rotationY, 13);
            f2805v.append(R.styleable.KeyCycle_transitionPathRotate, 14);
            f2805v.append(R.styleable.KeyCycle_android_scaleX, 15);
            f2805v.append(R.styleable.KeyCycle_android_scaleY, 16);
            f2805v.append(R.styleable.KeyCycle_android_translationX, 17);
            f2805v.append(R.styleable.KeyCycle_android_translationY, 18);
            f2805v.append(R.styleable.KeyCycle_android_translationZ, 19);
            f2805v.append(R.styleable.KeyCycle_motionProgress, 20);
            f2805v.append(R.styleable.KeyCycle_wavePhase, 21);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(KeyCycle c4, TypedArray a4) {
            int indexCount = a4.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = a4.getIndex(i2);
                switch (f2805v.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = a4.getResourceId(index, c4.f2720b);
                            c4.f2720b = resourceId;
                            if (resourceId == -1) {
                                c4.f2721c = a4.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (a4.peekValue(index).type == 3) {
                            c4.f2721c = a4.getString(index);
                            break;
                        } else {
                            c4.f2720b = a4.getResourceId(index, c4.f2720b);
                            break;
                        }
                    case 2:
                        c4.f2719a = a4.getInt(index, c4.f2719a);
                        break;
                    case 3:
                        c4.f2764f = a4.getString(index);
                        break;
                    case 4:
                        c4.f2765g = a4.getInteger(index, c4.f2765g);
                        break;
                    case 5:
                        if (a4.peekValue(index).type == 3) {
                            c4.f2767i = a4.getString(index);
                            c4.f2766h = 7;
                            break;
                        } else {
                            c4.f2766h = a4.getInt(index, c4.f2766h);
                            break;
                        }
                    case 6:
                        c4.f2768j = a4.getFloat(index, c4.f2768j);
                        break;
                    case 7:
                        if (a4.peekValue(index).type == 5) {
                            c4.f2769k = a4.getDimension(index, c4.f2769k);
                            break;
                        } else {
                            c4.f2769k = a4.getFloat(index, c4.f2769k);
                            break;
                        }
                    case 8:
                        c4.f2772n = a4.getInt(index, c4.f2772n);
                        break;
                    case 9:
                        c4.f2773o = a4.getFloat(index, c4.f2773o);
                        break;
                    case 10:
                        c4.f2774p = a4.getDimension(index, c4.f2774p);
                        break;
                    case 11:
                        c4.f2775q = a4.getFloat(index, c4.f2775q);
                        break;
                    case 12:
                        c4.f2777s = a4.getFloat(index, c4.f2777s);
                        break;
                    case 13:
                        c4.f2778t = a4.getFloat(index, c4.f2778t);
                        break;
                    case 14:
                        c4.f2776r = a4.getFloat(index, c4.f2776r);
                        break;
                    case 15:
                        c4.f2779u = a4.getFloat(index, c4.f2779u);
                        break;
                    case 16:
                        c4.f2780v = a4.getFloat(index, c4.f2780v);
                        break;
                    case 17:
                        c4.f2781w = a4.getDimension(index, c4.f2781w);
                        break;
                    case 18:
                        c4.f2782x = a4.getDimension(index, c4.f2782x);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            c4.f2783y = a4.getDimension(index, c4.f2783y);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        c4.f2771m = a4.getFloat(index, c4.f2771m);
                        break;
                    case 21:
                        c4.f2770l = a4.getFloat(index, c4.f2770l) / 360.0f;
                        break;
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append("unused attribute 0x");
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(f2805v.get(index));
                        break;
                }
            }
        }
    }

    public KeyCycle() {
        this.f2722d = 4;
        this.f2723e = new HashMap<>();
    }

    public void addCycleValues(HashMap<String, ViewOscillator> oscSet) {
        ViewOscillator viewOscillator;
        ViewOscillator viewOscillator2;
        for (String str : oscSet.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = this.f2723e.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.getType() == ConstraintAttribute.AttributeType.FLOAT_TYPE && (viewOscillator = oscSet.get(str)) != null) {
                    viewOscillator.setPoint(this.f2719a, this.f2766h, this.f2767i, this.f2772n, this.f2768j, this.f2769k, this.f2770l, constraintAttribute.getValueToInterpolate(), constraintAttribute);
                }
            } else {
                float value = getValue(str);
                if (!Float.isNaN(value) && (viewOscillator2 = oscSet.get(str)) != null) {
                    viewOscillator2.setPoint(this.f2719a, this.f2766h, this.f2767i, this.f2772n, this.f2768j, this.f2769k, this.f2770l, value);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
        Debug.logStack(TypedValues.CycleType.NAME, "add " + splines.size() + " values", 2);
        for (String str : splines.keySet()) {
            ViewSpline viewSpline = splines.get(str);
            if (viewSpline != null) {
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
                    case -1225497657:
                        if (str.equals("translationX")) {
                            c4 = 2;
                            break;
                        }
                        break;
                    case -1225497656:
                        if (str.equals("translationY")) {
                            c4 = 3;
                            break;
                        }
                        break;
                    case -1225497655:
                        if (str.equals("translationZ")) {
                            c4 = 4;
                            break;
                        }
                        break;
                    case -1001078227:
                        if (str.equals("progress")) {
                            c4 = 5;
                            break;
                        }
                        break;
                    case -908189618:
                        if (str.equals("scaleX")) {
                            c4 = 6;
                            break;
                        }
                        break;
                    case -908189617:
                        if (str.equals("scaleY")) {
                            c4 = 7;
                            break;
                        }
                        break;
                    case -40300674:
                        if (str.equals(Key.ROTATION)) {
                            c4 = '\b';
                            break;
                        }
                        break;
                    case -4379043:
                        if (str.equals("elevation")) {
                            c4 = '\t';
                            break;
                        }
                        break;
                    case 37232917:
                        if (str.equals("transitionPathRotate")) {
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
                    case 156108012:
                        if (str.equals("waveOffset")) {
                            c4 = '\f';
                            break;
                        }
                        break;
                    case 1530034690:
                        if (str.equals("wavePhase")) {
                            c4 = '\r';
                            break;
                        }
                        break;
                }
                switch (c4) {
                    case 0:
                        viewSpline.setPoint(this.f2719a, this.f2777s);
                        continue;
                    case 1:
                        viewSpline.setPoint(this.f2719a, this.f2778t);
                        continue;
                    case 2:
                        viewSpline.setPoint(this.f2719a, this.f2781w);
                        continue;
                    case 3:
                        viewSpline.setPoint(this.f2719a, this.f2782x);
                        continue;
                    case 4:
                        viewSpline.setPoint(this.f2719a, this.f2783y);
                        continue;
                    case 5:
                        viewSpline.setPoint(this.f2719a, this.f2771m);
                        continue;
                    case 6:
                        viewSpline.setPoint(this.f2719a, this.f2779u);
                        continue;
                    case 7:
                        viewSpline.setPoint(this.f2719a, this.f2780v);
                        continue;
                    case '\b':
                        viewSpline.setPoint(this.f2719a, this.f2775q);
                        continue;
                    case '\t':
                        viewSpline.setPoint(this.f2719a, this.f2774p);
                        continue;
                    case '\n':
                        viewSpline.setPoint(this.f2719a, this.f2776r);
                        continue;
                    case 11:
                        viewSpline.setPoint(this.f2719a, this.f2773o);
                        continue;
                    case '\f':
                        viewSpline.setPoint(this.f2719a, this.f2769k);
                        continue;
                    case '\r':
                        viewSpline.setPoint(this.f2719a, this.f2770l);
                        continue;
                    default:
                        if (!str.startsWith("CUSTOM")) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("  UNKNOWN  ");
                            sb.append(str);
                            break;
                        } else {
                            continue;
                        }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyCycle keyCycle = (KeyCycle) src;
        this.f2764f = keyCycle.f2764f;
        this.f2765g = keyCycle.f2765g;
        this.f2766h = keyCycle.f2766h;
        this.f2767i = keyCycle.f2767i;
        this.f2768j = keyCycle.f2768j;
        this.f2769k = keyCycle.f2769k;
        this.f2770l = keyCycle.f2770l;
        this.f2771m = keyCycle.f2771m;
        this.f2772n = keyCycle.f2772n;
        this.f2773o = keyCycle.f2773o;
        this.f2774p = keyCycle.f2774p;
        this.f2775q = keyCycle.f2775q;
        this.f2776r = keyCycle.f2776r;
        this.f2777s = keyCycle.f2777s;
        this.f2778t = keyCycle.f2778t;
        this.f2779u = keyCycle.f2779u;
        this.f2780v = keyCycle.f2780v;
        this.f2781w = keyCycle.f2781w;
        this.f2782x = keyCycle.f2782x;
        this.f2783y = keyCycle.f2783y;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
        if (!Float.isNaN(this.f2773o)) {
            attributes.add("alpha");
        }
        if (!Float.isNaN(this.f2774p)) {
            attributes.add("elevation");
        }
        if (!Float.isNaN(this.f2775q)) {
            attributes.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.f2777s)) {
            attributes.add("rotationX");
        }
        if (!Float.isNaN(this.f2778t)) {
            attributes.add("rotationY");
        }
        if (!Float.isNaN(this.f2779u)) {
            attributes.add("scaleX");
        }
        if (!Float.isNaN(this.f2780v)) {
            attributes.add("scaleY");
        }
        if (!Float.isNaN(this.f2776r)) {
            attributes.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f2781w)) {
            attributes.add("translationX");
        }
        if (!Float.isNaN(this.f2782x)) {
            attributes.add("translationY");
        }
        if (!Float.isNaN(this.f2783y)) {
            attributes.add("translationZ");
        }
        if (this.f2723e.size() > 0) {
            Iterator<String> it2 = this.f2723e.keySet().iterator();
            while (it2.hasNext()) {
                attributes.add("CUSTOM," + it2.next());
            }
        }
    }

    public float getValue(String key) {
        key.hashCode();
        char c4 = 65535;
        switch (key.hashCode()) {
            case -1249320806:
                if (key.equals("rotationX")) {
                    c4 = 0;
                    break;
                }
                break;
            case -1249320805:
                if (key.equals("rotationY")) {
                    c4 = 1;
                    break;
                }
                break;
            case -1225497657:
                if (key.equals("translationX")) {
                    c4 = 2;
                    break;
                }
                break;
            case -1225497656:
                if (key.equals("translationY")) {
                    c4 = 3;
                    break;
                }
                break;
            case -1225497655:
                if (key.equals("translationZ")) {
                    c4 = 4;
                    break;
                }
                break;
            case -1001078227:
                if (key.equals("progress")) {
                    c4 = 5;
                    break;
                }
                break;
            case -908189618:
                if (key.equals("scaleX")) {
                    c4 = 6;
                    break;
                }
                break;
            case -908189617:
                if (key.equals("scaleY")) {
                    c4 = 7;
                    break;
                }
                break;
            case -40300674:
                if (key.equals(Key.ROTATION)) {
                    c4 = '\b';
                    break;
                }
                break;
            case -4379043:
                if (key.equals("elevation")) {
                    c4 = '\t';
                    break;
                }
                break;
            case 37232917:
                if (key.equals("transitionPathRotate")) {
                    c4 = '\n';
                    break;
                }
                break;
            case 92909918:
                if (key.equals("alpha")) {
                    c4 = 11;
                    break;
                }
                break;
            case 156108012:
                if (key.equals("waveOffset")) {
                    c4 = '\f';
                    break;
                }
                break;
            case 1530034690:
                if (key.equals("wavePhase")) {
                    c4 = '\r';
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                return this.f2777s;
            case 1:
                return this.f2778t;
            case 2:
                return this.f2781w;
            case 3:
                return this.f2782x;
            case 4:
                return this.f2783y;
            case 5:
                return this.f2771m;
            case 6:
                return this.f2779u;
            case 7:
                return this.f2780v;
            case '\b':
                return this.f2775q;
            case '\t':
                return this.f2774p;
            case '\n':
                return this.f2776r;
            case 11:
                return this.f2773o;
            case '\f':
                return this.f2769k;
            case '\r':
                return this.f2770l;
            default:
                if (key.startsWith("CUSTOM")) {
                    return Float.NaN;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("  UNKNOWN  ");
                sb.append(key);
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        Loader.b(this, context.obtainStyledAttributes(attrs, R.styleable.KeyCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c4 = 65535;
        switch (tag.hashCode()) {
            case -1913008125:
                if (tag.equals(Key.MOTIONPROGRESS)) {
                    c4 = 0;
                    break;
                }
                break;
            case -1812823328:
                if (tag.equals("transitionEasing")) {
                    c4 = 1;
                    break;
                }
                break;
            case -1249320806:
                if (tag.equals("rotationX")) {
                    c4 = 2;
                    break;
                }
                break;
            case -1249320805:
                if (tag.equals("rotationY")) {
                    c4 = 3;
                    break;
                }
                break;
            case -1225497657:
                if (tag.equals("translationX")) {
                    c4 = 4;
                    break;
                }
                break;
            case -1225497656:
                if (tag.equals("translationY")) {
                    c4 = 5;
                    break;
                }
                break;
            case -1225497655:
                if (tag.equals("translationZ")) {
                    c4 = 6;
                    break;
                }
                break;
            case -908189618:
                if (tag.equals("scaleX")) {
                    c4 = 7;
                    break;
                }
                break;
            case -908189617:
                if (tag.equals("scaleY")) {
                    c4 = '\b';
                    break;
                }
                break;
            case -40300674:
                if (tag.equals(Key.ROTATION)) {
                    c4 = '\t';
                    break;
                }
                break;
            case -4379043:
                if (tag.equals("elevation")) {
                    c4 = '\n';
                    break;
                }
                break;
            case 37232917:
                if (tag.equals("transitionPathRotate")) {
                    c4 = 11;
                    break;
                }
                break;
            case 92909918:
                if (tag.equals("alpha")) {
                    c4 = '\f';
                    break;
                }
                break;
            case 156108012:
                if (tag.equals("waveOffset")) {
                    c4 = '\r';
                    break;
                }
                break;
            case 184161818:
                if (tag.equals("wavePeriod")) {
                    c4 = 14;
                    break;
                }
                break;
            case 579057826:
                if (tag.equals("curveFit")) {
                    c4 = 15;
                    break;
                }
                break;
            case 1530034690:
                if (tag.equals("wavePhase")) {
                    c4 = 16;
                    break;
                }
                break;
            case 1532805160:
                if (tag.equals("waveShape")) {
                    c4 = 17;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                this.f2771m = c(value);
                return;
            case 1:
                this.f2764f = value.toString();
                return;
            case 2:
                this.f2777s = c(value);
                return;
            case 3:
                this.f2778t = c(value);
                return;
            case 4:
                this.f2781w = c(value);
                return;
            case 5:
                this.f2782x = c(value);
                return;
            case 6:
                this.f2783y = c(value);
                return;
            case 7:
                this.f2779u = c(value);
                return;
            case '\b':
                this.f2780v = c(value);
                return;
            case '\t':
                this.f2775q = c(value);
                return;
            case '\n':
                this.f2774p = c(value);
                return;
            case 11:
                this.f2776r = c(value);
                return;
            case '\f':
                this.f2773o = c(value);
                return;
            case '\r':
                this.f2769k = c(value);
                return;
            case 14:
                this.f2768j = c(value);
                return;
            case 15:
                this.f2765g = d(value);
                return;
            case 16:
                this.f2770l = c(value);
                return;
            case 17:
                if (value instanceof Integer) {
                    this.f2766h = d(value);
                    return;
                }
                this.f2766h = 7;
                this.f2767i = value.toString();
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo3clone() {
        return new KeyCycle().copy(this);
    }
}
