package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import com.join.mgps.Util.g0;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
/* loaded from: classes.dex */
public class KeyTrigger extends Key {
    static final String A = "KeyTrigger";
    private static final String B = "KeyTrigger";
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
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";

    /* renamed from: f  reason: collision with root package name */
    private int f2881f = -1;

    /* renamed from: g  reason: collision with root package name */
    private String f2882g = null;

    /* renamed from: h  reason: collision with root package name */
    private int f2883h;

    /* renamed from: i  reason: collision with root package name */
    private String f2884i;

    /* renamed from: j  reason: collision with root package name */
    private String f2885j;

    /* renamed from: k  reason: collision with root package name */
    private int f2886k;

    /* renamed from: l  reason: collision with root package name */
    private int f2887l;

    /* renamed from: m  reason: collision with root package name */
    private View f2888m;

    /* renamed from: n  reason: collision with root package name */
    float f2889n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f2890o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f2891p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f2892q;

    /* renamed from: r  reason: collision with root package name */
    private float f2893r;

    /* renamed from: s  reason: collision with root package name */
    private float f2894s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f2895t;

    /* renamed from: u  reason: collision with root package name */
    int f2896u;

    /* renamed from: v  reason: collision with root package name */
    int f2897v;

    /* renamed from: w  reason: collision with root package name */
    int f2898w;

    /* renamed from: x  reason: collision with root package name */
    RectF f2899x;

    /* renamed from: y  reason: collision with root package name */
    RectF f2900y;

    /* renamed from: z  reason: collision with root package name */
    HashMap<String, Method> f2901z;

    /* loaded from: classes.dex */
    private static class Loader {

        /* renamed from: a  reason: collision with root package name */
        private static final int f2902a = 1;

        /* renamed from: b  reason: collision with root package name */
        private static final int f2903b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final int f2904c = 4;

        /* renamed from: d  reason: collision with root package name */
        private static final int f2905d = 5;

        /* renamed from: e  reason: collision with root package name */
        private static final int f2906e = 6;

        /* renamed from: f  reason: collision with root package name */
        private static final int f2907f = 7;

        /* renamed from: g  reason: collision with root package name */
        private static final int f2908g = 8;

        /* renamed from: h  reason: collision with root package name */
        private static final int f2909h = 9;

        /* renamed from: i  reason: collision with root package name */
        private static final int f2910i = 10;

        /* renamed from: j  reason: collision with root package name */
        private static final int f2911j = 11;

        /* renamed from: k  reason: collision with root package name */
        private static final int f2912k = 12;

        /* renamed from: l  reason: collision with root package name */
        private static final int f2913l = 13;

        /* renamed from: m  reason: collision with root package name */
        private static final int f2914m = 14;

        /* renamed from: n  reason: collision with root package name */
        private static SparseIntArray f2915n;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2915n = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            f2915n.append(R.styleable.KeyTrigger_onCross, 4);
            f2915n.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            f2915n.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            f2915n.append(R.styleable.KeyTrigger_motionTarget, 7);
            f2915n.append(R.styleable.KeyTrigger_triggerId, 6);
            f2915n.append(R.styleable.KeyTrigger_triggerSlack, 5);
            f2915n.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            f2915n.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            f2915n.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            f2915n.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            f2915n.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            f2915n.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        private Loader() {
        }

