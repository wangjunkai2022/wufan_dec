package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class KeyTimeCycle extends Key {
    public static final int KEY_TYPE = 3;
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_SHAPE = "waveShape";

    /* renamed from: x  reason: collision with root package name */
    static final String f2841x = "KeyTimeCycle";

    /* renamed from: y  reason: collision with root package name */
    private static final String f2842y = "KeyTimeCycle";

    /* renamed from: f  reason: collision with root package name */
    private String f2843f;

    /* renamed from: g  reason: collision with root package name */
    private int f2844g = -1;

    /* renamed from: h  reason: collision with root package name */
    private float f2845h = Float.NaN;

    /* renamed from: i  reason: collision with root package name */
    private float f2846i = Float.NaN;

    /* renamed from: j  reason: collision with root package name */
    private float f2847j = Float.NaN;

    /* renamed from: k  reason: collision with root package name */
    private float f2848k = Float.NaN;

    /* renamed from: l  reason: collision with root package name */
    private float f2849l = Float.NaN;

    /* renamed from: m  reason: collision with root package name */
    private float f2850m = Float.NaN;

    /* renamed from: n  reason: collision with root package name */
    private float f2851n = Float.NaN;

    /* renamed from: o  reason: collision with root package name */
    private float f2852o = Float.NaN;

    /* renamed from: p  reason: collision with root package name */
    private float f2853p = Float.NaN;

    /* renamed from: q  reason: collision with root package name */
    private float f2854q = Float.NaN;

    /* renamed from: r  reason: collision with root package name */
    private float f2855r = Float.NaN;

    /* renamed from: s  reason: collision with root package name */
    private float f2856s = Float.NaN;

    /* renamed from: t  reason: collision with root package name */
    private int f2857t = 0;

    /* renamed from: u  reason: collision with root package name */
    private String f2858u = null;

    /* renamed from: v  reason: collision with root package name */
    private float f2859v = Float.NaN;

    /* renamed from: w  reason: collision with root package name */
    private float f2860w = 0.0f;

    /* loaded from: classes.dex */
    private static class Loader {

        /* renamed from: a  reason: collision with root package name */
        private static final int f2861a = 1;

        /* renamed from: b  reason: collision with root package name */
        private static final int f2862b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final int f2863c = 4;

        /* renamed from: d  reason: collision with root package name */
        private static final int f2864d = 5;

        /* renamed from: e  reason: collision with root package name */
        private static final int f2865e = 6;

        /* renamed from: f  reason: collision with root package name */
        private static final int f2866f = 8;

        /* renamed from: g  reason: collision with root package name */
        private static final int f2867g = 7;

        /* renamed from: h  reason: collision with root package name */
        private static final int f2868h = 9;

        /* renamed from: i  reason: collision with root package name */
        private static final int f2869i = 10;

        /* renamed from: j  reason: collision with root package name */
        private static final int f2870j = 12;

        /* renamed from: k  reason: collision with root package name */
        private static final int f2871k = 13;

        /* renamed from: l  reason: collision with root package name */
        private static final int f2872l = 14;

        /* renamed from: m  reason: collision with root package name */
        private static final int f2873m = 15;

        /* renamed from: n  reason: collision with root package name */
        private static final int f2874n = 16;

        /* renamed from: o  reason: collision with root package name */
        private static final int f2875o = 17;

        /* renamed from: p  reason: collision with root package name */
        private static final int f2876p = 18;

        /* renamed from: q  reason: collision with root package name */
        private static final int f2877q = 19;

        /* renamed from: r  reason: collision with root package name */
        private static final int f2878r = 20;

        /* renamed from: s  reason: collision with root package name */
        private static final int f2879s = 21;

        /* renamed from: t  reason: collision with root package name */
        private static SparseIntArray f2880t;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2880t = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_alpha, 1);
            f2880t.append(R.styleable.KeyTimeCycle_android_elevation, 2);
            f2880t.append(R.styleable.KeyTimeCycle_android_rotation, 4);
            f2880t.append(R.styleable.KeyTimeCycle_android_rotationX, 5);
            f2880t.append(R.styleable.KeyTimeCycle_android_rotationY, 6);
            f2880t.append(R.styleable.KeyTimeCycle_android_scaleX, 7);
            f2880t.append(R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            f2880t.append(R.styleable.KeyTimeCycle_transitionEasing, 9);
            f2880t.append(R.styleable.KeyTimeCycle_motionTarget, 10);
            f2880t.append(R.styleable.KeyTimeCycle_framePosition, 12);
            f2880t.append(R.styleable.KeyTimeCycle_curveFit, 13);
            f2880t.append(R.styleable.KeyTimeCycle_android_scaleY, 14);
            f2880t.append(R.styleable.KeyTimeCycle_android_translationX, 15);
            f2880t.append(R.styleable.KeyTimeCycle_android_translationY, 16);
            f2880t.append(R.styleable.KeyTimeCycle_android_translationZ, 17);
            f2880t.append(R.styleable.KeyTimeCycle_motionProgress, 18);
            f2880t.append(R.styleable.KeyTimeCycle_wavePeriod, 20);
            f2880t.append(R.styleable.KeyTimeCycle_waveOffset, 21);
            f2880t.append(R.styleable.KeyTimeCycle_waveShape, 19);
        }

        private Loader() {
        }

        public static void read(KeyTimeCycle c4, TypedArray a4) {
            int indexCount = a4.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = a4.getIndex(i2);
                switch (f2880t.get(index)) {
                    case 1:
                        c4.f2845h = a4.getFloat(index, c4.f2845h);
                        break;
                    case 2:
                        c4.f2846i = a4.getDimension(index, c4.f2846i);
                        break;
                    case 3:
                    case 11:
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append("unused attribute 0x");
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(f2880t.get(index));
                        break;
                    case 4:
                        c4.f2847j = a4.getFloat(index, c4.f2847j);
                        break;
                    case 5:
                        c4.f2848k = a4.getFloat(index, c4.f2848k);
                        break;
                    case 6:
                        c4.f2849l = a4.getFloat(index, c4.f2849l);
                        break;
                    case 7:
                        c4.f2851n = a4.getFloat(index, c4.f2851n);
                        break;
                    case 8:
                        c4.f2850m = a4.getFloat(index, c4.f2850m);
                        break;
                    case 9:
                        c4.f2843f = a4.getString(index);
                        break;
                    case 10:
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
                    case 12:
                        c4.f2719a = a4.getInt(index, c4.f2719a);
                        break;
                    case 13:
                        c4.f2844g = a4.getInteger(index, c4.f2844g);
                        break;
                    case 14:
                        c4.f2852o = a4.getFloat(index, c4.f2852o);
                        break;
                    case 15:
                        c4.f2853p = a4.getDimension(index, c4.f2853p);
                        break;
                    case 16:
                        c4.f2854q = a4.getDimension(index, c4.f2854q);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            c4.f2855r = a4.getDimension(index, c4.f2855r);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        c4.f2856s = a4.getFloat(index, c4.f2856s);
                        break;
                    case 19:
                        if (a4.peekValue(index).type == 3) {
                            c4.f2858u = a4.getString(index);
                            c4.f2857t = 7;
                            break;
                        } else {
                            c4.f2857t = a4.getInt(index, c4.f2857t);
                            break;
                        }
                    case 20:
                        c4.f2859v = a4.getFloat(index, c4.f2859v);
                        break;
                    case 21:
                        if (a4.peekValue(index).type == 5) {
                            c4.f2860w = a4.getDimension(index, c4.f2860w);
                            break;
                        } else {
                            c4.f2860w = a4.getFloat(index, c4.f2860w);
                            break;
                        }
                }
            }
        }
    }

    public KeyTimeCycle() {
        this.f2722d = 3;
        this.f2723e = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0089, code lost:
        if (r1.equals("scaleY") == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addTimeValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.utils.ViewTimeCycle> r11) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTimeCycle.addTimeValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyTimeCycle keyTimeCycle = (KeyTimeCycle) src;
        this.f2843f = keyTimeCycle.f2843f;
        this.f2844g = keyTimeCycle.f2844g;
        this.f2857t = keyTimeCycle.f2857t;
        this.f2859v = keyTimeCycle.f2859v;
        this.f2860w = keyTimeCycle.f2860w;
        this.f2856s = keyTimeCycle.f2856s;
        this.f2845h = keyTimeCycle.f2845h;
        this.f2846i = keyTimeCycle.f2846i;
        this.f2847j = keyTimeCycle.f2847j;
        this.f2850m = keyTimeCycle.f2850m;
        this.f2848k = keyTimeCycle.f2848k;
        this.f2849l = keyTimeCycle.f2849l;
        this.f2851n = keyTimeCycle.f2851n;
        this.f2852o = keyTimeCycle.f2852o;
        this.f2853p = keyTimeCycle.f2853p;
        this.f2854q = keyTimeCycle.f2854q;
        this.f2855r = keyTimeCycle.f2855r;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
        if (!Float.isNaN(this.f2845h)) {
            attributes.add("alpha");
        }
        if (!Float.isNaN(this.f2846i)) {
            attributes.add("elevation");
        }
        if (!Float.isNaN(this.f2847j)) {
            attributes.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.f2848k)) {
            attributes.add("rotationX");
        }
        if (!Float.isNaN(this.f2849l)) {
            attributes.add("rotationY");
        }
        if (!Float.isNaN(this.f2853p)) {
            attributes.add("translationX");
        }
        if (!Float.isNaN(this.f2854q)) {
            attributes.add("translationY");
        }
        if (!Float.isNaN(this.f2855r)) {
            attributes.add("translationZ");
        }
        if (!Float.isNaN(this.f2850m)) {
            attributes.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f2851n)) {
            attributes.add("scaleX");
        }
        if (!Float.isNaN(this.f2852o)) {
            attributes.add("scaleY");
        }
        if (!Float.isNaN(this.f2856s)) {
            attributes.add("progress");
        }
        if (this.f2723e.size() > 0) {
            Iterator<String> it2 = this.f2723e.keySet().iterator();
            while (it2.hasNext()) {
                attributes.add("CUSTOM," + it2.next());
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        Loader.read(this, context.obtainStyledAttributes(attrs, R.styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setInterpolation(HashMap<String, Integer> interpolation) {
        if (this.f2844g == -1) {
            return;
        }
        if (!Float.isNaN(this.f2845h)) {
            interpolation.put("alpha", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2846i)) {
            interpolation.put("elevation", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2847j)) {
            interpolation.put(Key.ROTATION, Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2848k)) {
            interpolation.put("rotationX", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2849l)) {
            interpolation.put("rotationY", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2853p)) {
            interpolation.put("translationX", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2854q)) {
            interpolation.put("translationY", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2855r)) {
            interpolation.put("translationZ", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2850m)) {
            interpolation.put("transitionPathRotate", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2851n)) {
            interpolation.put("scaleX", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2851n)) {
            interpolation.put("scaleY", Integer.valueOf(this.f2844g));
        }
        if (!Float.isNaN(this.f2856s)) {
            interpolation.put("progress", Integer.valueOf(this.f2844g));
        }
        if (this.f2723e.size() > 0) {
            Iterator<String> it2 = this.f2723e.keySet().iterator();
            while (it2.hasNext()) {
                interpolation.put("CUSTOM," + it2.next(), Integer.valueOf(this.f2844g));
            }
        }
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
            case 1532805160:
                if (tag.equals("waveShape")) {
                    c4 = 16;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                this.f2856s = c(value);
                return;
            case 1:
                this.f2843f = value.toString();
                return;
            case 2:
                this.f2848k = c(value);
                return;
            case 3:
                this.f2849l = c(value);
                return;
            case 4:
                this.f2853p = c(value);
                return;
            case 5:
                this.f2854q = c(value);
                return;
            case 6:
                this.f2855r = c(value);
                return;
            case 7:
                this.f2851n = c(value);
                return;
            case '\b':
                this.f2852o = c(value);
                return;
            case '\t':
                this.f2847j = c(value);
                return;
            case '\n':
                this.f2846i = c(value);
                return;
            case 11:
                this.f2850m = c(value);
                return;
            case '\f':
                this.f2845h = c(value);
                return;
            case '\r':
                this.f2860w = c(value);
                return;
            case 14:
                this.f2859v = c(value);
                return;
            case 15:
                this.f2844g = d(value);
                return;
            case 16:
                if (value instanceof Integer) {
                    this.f2857t = d(value);
                    return;
                }
                this.f2857t = 7;
                this.f2858u = value.toString();
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo3clone() {
        return new KeyTimeCycle().copy(this);
    }
}
