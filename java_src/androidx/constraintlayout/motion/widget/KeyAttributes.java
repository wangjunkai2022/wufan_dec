package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class KeyAttributes extends Key {
    public static final int KEY_TYPE = 1;

    /* renamed from: w  reason: collision with root package name */
    static final String f2724w = "KeyAttribute";

    /* renamed from: x  reason: collision with root package name */
    private static final String f2725x = "KeyAttributes";

    /* renamed from: y  reason: collision with root package name */
    private static final boolean f2726y = false;

    /* renamed from: f  reason: collision with root package name */
    private String f2727f;

    /* renamed from: g  reason: collision with root package name */
    private int f2728g = -1;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2729h = false;

    /* renamed from: i  reason: collision with root package name */
    private float f2730i = Float.NaN;

    /* renamed from: j  reason: collision with root package name */
    private float f2731j = Float.NaN;

    /* renamed from: k  reason: collision with root package name */
    private float f2732k = Float.NaN;

    /* renamed from: l  reason: collision with root package name */
    private float f2733l = Float.NaN;

    /* renamed from: m  reason: collision with root package name */
    private float f2734m = Float.NaN;

    /* renamed from: n  reason: collision with root package name */
    private float f2735n = Float.NaN;

    /* renamed from: o  reason: collision with root package name */
    private float f2736o = Float.NaN;

    /* renamed from: p  reason: collision with root package name */
    private float f2737p = Float.NaN;

    /* renamed from: q  reason: collision with root package name */
    private float f2738q = Float.NaN;

    /* renamed from: r  reason: collision with root package name */
    private float f2739r = Float.NaN;

    /* renamed from: s  reason: collision with root package name */
    private float f2740s = Float.NaN;

    /* renamed from: t  reason: collision with root package name */
    private float f2741t = Float.NaN;

    /* renamed from: u  reason: collision with root package name */
    private float f2742u = Float.NaN;

    /* renamed from: v  reason: collision with root package name */
    private float f2743v = Float.NaN;

    /* loaded from: classes.dex */
    private static class Loader {

        /* renamed from: a  reason: collision with root package name */
        private static final int f2744a = 1;

        /* renamed from: b  reason: collision with root package name */
        private static final int f2745b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final int f2746c = 4;

        /* renamed from: d  reason: collision with root package name */
        private static final int f2747d = 5;

        /* renamed from: e  reason: collision with root package name */
        private static final int f2748e = 6;

        /* renamed from: f  reason: collision with root package name */
        private static final int f2749f = 8;

        /* renamed from: g  reason: collision with root package name */
        private static final int f2750g = 7;

        /* renamed from: h  reason: collision with root package name */
        private static final int f2751h = 9;

        /* renamed from: i  reason: collision with root package name */
        private static final int f2752i = 10;

        /* renamed from: j  reason: collision with root package name */
        private static final int f2753j = 12;

        /* renamed from: k  reason: collision with root package name */
        private static final int f2754k = 13;

        /* renamed from: l  reason: collision with root package name */
        private static final int f2755l = 14;

        /* renamed from: m  reason: collision with root package name */
        private static final int f2756m = 15;

        /* renamed from: n  reason: collision with root package name */
        private static final int f2757n = 16;

        /* renamed from: o  reason: collision with root package name */
        private static final int f2758o = 17;

        /* renamed from: p  reason: collision with root package name */
        private static final int f2759p = 18;

        /* renamed from: q  reason: collision with root package name */
        private static final int f2760q = 19;

        /* renamed from: r  reason: collision with root package name */
        private static final int f2761r = 20;

        /* renamed from: s  reason: collision with root package name */
        private static SparseIntArray f2762s;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2762s = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyAttribute_android_alpha, 1);
            f2762s.append(R.styleable.KeyAttribute_android_elevation, 2);
            f2762s.append(R.styleable.KeyAttribute_android_rotation, 4);
            f2762s.append(R.styleable.KeyAttribute_android_rotationX, 5);
            f2762s.append(R.styleable.KeyAttribute_android_rotationY, 6);
            f2762s.append(R.styleable.KeyAttribute_android_transformPivotX, 19);
            f2762s.append(R.styleable.KeyAttribute_android_transformPivotY, 20);
            f2762s.append(R.styleable.KeyAttribute_android_scaleX, 7);
            f2762s.append(R.styleable.KeyAttribute_transitionPathRotate, 8);
            f2762s.append(R.styleable.KeyAttribute_transitionEasing, 9);
            f2762s.append(R.styleable.KeyAttribute_motionTarget, 10);
            f2762s.append(R.styleable.KeyAttribute_framePosition, 12);
            f2762s.append(R.styleable.KeyAttribute_curveFit, 13);
            f2762s.append(R.styleable.KeyAttribute_android_scaleY, 14);
            f2762s.append(R.styleable.KeyAttribute_android_translationX, 15);
            f2762s.append(R.styleable.KeyAttribute_android_translationY, 16);
            f2762s.append(R.styleable.KeyAttribute_android_translationZ, 17);
            f2762s.append(R.styleable.KeyAttribute_motionProgress, 18);
        }

        private Loader() {
        }

        public static void read(KeyAttributes c4, TypedArray a4) {
            int indexCount = a4.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = a4.getIndex(i2);
                switch (f2762s.get(index)) {
                    case 1:
                        c4.f2730i = a4.getFloat(index, c4.f2730i);
                        break;
                    case 2:
                        c4.f2731j = a4.getDimension(index, c4.f2731j);
                        break;
                    case 3:
                    case 11:
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append("unused attribute 0x");
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(f2762s.get(index));
                        break;
                    case 4:
                        c4.f2732k = a4.getFloat(index, c4.f2732k);
                        break;
                    case 5:
                        c4.f2733l = a4.getFloat(index, c4.f2733l);
                        break;
                    case 6:
                        c4.f2734m = a4.getFloat(index, c4.f2734m);
                        break;
                    case 7:
                        c4.f2738q = a4.getFloat(index, c4.f2738q);
                        break;
                    case 8:
                        c4.f2737p = a4.getFloat(index, c4.f2737p);
                        break;
                    case 9:
                        c4.f2727f = a4.getString(index);
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
                        c4.f2728g = a4.getInteger(index, c4.f2728g);
                        break;
                    case 14:
                        c4.f2739r = a4.getFloat(index, c4.f2739r);
                        break;
                    case 15:
                        c4.f2740s = a4.getDimension(index, c4.f2740s);
                        break;
                    case 16:
                        c4.f2741t = a4.getDimension(index, c4.f2741t);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            c4.f2742u = a4.getDimension(index, c4.f2742u);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        c4.f2743v = a4.getFloat(index, c4.f2743v);
                        break;
                    case 19:
                        c4.f2735n = a4.getDimension(index, c4.f2735n);
                        break;
                    case 20:
                        c4.f2736o = a4.getDimension(index, c4.f2736o);
                        break;
                }
            }
        }
    }

    public KeyAttributes() {
        this.f2722d = 1;
        this.f2723e = new HashMap<>();
    }

    int J() {
        return this.f2728g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009a, code lost:
        if (r1.equals("scaleY") == false) goto L12;
     */
    @Override // androidx.constraintlayout.motion.widget.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.utils.ViewSpline> r7) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyAttributes.addValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyAttributes keyAttributes = (KeyAttributes) src;
        this.f2728g = keyAttributes.f2728g;
        this.f2729h = keyAttributes.f2729h;
        this.f2730i = keyAttributes.f2730i;
        this.f2731j = keyAttributes.f2731j;
        this.f2732k = keyAttributes.f2732k;
        this.f2733l = keyAttributes.f2733l;
        this.f2734m = keyAttributes.f2734m;
        this.f2735n = keyAttributes.f2735n;
        this.f2736o = keyAttributes.f2736o;
        this.f2737p = keyAttributes.f2737p;
        this.f2738q = keyAttributes.f2738q;
        this.f2739r = keyAttributes.f2739r;
        this.f2740s = keyAttributes.f2740s;
        this.f2741t = keyAttributes.f2741t;
        this.f2742u = keyAttributes.f2742u;
        this.f2743v = keyAttributes.f2743v;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
        if (!Float.isNaN(this.f2730i)) {
            attributes.add("alpha");
        }
        if (!Float.isNaN(this.f2731j)) {
            attributes.add("elevation");
        }
        if (!Float.isNaN(this.f2732k)) {
            attributes.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.f2733l)) {
            attributes.add("rotationX");
        }
        if (!Float.isNaN(this.f2734m)) {
            attributes.add("rotationY");
        }
        if (!Float.isNaN(this.f2735n)) {
            attributes.add(Key.PIVOT_X);
        }
        if (!Float.isNaN(this.f2736o)) {
            attributes.add(Key.PIVOT_Y);
        }
        if (!Float.isNaN(this.f2740s)) {
            attributes.add("translationX");
        }
        if (!Float.isNaN(this.f2741t)) {
            attributes.add("translationY");
        }
        if (!Float.isNaN(this.f2742u)) {
            attributes.add("translationZ");
        }
        if (!Float.isNaN(this.f2737p)) {
            attributes.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f2738q)) {
            attributes.add("scaleX");
        }
        if (!Float.isNaN(this.f2739r)) {
            attributes.add("scaleY");
        }
        if (!Float.isNaN(this.f2743v)) {
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
        Loader.read(this, context.obtainStyledAttributes(attrs, R.styleable.KeyAttribute));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setInterpolation(HashMap<String, Integer> interpolation) {
        if (this.f2728g == -1) {
            return;
        }
        if (!Float.isNaN(this.f2730i)) {
            interpolation.put("alpha", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2731j)) {
            interpolation.put("elevation", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2732k)) {
            interpolation.put(Key.ROTATION, Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2733l)) {
            interpolation.put("rotationX", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2734m)) {
            interpolation.put("rotationY", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2735n)) {
            interpolation.put(Key.PIVOT_X, Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2736o)) {
            interpolation.put(Key.PIVOT_Y, Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2740s)) {
            interpolation.put("translationX", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2741t)) {
            interpolation.put("translationY", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2742u)) {
            interpolation.put("translationZ", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2737p)) {
            interpolation.put("transitionPathRotate", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2738q)) {
            interpolation.put("scaleX", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2739r)) {
            interpolation.put("scaleY", Integer.valueOf(this.f2728g));
        }
        if (!Float.isNaN(this.f2743v)) {
            interpolation.put("progress", Integer.valueOf(this.f2728g));
        }
        if (this.f2723e.size() > 0) {
            Iterator<String> it2 = this.f2723e.keySet().iterator();
            while (it2.hasNext()) {
                interpolation.put("CUSTOM," + it2.next(), Integer.valueOf(this.f2728g));
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
            case -760884510:
                if (tag.equals(Key.PIVOT_X)) {
                    c4 = '\t';
                    break;
                }
                break;
            case -760884509:
                if (tag.equals(Key.PIVOT_Y)) {
                    c4 = '\n';
                    break;
                }
                break;
            case -40300674:
                if (tag.equals(Key.ROTATION)) {
                    c4 = 11;
                    break;
                }
                break;
            case -4379043:
                if (tag.equals("elevation")) {
                    c4 = '\f';
                    break;
                }
                break;
            case 37232917:
                if (tag.equals("transitionPathRotate")) {
                    c4 = '\r';
                    break;
                }
                break;
            case 92909918:
                if (tag.equals("alpha")) {
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
            case 1941332754:
                if (tag.equals("visibility")) {
                    c4 = 16;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                this.f2743v = c(value);
                return;
            case 1:
                this.f2727f = value.toString();
                return;
            case 2:
                this.f2733l = c(value);
                return;
            case 3:
                this.f2734m = c(value);
                return;
            case 4:
                this.f2740s = c(value);
                return;
            case 5:
                this.f2741t = c(value);
                return;
            case 6:
                this.f2742u = c(value);
                return;
            case 7:
                this.f2738q = c(value);
                return;
            case '\b':
                this.f2739r = c(value);
                return;
            case '\t':
                this.f2735n = c(value);
                return;
            case '\n':
                this.f2736o = c(value);
                return;
            case 11:
                this.f2732k = c(value);
                return;
            case '\f':
                this.f2731j = c(value);
                return;
            case '\r':
                this.f2737p = c(value);
                return;
            case 14:
                this.f2730i = c(value);
                return;
            case 15:
                this.f2728g = d(value);
                return;
            case 16:
                this.f2729h = b(value);
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo3clone() {
        return new KeyAttributes().copy(this);
    }
}
