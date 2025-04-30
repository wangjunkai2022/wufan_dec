package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.state.helpers.Facade;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ConstraintReference implements Reference {

    /* renamed from: a  reason: collision with root package name */
    private Object f2309a;

    /* renamed from: a0  reason: collision with root package name */
    private float f2310a0;

    /* renamed from: b  reason: collision with root package name */
    final State f2311b;

    /* renamed from: b0  reason: collision with root package name */
    private float f2312b0;

    /* renamed from: d0  reason: collision with root package name */
    Dimension f2316d0;

    /* renamed from: e0  reason: collision with root package name */
    Dimension f2318e0;

    /* renamed from: f0  reason: collision with root package name */
    private Object f2320f0;

    /* renamed from: g0  reason: collision with root package name */
    private ConstraintWidget f2322g0;

    /* renamed from: h0  reason: collision with root package name */
    private HashMap<String, Integer> f2324h0;

    /* renamed from: i0  reason: collision with root package name */
    private HashMap<String, Float> f2326i0;

    /* renamed from: c  reason: collision with root package name */
    String f2313c = null;

    /* renamed from: d  reason: collision with root package name */
    Facade f2315d = null;

    /* renamed from: e  reason: collision with root package name */
    int f2317e = 0;

    /* renamed from: f  reason: collision with root package name */
    int f2319f = 0;

    /* renamed from: g  reason: collision with root package name */
    float f2321g = -1.0f;

    /* renamed from: h  reason: collision with root package name */
    float f2323h = -1.0f;

    /* renamed from: i  reason: collision with root package name */
    float f2325i = 0.5f;

    /* renamed from: j  reason: collision with root package name */
    float f2327j = 0.5f;

    /* renamed from: k  reason: collision with root package name */
    protected int f2328k = 0;

    /* renamed from: l  reason: collision with root package name */
    protected int f2329l = 0;

    /* renamed from: m  reason: collision with root package name */
    protected int f2330m = 0;

    /* renamed from: n  reason: collision with root package name */
    protected int f2331n = 0;

    /* renamed from: o  reason: collision with root package name */
    protected int f2332o = 0;

    /* renamed from: p  reason: collision with root package name */
    protected int f2333p = 0;

    /* renamed from: q  reason: collision with root package name */
    protected int f2334q = 0;

    /* renamed from: r  reason: collision with root package name */
    protected int f2335r = 0;

    /* renamed from: s  reason: collision with root package name */
    protected int f2336s = 0;

    /* renamed from: t  reason: collision with root package name */
    protected int f2337t = 0;

    /* renamed from: u  reason: collision with root package name */
    protected int f2338u = 0;

    /* renamed from: v  reason: collision with root package name */
    protected int f2339v = 0;

    /* renamed from: w  reason: collision with root package name */
    int f2340w = 0;

    /* renamed from: x  reason: collision with root package name */
    int f2341x = 0;

    /* renamed from: y  reason: collision with root package name */
    float f2342y = Float.NaN;

    /* renamed from: z  reason: collision with root package name */
    float f2343z = Float.NaN;
    float A = Float.NaN;
    float B = Float.NaN;
    float C = Float.NaN;
    float D = Float.NaN;
    float E = Float.NaN;
    float F = Float.NaN;
    float G = Float.NaN;
    float H = Float.NaN;
    float I = Float.NaN;
    int J = 0;
    protected Object K = null;
    protected Object L = null;
    protected Object M = null;
    protected Object N = null;
    protected Object O = null;
    protected Object P = null;
    protected Object Q = null;
    protected Object R = null;
    protected Object S = null;
    protected Object T = null;
    protected Object U = null;
    protected Object V = null;
    Object W = null;
    Object X = null;
    Object Y = null;
    Object Z = null;

    /* renamed from: c0  reason: collision with root package name */
    State.Constraint f2314c0 = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.state.ConstraintReference$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2344a;

        static {
            int[] iArr = new int[State.Constraint.values().length];
            f2344a = iArr;
            try {
                iArr[State.Constraint.LEFT_TO_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2344a[State.Constraint.LEFT_TO_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2344a[State.Constraint.RIGHT_TO_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2344a[State.Constraint.RIGHT_TO_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2344a[State.Constraint.START_TO_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2344a[State.Constraint.START_TO_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2344a[State.Constraint.END_TO_START.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2344a[State.Constraint.END_TO_END.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2344a[State.Constraint.TOP_TO_TOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2344a[State.Constraint.TOP_TO_BOTTOM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2344a[State.Constraint.BOTTOM_TO_TOP.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2344a[State.Constraint.BOTTOM_TO_BOTTOM.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2344a[State.Constraint.BASELINE_TO_BOTTOM.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f2344a[State.Constraint.BASELINE_TO_TOP.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f2344a[State.Constraint.BASELINE_TO_BASELINE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f2344a[State.Constraint.CIRCULAR_CONSTRAINT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f2344a[State.Constraint.CENTER_HORIZONTALLY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f2344a[State.Constraint.CENTER_VERTICALLY.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ConstraintReferenceFactory {
        ConstraintReference create(State state);
    }

    /* loaded from: classes.dex */
    static class IncorrectConstraintException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        private final ArrayList<String> f2345a;

        public IncorrectConstraintException(ArrayList<String> arrayList) {
            this.f2345a = arrayList;
        }

        public ArrayList<String> getErrors() {
            return this.f2345a;
        }

        @Override // java.lang.Throwable
        public String toString() {
            return "IncorrectConstraintException: " + this.f2345a.toString();
        }
    }

    public ConstraintReference(State state) {
        Object obj = Dimension.WRAP_DIMENSION;
        this.f2316d0 = Dimension.Fixed(obj);
        this.f2318e0 = Dimension.Fixed(obj);
        this.f2324h0 = new HashMap<>();
        this.f2326i0 = new HashMap<>();
        this.f2311b = state;
    }

    private void a(ConstraintWidget constraintWidget, Object obj, State.Constraint constraint) {
        ConstraintWidget d4 = d(obj);
        if (d4 == null) {
            return;
        }
        int[] iArr = AnonymousClass1.f2344a;
        int i2 = iArr[constraint.ordinal()];
        switch (iArr[constraint.ordinal()]) {
            case 1:
                ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                constraintWidget.getAnchor(type).connect(d4.getAnchor(type), this.f2328k, this.f2334q, false);
                return;
            case 2:
                constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).connect(d4.getAnchor(ConstraintAnchor.Type.RIGHT), this.f2328k, this.f2334q, false);
                return;
            case 3:
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).connect(d4.getAnchor(ConstraintAnchor.Type.LEFT), this.f2329l, this.f2335r, false);
                return;
            case 4:
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.getAnchor(type2).connect(d4.getAnchor(type2), this.f2329l, this.f2335r, false);
                return;
            case 5:
                ConstraintAnchor.Type type3 = ConstraintAnchor.Type.LEFT;
                constraintWidget.getAnchor(type3).connect(d4.getAnchor(type3), this.f2330m, this.f2336s, false);
                return;
            case 6:
                constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).connect(d4.getAnchor(ConstraintAnchor.Type.RIGHT), this.f2330m, this.f2336s, false);
                return;
            case 7:
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).connect(d4.getAnchor(ConstraintAnchor.Type.LEFT), this.f2331n, this.f2337t, false);
                return;
            case 8:
                ConstraintAnchor.Type type4 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.getAnchor(type4).connect(d4.getAnchor(type4), this.f2331n, this.f2337t, false);
                return;
            case 9:
                ConstraintAnchor.Type type5 = ConstraintAnchor.Type.TOP;
                constraintWidget.getAnchor(type5).connect(d4.getAnchor(type5), this.f2332o, this.f2338u, false);
                return;
            case 10:
                constraintWidget.getAnchor(ConstraintAnchor.Type.TOP).connect(d4.getAnchor(ConstraintAnchor.Type.BOTTOM), this.f2332o, this.f2338u, false);
                return;
            case 11:
                constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).connect(d4.getAnchor(ConstraintAnchor.Type.TOP), this.f2333p, this.f2339v, false);
                return;
            case 12:
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.BOTTOM;
                constraintWidget.getAnchor(type6).connect(d4.getAnchor(type6), this.f2333p, this.f2339v, false);
                return;
            case 13:
                constraintWidget.immediateConnect(ConstraintAnchor.Type.BASELINE, d4, ConstraintAnchor.Type.BOTTOM, this.f2340w, this.f2341x);
                return;
            case 14:
                constraintWidget.immediateConnect(ConstraintAnchor.Type.BASELINE, d4, ConstraintAnchor.Type.TOP, this.f2340w, this.f2341x);
                return;
            case 15:
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.BASELINE;
                constraintWidget.immediateConnect(type7, d4, type7, this.f2340w, this.f2341x);
                return;
            case 16:
                constraintWidget.connectCircularConstraint(d4, this.f2310a0, (int) this.f2312b0);
                return;
            default:
                return;
        }
    }

    private void b() {
        this.K = c(this.K);
        this.L = c(this.L);
        this.M = c(this.M);
        this.N = c(this.N);
        this.O = c(this.O);
        this.P = c(this.P);
        this.Q = c(this.Q);
        this.R = c(this.R);
        this.S = c(this.S);
        this.T = c(this.T);
        this.U = c(this.U);
        this.V = c(this.V);
        this.W = c(this.W);
        this.X = c(this.X);
        this.Y = c(this.Y);
    }

    private Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        return !(obj instanceof ConstraintReference) ? this.f2311b.b(obj) : obj;
    }

    private ConstraintWidget d(Object obj) {
        if (obj instanceof Reference) {
            return ((Reference) obj).getConstraintWidget();
        }
        return null;
    }

    public void addCustomColor(String str, int i2) {
        this.f2324h0.put(str, Integer.valueOf(i2));
    }

    public void addCustomFloat(String str, float f4) {
        if (this.f2326i0 == null) {
            this.f2326i0 = new HashMap<>();
        }
        this.f2326i0.put(str, Float.valueOf(f4));
    }

    public ConstraintReference alpha(float f4) {
        this.G = f4;
        return this;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void apply() {
        if (this.f2322g0 == null) {
            return;
        }
        Facade facade = this.f2315d;
        if (facade != null) {
            facade.apply();
        }
        this.f2316d0.apply(this.f2311b, this.f2322g0, 0);
        this.f2318e0.apply(this.f2311b, this.f2322g0, 1);
        b();
        a(this.f2322g0, this.K, State.Constraint.LEFT_TO_LEFT);
        a(this.f2322g0, this.L, State.Constraint.LEFT_TO_RIGHT);
        a(this.f2322g0, this.M, State.Constraint.RIGHT_TO_LEFT);
        a(this.f2322g0, this.N, State.Constraint.RIGHT_TO_RIGHT);
        a(this.f2322g0, this.O, State.Constraint.START_TO_START);
        a(this.f2322g0, this.P, State.Constraint.START_TO_END);
        a(this.f2322g0, this.Q, State.Constraint.END_TO_START);
        a(this.f2322g0, this.R, State.Constraint.END_TO_END);
        a(this.f2322g0, this.S, State.Constraint.TOP_TO_TOP);
        a(this.f2322g0, this.T, State.Constraint.TOP_TO_BOTTOM);
        a(this.f2322g0, this.U, State.Constraint.BOTTOM_TO_TOP);
        a(this.f2322g0, this.V, State.Constraint.BOTTOM_TO_BOTTOM);
        a(this.f2322g0, this.W, State.Constraint.BASELINE_TO_BASELINE);
        a(this.f2322g0, this.X, State.Constraint.BASELINE_TO_TOP);
        a(this.f2322g0, this.Y, State.Constraint.BASELINE_TO_BOTTOM);
        a(this.f2322g0, this.Z, State.Constraint.CIRCULAR_CONSTRAINT);
        int i2 = this.f2317e;
        if (i2 != 0) {
            this.f2322g0.setHorizontalChainStyle(i2);
        }
        int i4 = this.f2319f;
        if (i4 != 0) {
            this.f2322g0.setVerticalChainStyle(i4);
        }
        float f4 = this.f2321g;
        if (f4 != -1.0f) {
            this.f2322g0.setHorizontalWeight(f4);
        }
        float f5 = this.f2323h;
        if (f5 != -1.0f) {
            this.f2322g0.setVerticalWeight(f5);
        }
        this.f2322g0.setHorizontalBiasPercent(this.f2325i);
        this.f2322g0.setVerticalBiasPercent(this.f2327j);
        ConstraintWidget constraintWidget = this.f2322g0;
        WidgetFrame widgetFrame = constraintWidget.frame;
        widgetFrame.pivotX = this.f2342y;
        widgetFrame.pivotY = this.f2343z;
        widgetFrame.rotationX = this.A;
        widgetFrame.rotationY = this.B;
        widgetFrame.rotationZ = this.C;
        widgetFrame.translationX = this.D;
        widgetFrame.translationY = this.E;
        widgetFrame.translationZ = this.F;
        widgetFrame.scaleX = this.H;
        widgetFrame.scaleY = this.I;
        widgetFrame.alpha = this.G;
        int i5 = this.J;
        widgetFrame.visibility = i5;
        constraintWidget.setVisibility(i5);
        HashMap<String, Integer> hashMap = this.f2324h0;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                this.f2322g0.frame.setCustomAttribute(str, 902, this.f2324h0.get(str).intValue());
            }
        }
        HashMap<String, Float> hashMap2 = this.f2326i0;
        if (hashMap2 != null) {
            for (String str2 : hashMap2.keySet()) {
                this.f2322g0.frame.setCustomAttribute(str2, 901, this.f2326i0.get(str2).floatValue());
            }
        }
    }

    public ConstraintReference baseline() {
        this.f2314c0 = State.Constraint.BASELINE_TO_BASELINE;
        return this;
    }

    public ConstraintReference baselineToBaseline(Object obj) {
        this.f2314c0 = State.Constraint.BASELINE_TO_BASELINE;
        this.W = obj;
        return this;
    }

    public ConstraintReference baselineToBottom(Object obj) {
        this.f2314c0 = State.Constraint.BASELINE_TO_BOTTOM;
        this.Y = obj;
        return this;
    }

    public ConstraintReference baselineToTop(Object obj) {
        this.f2314c0 = State.Constraint.BASELINE_TO_TOP;
        this.X = obj;
        return this;
    }

    public ConstraintReference bias(float f4) {
        State.Constraint constraint = this.f2314c0;
        if (constraint == null) {
            return this;
        }
        int i2 = AnonymousClass1.f2344a[constraint.ordinal()];
        if (i2 != 17) {
            if (i2 != 18) {
                switch (i2) {
                }
                return this;
            }
            this.f2327j = f4;
            return this;
        }
        this.f2325i = f4;
        return this;
    }

    public ConstraintReference bottom() {
        if (this.U != null) {
            this.f2314c0 = State.Constraint.BOTTOM_TO_TOP;
        } else {
            this.f2314c0 = State.Constraint.BOTTOM_TO_BOTTOM;
        }
        return this;
    }

    public ConstraintReference bottomToBottom(Object obj) {
        this.f2314c0 = State.Constraint.BOTTOM_TO_BOTTOM;
        this.V = obj;
        return this;
    }

    public ConstraintReference bottomToTop(Object obj) {
        this.f2314c0 = State.Constraint.BOTTOM_TO_TOP;
        this.U = obj;
        return this;
    }

    public ConstraintReference centerHorizontally(Object obj) {
        Object c4 = c(obj);
        this.O = c4;
        this.R = c4;
        this.f2314c0 = State.Constraint.CENTER_HORIZONTALLY;
        this.f2325i = 0.5f;
        return this;
    }

    public ConstraintReference centerVertically(Object obj) {
        Object c4 = c(obj);
        this.S = c4;
        this.V = c4;
        this.f2314c0 = State.Constraint.CENTER_VERTICALLY;
        this.f2327j = 0.5f;
        return this;
    }

    public ConstraintReference circularConstraint(Object obj, float f4, float f5) {
        this.Z = c(obj);
        this.f2310a0 = f4;
        this.f2312b0 = f5;
        this.f2314c0 = State.Constraint.CIRCULAR_CONSTRAINT;
        return this;
    }

    public ConstraintReference clear() {
        State.Constraint constraint = this.f2314c0;
        if (constraint != null) {
            switch (AnonymousClass1.f2344a[constraint.ordinal()]) {
                case 1:
                case 2:
                    this.K = null;
                    this.L = null;
                    this.f2328k = 0;
                    this.f2334q = 0;
                    break;
                case 3:
                case 4:
                    this.M = null;
                    this.N = null;
                    this.f2329l = 0;
                    this.f2335r = 0;
                    break;
                case 5:
                case 6:
                    this.O = null;
                    this.P = null;
                    this.f2330m = 0;
                    this.f2336s = 0;
                    break;
                case 7:
                case 8:
                    this.Q = null;
                    this.R = null;
                    this.f2331n = 0;
                    this.f2337t = 0;
                    break;
                case 9:
                case 10:
                    this.S = null;
                    this.T = null;
                    this.f2332o = 0;
                    this.f2338u = 0;
                    break;
                case 11:
                case 12:
                    this.U = null;
                    this.V = null;
                    this.f2333p = 0;
                    this.f2339v = 0;
                    break;
                case 15:
                    this.W = null;
                    break;
                case 16:
                    this.Z = null;
                    break;
            }
        } else {
            this.K = null;
            this.L = null;
            this.f2328k = 0;
            this.M = null;
            this.N = null;
            this.f2329l = 0;
            this.O = null;
            this.P = null;
            this.f2330m = 0;
            this.Q = null;
            this.R = null;
            this.f2331n = 0;
            this.S = null;
            this.T = null;
            this.f2332o = 0;
            this.U = null;
            this.V = null;
            this.f2333p = 0;
            this.W = null;
            this.Z = null;
            this.f2325i = 0.5f;
            this.f2327j = 0.5f;
            this.f2334q = 0;
            this.f2335r = 0;
            this.f2336s = 0;
            this.f2337t = 0;
            this.f2338u = 0;
            this.f2339v = 0;
        }
        return this;
    }

    public ConstraintReference clearHorizontal() {
        start().clear();
        end().clear();
        left().clear();
        right().clear();
        return this;
    }

    public ConstraintReference clearVertical() {
        top().clear();
        baseline().clear();
        bottom().clear();
        return this;
    }

    public ConstraintWidget createConstraintWidget() {
        return new ConstraintWidget(getWidth().a(), getHeight().a());
    }

    public ConstraintReference end() {
        if (this.Q != null) {
            this.f2314c0 = State.Constraint.END_TO_START;
        } else {
            this.f2314c0 = State.Constraint.END_TO_END;
        }
        return this;
    }

    public ConstraintReference endToEnd(Object obj) {
        this.f2314c0 = State.Constraint.END_TO_END;
        this.R = obj;
        return this;
    }

    public ConstraintReference endToStart(Object obj) {
        this.f2314c0 = State.Constraint.END_TO_START;
        this.Q = obj;
        return this;
    }

    public float getAlpha() {
        return this.G;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public ConstraintWidget getConstraintWidget() {
        if (this.f2322g0 == null) {
            ConstraintWidget createConstraintWidget = createConstraintWidget();
            this.f2322g0 = createConstraintWidget;
            createConstraintWidget.setCompanionWidget(this.f2320f0);
        }
        return this.f2322g0;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public Facade getFacade() {
        return this.f2315d;
    }

    public Dimension getHeight() {
        return this.f2318e0;
    }

    public int getHorizontalChainStyle() {
        return this.f2317e;
    }

    public float getHorizontalChainWeight() {
        return this.f2321g;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public Object getKey() {
        return this.f2309a;
    }

    public float getPivotX() {
        return this.f2342y;
    }

    public float getPivotY() {
        return this.f2343z;
    }

    public float getRotationX() {
        return this.A;
    }

    public float getRotationY() {
        return this.B;
    }

    public float getRotationZ() {
        return this.C;
    }

    public float getScaleX() {
        return this.H;
    }

    public float getScaleY() {
        return this.I;
    }

    public String getTag() {
        return this.f2313c;
    }

    public float getTranslationX() {
        return this.D;
    }

    public float getTranslationY() {
        return this.E;
    }

    public float getTranslationZ() {
        return this.F;
    }

    public int getVerticalChainStyle(int i2) {
        return this.f2319f;
    }

    public float getVerticalChainWeight() {
        return this.f2323h;
    }

    public Object getView() {
        return this.f2320f0;
    }

    public Dimension getWidth() {
        return this.f2316d0;
    }

    public ConstraintReference height(Dimension dimension) {
        return setHeight(dimension);
    }

    public ConstraintReference horizontalBias(float f4) {
        this.f2325i = f4;
        return this;
    }

    public ConstraintReference left() {
        if (this.K != null) {
            this.f2314c0 = State.Constraint.LEFT_TO_LEFT;
        } else {
            this.f2314c0 = State.Constraint.LEFT_TO_RIGHT;
        }
        return this;
    }

    public ConstraintReference leftToLeft(Object obj) {
        this.f2314c0 = State.Constraint.LEFT_TO_LEFT;
        this.K = obj;
        return this;
    }

    public ConstraintReference leftToRight(Object obj) {
        this.f2314c0 = State.Constraint.LEFT_TO_RIGHT;
        this.L = obj;
        return this;
    }

    public ConstraintReference margin(Object obj) {
        return margin(this.f2311b.convertDimension(obj));
    }

    public ConstraintReference marginGone(Object obj) {
        return marginGone(this.f2311b.convertDimension(obj));
    }

    public ConstraintReference pivotX(float f4) {
        this.f2342y = f4;
        return this;
    }

    public ConstraintReference pivotY(float f4) {
        this.f2343z = f4;
        return this;
    }

    public ConstraintReference right() {
        if (this.M != null) {
            this.f2314c0 = State.Constraint.RIGHT_TO_LEFT;
        } else {
            this.f2314c0 = State.Constraint.RIGHT_TO_RIGHT;
        }
        return this;
    }

    public ConstraintReference rightToLeft(Object obj) {
        this.f2314c0 = State.Constraint.RIGHT_TO_LEFT;
        this.M = obj;
        return this;
    }

    public ConstraintReference rightToRight(Object obj) {
        this.f2314c0 = State.Constraint.RIGHT_TO_RIGHT;
        this.N = obj;
        return this;
    }

    public ConstraintReference rotationX(float f4) {
        this.A = f4;
        return this;
    }

    public ConstraintReference rotationY(float f4) {
        this.B = f4;
        return this;
    }

    public ConstraintReference rotationZ(float f4) {
        this.C = f4;
        return this;
    }

    public ConstraintReference scaleX(float f4) {
        this.H = f4;
        return this;
    }

    public ConstraintReference scaleY(float f4) {
        this.I = f4;
        return this;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void setConstraintWidget(ConstraintWidget constraintWidget) {
        if (constraintWidget == null) {
            return;
        }
        this.f2322g0 = constraintWidget;
        constraintWidget.setCompanionWidget(this.f2320f0);
    }

    public void setFacade(Facade facade) {
        this.f2315d = facade;
        if (facade != null) {
            setConstraintWidget(facade.getConstraintWidget());
        }
    }

    public ConstraintReference setHeight(Dimension dimension) {
        this.f2318e0 = dimension;
        return this;
    }

    public void setHorizontalChainStyle(int i2) {
        this.f2317e = i2;
    }

    public void setHorizontalChainWeight(float f4) {
        this.f2321g = f4;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void setKey(Object obj) {
        this.f2309a = obj;
    }

    public void setTag(String str) {
        this.f2313c = str;
    }

    public void setVerticalChainStyle(int i2) {
        this.f2319f = i2;
    }

    public void setVerticalChainWeight(float f4) {
        this.f2323h = f4;
    }

    public void setView(Object obj) {
        this.f2320f0 = obj;
        ConstraintWidget constraintWidget = this.f2322g0;
        if (constraintWidget != null) {
            constraintWidget.setCompanionWidget(obj);
        }
    }

    public ConstraintReference setWidth(Dimension dimension) {
        this.f2316d0 = dimension;
        return this;
    }

    public ConstraintReference start() {
        if (this.O != null) {
            this.f2314c0 = State.Constraint.START_TO_START;
        } else {
            this.f2314c0 = State.Constraint.START_TO_END;
        }
        return this;
    }

    public ConstraintReference startToEnd(Object obj) {
        this.f2314c0 = State.Constraint.START_TO_END;
        this.P = obj;
        return this;
    }

    public ConstraintReference startToStart(Object obj) {
        this.f2314c0 = State.Constraint.START_TO_START;
        this.O = obj;
        return this;
    }

    public ConstraintReference top() {
        if (this.S != null) {
            this.f2314c0 = State.Constraint.TOP_TO_TOP;
        } else {
            this.f2314c0 = State.Constraint.TOP_TO_BOTTOM;
        }
        return this;
    }

    public ConstraintReference topToBottom(Object obj) {
        this.f2314c0 = State.Constraint.TOP_TO_BOTTOM;
        this.T = obj;
        return this;
    }

    public ConstraintReference topToTop(Object obj) {
        this.f2314c0 = State.Constraint.TOP_TO_TOP;
        this.S = obj;
        return this;
    }

    public ConstraintReference translationX(float f4) {
        this.D = f4;
        return this;
    }

    public ConstraintReference translationY(float f4) {
        this.E = f4;
        return this;
    }

    public ConstraintReference translationZ(float f4) {
        this.F = f4;
        return this;
    }

    public void validate() throws IncorrectConstraintException {
        ArrayList arrayList = new ArrayList();
        if (this.K != null && this.L != null) {
            arrayList.add("LeftToLeft and LeftToRight both defined");
        }
        if (this.M != null && this.N != null) {
            arrayList.add("RightToLeft and RightToRight both defined");
        }
        if (this.O != null && this.P != null) {
            arrayList.add("StartToStart and StartToEnd both defined");
        }
        if (this.Q != null && this.R != null) {
            arrayList.add("EndToStart and EndToEnd both defined");
        }
        if ((this.K != null || this.L != null || this.M != null || this.N != null) && (this.O != null || this.P != null || this.Q != null || this.R != null)) {
            arrayList.add("Both left/right and start/end constraints defined");
        }
        if (arrayList.size() > 0) {
            throw new IncorrectConstraintException(arrayList);
        }
    }

    public ConstraintReference verticalBias(float f4) {
        this.f2327j = f4;
        return this;
    }

    public ConstraintReference visibility(int i2) {
        this.J = i2;
        return this;
    }

    public ConstraintReference width(Dimension dimension) {
        return setWidth(dimension);
    }

    public ConstraintReference margin(int i2) {
        State.Constraint constraint = this.f2314c0;
        if (constraint != null) {
            switch (AnonymousClass1.f2344a[constraint.ordinal()]) {
                case 1:
                case 2:
                    this.f2328k = i2;
                    break;
                case 3:
                case 4:
                    this.f2329l = i2;
                    break;
                case 5:
                case 6:
                    this.f2330m = i2;
                    break;
                case 7:
                case 8:
                    this.f2331n = i2;
                    break;
                case 9:
                case 10:
                    this.f2332o = i2;
                    break;
                case 11:
                case 12:
                    this.f2333p = i2;
                    break;
                case 13:
                case 14:
                case 15:
                    this.f2340w = i2;
                    break;
                case 16:
                    this.f2312b0 = i2;
                    break;
            }
        } else {
            this.f2328k = i2;
            this.f2329l = i2;
            this.f2330m = i2;
            this.f2331n = i2;
            this.f2332o = i2;
            this.f2333p = i2;
        }
        return this;
    }

    public ConstraintReference marginGone(int i2) {
        State.Constraint constraint = this.f2314c0;
        if (constraint != null) {
            switch (AnonymousClass1.f2344a[constraint.ordinal()]) {
                case 1:
                case 2:
                    this.f2334q = i2;
                    break;
                case 3:
                case 4:
                    this.f2335r = i2;
                    break;
                case 5:
                case 6:
                    this.f2336s = i2;
                    break;
                case 7:
                case 8:
                    this.f2337t = i2;
                    break;
                case 9:
                case 10:
                    this.f2338u = i2;
                    break;
                case 11:
                case 12:
                    this.f2339v = i2;
                    break;
                case 13:
                case 14:
                case 15:
                    this.f2341x = i2;
                    break;
            }
        } else {
            this.f2334q = i2;
            this.f2335r = i2;
            this.f2336s = i2;
            this.f2337t = i2;
            this.f2338u = i2;
            this.f2339v = i2;
        }
        return this;
    }
}