        public static void read(KeyTrigger c4, TypedArray a4, Context context) {
            int indexCount = a4.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = a4.getIndex(i2);
                switch (f2915n.get(index)) {
                    case 1:
                        c4.f2884i = a4.getString(index);
                        break;
                    case 2:
                        c4.f2885j = a4.getString(index);
                        break;
                    case 3:
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append("unused attribute 0x");
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(f2915n.get(index));
                        break;
                    case 4:
                        c4.f2882g = a4.getString(index);
                        break;
                    case 5:
                        c4.f2889n = a4.getFloat(index, c4.f2889n);
                        break;
                    case 6:
                        c4.f2886k = a4.getResourceId(index, c4.f2886k);
                        break;
                    case 7:
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
                    case 8:
                        int integer = a4.getInteger(index, c4.f2719a);
                        c4.f2719a = integer;
                        c4.f2893r = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        c4.f2887l = a4.getResourceId(index, c4.f2887l);
                        break;
                    case 10:
                        c4.f2895t = a4.getBoolean(index, c4.f2895t);
                        break;
                    case 11:
                        c4.f2883h = a4.getResourceId(index, c4.f2883h);
                        break;
                    case 12:
                        c4.f2898w = a4.getResourceId(index, c4.f2898w);
                        break;
                    case 13:
                        c4.f2896u = a4.getResourceId(index, c4.f2896u);
                        break;
                    case 14:
                        c4.f2897v = a4.getResourceId(index, c4.f2897v);
                        break;
                }
            }
        }
    }

    public KeyTrigger() {
        int i2 = Key.UNSET;
        this.f2883h = i2;
        this.f2884i = null;
        this.f2885j = null;
        this.f2886k = i2;
        this.f2887l = i2;
        this.f2888m = null;
        this.f2889n = 0.1f;
        this.f2890o = true;
        this.f2891p = true;
        this.f2892q = true;
        this.f2893r = Float.NaN;
        this.f2895t = false;
        this.f2896u = i2;
        this.f2897v = i2;
        this.f2898w = i2;
        this.f2899x = new RectF();
        this.f2900y = new RectF();
        this.f2901z = new HashMap<>();
        this.f2722d = 5;
        this.f2723e = new HashMap<>();
    }

    private void q(String str, View call) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(g0.f27568a)) {
            r(str, call);
            return;
        }
        if (this.f2901z.containsKey(str)) {
            method = this.f2901z.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = call.getClass().getMethod(str, new Class[0]);
                this.f2901z.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.f2901z.put(str, null);
                StringBuilder sb = new StringBuilder();
                sb.append("Could not find method \"");
                sb.append(str);
                sb.append("\"on class ");
                sb.append(call.getClass().getSimpleName());
                sb.append(" ");
                sb.append(Debug.getName(call));
                return;
            }
        }
        try {
            method.invoke(call, new Object[0]);
        } catch (Exception unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Exception in call \"");
            sb2.append(this.f2882g);
            sb2.append("\"on class ");
            sb2.append(call.getClass().getSimpleName());
            sb2.append(" ");
            sb2.append(Debug.getName(call));
        }
    }

    private void r(String str, View view) {
        boolean z3 = str.length() == 1;
        if (!z3) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.f2723e.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z3 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.f2723e.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    private void t(RectF rect, View child, boolean postLayout) {
        rect.top = child.getTop();
        rect.bottom = child.getBottom();
        rect.left = child.getLeft();
        rect.right = child.getRight();
        if (postLayout) {
            child.getMatrix().mapRect(rect);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void conditionallyFire(float r10, android.view.View r11) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTrigger.conditionallyFire(float, android.view.View):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyTrigger keyTrigger = (KeyTrigger) src;
        this.f2881f = keyTrigger.f2881f;
        this.f2882g = keyTrigger.f2882g;
        this.f2883h = keyTrigger.f2883h;
        this.f2884i = keyTrigger.f2884i;
        this.f2885j = keyTrigger.f2885j;
        this.f2886k = keyTrigger.f2886k;
        this.f2887l = keyTrigger.f2887l;
        this.f2888m = keyTrigger.f2888m;
        this.f2889n = keyTrigger.f2889n;
        this.f2890o = keyTrigger.f2890o;
        this.f2891p = keyTrigger.f2891p;
        this.f2892q = keyTrigger.f2892q;
        this.f2893r = keyTrigger.f2893r;
        this.f2894s = keyTrigger.f2894s;
        this.f2895t = keyTrigger.f2895t;
        this.f2899x = keyTrigger.f2899x;
        this.f2900y = keyTrigger.f2900y;
        this.f2901z = keyTrigger.f2901z;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        Loader.read(this, context.obtainStyledAttributes(attrs, R.styleable.KeyTrigger), context);
    }

    int s() {
        return this.f2881f;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c4 = 65535;
        switch (tag.hashCode()) {
            case -1594793529:
                if (tag.equals("positiveCross")) {
                    c4 = 0;
                    break;
                }
                break;
            case -966421266:
                if (tag.equals("viewTransitionOnPositiveCross")) {
                    c4 = 1;
                    break;
                }
                break;
            case -786670827:
                if (tag.equals("triggerCollisionId")) {
                    c4 = 2;
                    break;
                }
                break;
            case -648752941:
                if (tag.equals("triggerID")) {
                    c4 = 3;
                    break;
                }
                break;
            case -638126837:
                if (tag.equals("negativeCross")) {
                    c4 = 4;
                    break;
                }
                break;
            case -76025313:
                if (tag.equals("triggerCollisionView")) {
                    c4 = 5;
                    break;
                }
                break;
            case -9754574:
                if (tag.equals("viewTransitionOnNegativeCross")) {
                    c4 = 6;
                    break;
                }
                break;
            case 64397344:
                if (tag.equals("CROSS")) {
                    c4 = 7;
                    break;
                }
                break;
            case 364489912:
                if (tag.equals("triggerSlack")) {
                    c4 = '\b';
                    break;
                }
                break;
            case 1301930599:
                if (tag.equals("viewTransitionOnCross")) {
                    c4 = '\t';
                    break;
                }
                break;
            case 1401391082:
                if (tag.equals("postLayout")) {
                    c4 = '\n';
                    break;
                }
                break;
            case 1535404999:
                if (tag.equals("triggerReceiver")) {
                    c4 = 11;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                this.f2885j = value.toString();
                return;
            case 1:
                this.f2897v = d(value);
                return;
            case 2:
                this.f2887l = d(value);
                return;
            case 3:
                this.f2886k = d(value);
                return;
            case 4:
                this.f2884i = value.toString();
                return;
            case 5:
                this.f2888m = (View) value;
                return;
            case 6:
                this.f2896u = d(value);
                return;
            case 7:
                this.f2882g = value.toString();
                return;
            case '\b':
                this.f2889n = c(value);
                return;
            case '\t':
                this.f2898w = d(value);
                return;
            case '\n':
                this.f2895t = b(value);
                return;
            case 11:
                this.f2883h = d(value);
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo3clone() {
        return new KeyTrigger().copy(this);
    }
}
