package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import com.facebook.common.statfs.StatFsHelper;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.util.e;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class MotionScene {
    private static final int A = -1;
    private static final int B = -2;
    private static final String C = "MotionScene";
    private static final String D = "Transition";
    private static final String E = "OnSwipe";
    private static final String F = "OnClick";
    private static final String G = "StateSet";
    private static final String H = "Include";
    private static final String I = "include";
    private static final String J = "KeyFrameSet";
    private static final String K = "ConstraintSet";
    private static final String L = "ViewTransition";
    public static final int LAYOUT_CALL_MEASURE = 2;
    public static final int LAYOUT_HONOR_REQUEST = 1;
    public static final int LAYOUT_IGNORE_REQUEST = 0;
    static final int M = 0;
    static final int N = 1;
    static final int O = 2;
    static final int P = 3;
    static final int Q = 4;
    static final int R = 5;
    static final int S = 6;
    public static final int UNSET = -1;

    /* renamed from: v  reason: collision with root package name */
    private static final String f3087v = "MotionScene";

    /* renamed from: w  reason: collision with root package name */
    private static final boolean f3088w = false;

    /* renamed from: x  reason: collision with root package name */
    private static final int f3089x = 8;

    /* renamed from: y  reason: collision with root package name */
    static final int f3090y = 0;

    /* renamed from: z  reason: collision with root package name */
    static final int f3091z = 1;

    /* renamed from: a  reason: collision with root package name */
    private final MotionLayout f3092a;

    /* renamed from: n  reason: collision with root package name */
    private MotionEvent f3105n;

    /* renamed from: q  reason: collision with root package name */
    private MotionLayout.MotionTracker f3108q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f3109r;

    /* renamed from: s  reason: collision with root package name */
    final ViewTransitionController f3110s;

    /* renamed from: t  reason: collision with root package name */
    float f3111t;

    /* renamed from: u  reason: collision with root package name */
    float f3112u;

    /* renamed from: b  reason: collision with root package name */
    StateSet f3093b = null;

    /* renamed from: c  reason: collision with root package name */
    Transition f3094c = null;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3095d = false;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<Transition> f3096e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private Transition f3097f = null;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<Transition> f3098g = new ArrayList<>();

    /* renamed from: h  reason: collision with root package name */
    private SparseArray<ConstraintSet> f3099h = new SparseArray<>();

    /* renamed from: i  reason: collision with root package name */
    private HashMap<String, Integer> f3100i = new HashMap<>();

    /* renamed from: j  reason: collision with root package name */
    private SparseIntArray f3101j = new SparseIntArray();

    /* renamed from: k  reason: collision with root package name */
    private boolean f3102k = false;

    /* renamed from: l  reason: collision with root package name */
    private int f3103l = StatFsHelper.f11741h;

    /* renamed from: m  reason: collision with root package name */
    private int f3104m = 0;

    /* renamed from: o  reason: collision with root package name */
    private boolean f3106o = false;

    /* renamed from: p  reason: collision with root package name */
    private boolean f3107p = false;

    public MotionScene(MotionLayout layout) {
        this.f3092a = layout;
        this.f3110s = new ViewTransitionController(layout);
    }

    private boolean A(int key) {
        int i2 = this.f3101j.get(key);
        int size = this.f3101j.size();
        while (i2 > 0) {
            if (i2 == key) {
                return true;
            }
            int i4 = size - 1;
            if (size < 0) {
                return true;
            }
            i2 = this.f3101j.get(i2);
            size = i4;
        }
        return false;
    }

    private boolean C() {
        return this.f3108q != null;
    }

    private void D(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        Transition transition = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                char c4 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                    continue;
                } else if (eventType != 2) {
                    continue;
                } else {
                    String name = xml.getName();
                    if (this.f3102k) {
                        PrintStream printStream = System.out;
                        printStream.println("parsing = " + name);
                    }
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals(K)) {
                                c4 = 5;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case -1239391468:
                            if (name.equals("KeyFrameSet")) {
                                c4 = '\b';
                                break;
                            }
                            c4 = 65535;
                            break;
                        case -687739768:
                            if (name.equals(H)) {
                                c4 = 7;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 61998586:
                            if (name.equals("ViewTransition")) {
                                c4 = '\t';
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 269306229:
                            if (name.equals(D)) {
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 312750793:
                            if (name.equals(F)) {
                                c4 = 3;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 327855227:
                            if (name.equals(E)) {
                                c4 = 2;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 793277014:
                            if (name.equals(TypedValues.MotionScene.NAME)) {
                                c4 = 0;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 1382829617:
                            if (name.equals(G)) {
                                c4 = 4;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 1942574248:
                            if (name.equals(I)) {
                                c4 = 6;
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
                            I(context, xml);
                            continue;
                        case 1:
                            ArrayList<Transition> arrayList = this.f3096e;
                            Transition transition2 = new Transition(this, context, xml);
                            arrayList.add(transition2);
                            if (this.f3094c == null && !transition2.f3118b) {
                                this.f3094c = transition2;
                                if (transition2.f3128l != null) {
                                    this.f3094c.f3128l.setRTL(this.f3109r);
                                }
                            }
                            if (transition2.f3118b) {
                                if (transition2.f3119c == -1) {
                                    this.f3097f = transition2;
                                } else {
                                    this.f3098g.add(transition2);
                                }
                                this.f3096e.remove(transition2);
                            }
                            transition = transition2;
                            continue;
                        case 2:
                            if (transition == null) {
                                String resourceEntryName = context.getResources().getResourceEntryName(resourceId);
                                int lineNumber = xml.getLineNumber();
                                StringBuilder sb = new StringBuilder();
                                sb.append(" OnSwipe (");
                                sb.append(resourceEntryName);
                                sb.append(".xml:");
                                sb.append(lineNumber);
                                sb.append(")");
                            }
                            if (transition != null) {
                                transition.f3128l = new TouchResponse(context, this.f3092a, xml);
                                continue;
                            } else {
                                continue;
                            }
                        case 3:
                            if (transition != null) {
                                transition.addOnClick(context, xml);
                                continue;
                            } else {
                                continue;
                            }
                        case 4:
                            this.f3093b = new StateSet(context, xml);
                            continue;
                        case 5:
                            F(context, xml);
                            continue;
                        case 6:
                        case 7:
                            H(context, xml);
                            continue;
                        case '\b':
                            KeyFrames keyFrames = new KeyFrames(context, xml);
                            if (transition != null) {
                                transition.f3127k.add(keyFrames);
                                continue;
                            } else {
                                continue;
                            }
                        case '\t':
                            this.f3110s.add(new ViewTransition(context, xml));
                            continue;
                        default:
                            continue;
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int F(Context context, XmlPullParser parser) {
        char c4;
        char c5;
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.setForceId(false);
        int attributeCount = parser.getAttributeCount();
        int i2 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < attributeCount; i5++) {
            String attributeName = parser.getAttributeName(i5);
            String attributeValue = parser.getAttributeValue(i5);
            if (this.f3102k) {
                PrintStream printStream = System.out;
                printStream.println("id string = " + attributeValue);
            }
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -1496482599:
                    if (attributeName.equals("deriveConstraintsFrom")) {
                        c4 = 0;
                        break;
                    }
                    c4 = 65535;
                    break;
                case -1153153640:
                    if (attributeName.equals("constraintRotate")) {
                        c4 = 1;
                        break;
                    }
                    c4 = 65535;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        c4 = 2;
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
                    i4 = k(context, attributeValue);
                    break;
                case 1:
                    try {
                        constraintSet.mRotate = Integer.parseInt(attributeValue);
                        break;
                    } catch (NumberFormatException unused) {
                        attributeValue.hashCode();
                        switch (attributeValue.hashCode()) {
                            case -768416914:
                                if (attributeValue.equals("x_left")) {
                                    c5 = 0;
                                    break;
                                }
                                c5 = 65535;
                                break;
                            case 3317767:
                                if (attributeValue.equals("left")) {
                                    c5 = 1;
                                    break;
                                }
                                c5 = 65535;
                                break;
                            case 3387192:
                                if (attributeValue.equals("none")) {
                                    c5 = 2;
                                    break;
                                }
                                c5 = 65535;
                                break;
                            case 108511772:
                                if (attributeValue.equals("right")) {
                                    c5 = 3;
                                    break;
                                }
                                c5 = 65535;
                                break;
                            case 1954540437:
                                if (attributeValue.equals("x_right")) {
                                    c5 = 4;
                                    break;
                                }
                                c5 = 65535;
                                break;
                            default:
                                c5 = 65535;
                                break;
                        }
                        switch (c5) {
                            case 0:
                                constraintSet.mRotate = 4;
                                continue;
                            case 1:
                                constraintSet.mRotate = 2;
                                continue;
                            case 2:
                                constraintSet.mRotate = 0;
                                continue;
                            case 3:
                                constraintSet.mRotate = 1;
                                continue;
                            case 4:
                                constraintSet.mRotate = 3;
                                continue;
                        }
                    }
                    break;
                case 2:
                    i2 = k(context, attributeValue);
                    this.f3100i.put(stripID(attributeValue), Integer.valueOf(i2));
                    constraintSet.mIdString = Debug.getName(context, i2);
                    break;
            }
        }
        if (i2 != -1) {
            if (this.f3092a.F0 != 0) {
                constraintSet.setValidateOnParse(true);
            }
            constraintSet.load(context, parser);
            if (i4 != -1) {
                this.f3101j.put(i2, i4);
            }
            this.f3099h.put(i2, constraintSet);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int G(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && K.equals(name)) {
                    return F(context, xml);
                }
            }
            return -1;
        } catch (IOException e4) {
            e4.printStackTrace();
            return -1;
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
            return -1;
        }
    }

    private void H(Context context, XmlPullParser mainParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(mainParser), R.styleable.include);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.include_constraintSet) {
                G(context, obtainStyledAttributes.getResourceId(index, -1));
            }
        }
        obtainStyledAttributes.recycle();
    }

    private void I(Context context, XmlPullParser parser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.MotionScene);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.MotionScene_defaultDuration) {
                int i4 = obtainStyledAttributes.getInt(index, this.f3103l);
                this.f3103l = i4;
                if (i4 < 8) {
                    this.f3103l = 8;
                }
            } else if (index == R.styleable.MotionScene_layoutDuringTransition) {
                this.f3104m = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    private void M(int key, MotionLayout motionLayout) {
        ConstraintSet constraintSet = this.f3099h.get(key);
        constraintSet.derivedState = constraintSet.mIdString;
        int i2 = this.f3101j.get(key);
        if (i2 > 0) {
            M(i2, motionLayout);
            ConstraintSet constraintSet2 = this.f3099h.get(i2);
            if (constraintSet2 == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("ERROR! invalid deriveConstraintsFrom: @id/");
                sb.append(Debug.getName(this.f3092a.getContext(), i2));
                return;
            }
            constraintSet.derivedState += e.F0 + constraintSet2.derivedState;
            constraintSet.readFallback(constraintSet2);
        } else {
            constraintSet.derivedState += "  layout";
            constraintSet.readFallback(motionLayout);
        }
        constraintSet.applyDeltaFrom(constraintSet);
    }

    private int k(Context context, String idString) {
        int i2;
        if (idString.contains(e.F0)) {
            i2 = context.getResources().getIdentifier(idString.substring(idString.indexOf(47) + 1), "id", context.getPackageName());
            if (this.f3102k) {
                PrintStream printStream = System.out;
                printStream.println("id getMap res = " + i2);
            }
        } else {
            i2 = -1;
        }
        return (i2 != -1 || idString.length() <= 1) ? i2 : Integer.parseInt(idString.substring(1));
    }

    private int l(Transition transition) {
        int i2 = transition.f3117a;
        if (i2 != -1) {
            for (int i4 = 0; i4 < this.f3096e.size(); i4++) {
                if (this.f3096e.get(i4).f3117a == i2) {
                    return i4;
                }
            }
            return -1;
        }
        throw new IllegalArgumentException("The transition must have an id");
    }

    static String n(Context context, int resourceId, XmlPullParser pullParser) {
        return ".(" + Debug.getName(context, resourceId) + ".xml:" + pullParser.getLineNumber() + ") \"" + pullParser.getName() + m.a.f72569g;
    }

    private int s(int stateId) {
        int stateGetConstraintID;
        StateSet stateSet = this.f3093b;
        return (stateSet == null || (stateGetConstraintID = stateSet.stateGetConstraintID(stateId, -1, -1)) == -1) ? stateId : stateGetConstraintID;
    }

    public static String stripID(String id) {
        if (id == null) {
            return "";
        }
        int indexOf = id.indexOf(47);
        return indexOf < 0 ? id : id.substring(indexOf + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B(View view, int position) {
        Transition transition = this.f3094c;
        if (transition == null) {
            return false;
        }
        Iterator it2 = transition.f3127k.iterator();
        while (it2.hasNext()) {
            Iterator<Key> it3 = ((KeyFrames) it2.next()).getKeyFramesForView(view.getId()).iterator();
            while (it3.hasNext()) {
                if (it3.next().f2719a == position) {
                    return true;
                }
            }
        }
        return false;
    }

    protected void E(boolean changed, int left, int top, int right, int bottom) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J(float dx, float dy) {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return;
        }
        this.f3094c.f3128l.n(dx, dy);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K(float dx, float dy) {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return;
        }
        this.f3094c.f3128l.o(dx, dy);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(MotionEvent event, int currentState, MotionLayout motionLayout) {
        MotionLayout.MotionTracker motionTracker;
        MotionEvent motionEvent;
        RectF rectF = new RectF();
        if (this.f3108q == null) {
            this.f3108q = this.f3092a.m0();
        }
        this.f3108q.addMovement(event);
        if (currentState != -1) {
            int action = event.getAction();
            boolean z3 = false;
            if (action != 0) {
                if (action == 2 && !this.f3106o) {
                    float rawY = event.getRawY() - this.f3112u;
                    float rawX = event.getRawX() - this.f3111t;
                    if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent = this.f3105n) == null) {
                        return;
                    }
                    Transition bestTransitionFor = bestTransitionFor(currentState, rawX, rawY, motionEvent);
                    if (bestTransitionFor != null) {
                        motionLayout.setTransition(bestTransitionFor);
                        RectF i2 = this.f3094c.f3128l.i(this.f3092a, rectF);
                        if (i2 != null && !i2.contains(this.f3105n.getX(), this.f3105n.getY())) {
                            z3 = true;
                        }
                        this.f3107p = z3;
                        this.f3094c.f3128l.r(this.f3111t, this.f3112u);
                    }
                }
            } else {
                this.f3111t = event.getRawX();
                this.f3112u = event.getRawY();
                this.f3105n = event;
                this.f3106o = false;
                if (this.f3094c.f3128l != null) {
                    RectF d4 = this.f3094c.f3128l.d(this.f3092a, rectF);
                    if (d4 == null || d4.contains(this.f3105n.getX(), this.f3105n.getY())) {
                        RectF i4 = this.f3094c.f3128l.i(this.f3092a, rectF);
                        if (i4 != null && !i4.contains(this.f3105n.getX(), this.f3105n.getY())) {
                            this.f3107p = true;
                        } else {
                            this.f3107p = false;
                        }
                        this.f3094c.f3128l.q(this.f3111t, this.f3112u);
                        return;
                    }
                    this.f3105n = null;
                    this.f3106o = true;
                    return;
                }
                return;
            }
        }
        if (this.f3106o) {
            return;
        }
        Transition transition = this.f3094c;
        if (transition != null && transition.f3128l != null && !this.f3107p) {
            this.f3094c.f3128l.l(event, this.f3108q, currentState, this);
        }
        this.f3111t = event.getRawX();
        this.f3112u = event.getRawY();
        if (event.getAction() != 1 || (motionTracker = this.f3108q) == null) {
            return;
        }
        motionTracker.recycle();
        this.f3108q = null;
        int i5 = motionLayout.f2986n0;
        if (i5 != -1) {
            f(motionLayout, i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N(MotionLayout motionLayout) {
        for (int i2 = 0; i2 < this.f3099h.size(); i2++) {
            int keyAt = this.f3099h.keyAt(i2);
            if (A(keyAt)) {
                return;
            }
            M(keyAt, motionLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0013, code lost:
        if (r2 != (-1)) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void O(int r7, int r8) {
        /*
            r6 = this;
            androidx.constraintlayout.widget.StateSet r0 = r6.f3093b
            r1 = -1
            if (r0 == 0) goto L16
            int r0 = r0.stateGetConstraintID(r7, r1, r1)
            if (r0 == r1) goto Lc
            goto Ld
        Lc:
            r0 = r7
        Ld:
            androidx.constraintlayout.widget.StateSet r2 = r6.f3093b
            int r2 = r2.stateGetConstraintID(r8, r1, r1)
            if (r2 == r1) goto L17
            goto L18
        L16:
            r0 = r7
        L17:
            r2 = r8
        L18:
            androidx.constraintlayout.motion.widget.MotionScene$Transition r3 = r6.f3094c
            if (r3 == 0) goto L2b
            int r3 = androidx.constraintlayout.motion.widget.MotionScene.Transition.a(r3)
            if (r3 != r8) goto L2b
            androidx.constraintlayout.motion.widget.MotionScene$Transition r3 = r6.f3094c
            int r3 = androidx.constraintlayout.motion.widget.MotionScene.Transition.c(r3)
            if (r3 != r7) goto L2b
            return
        L2b:
            java.util.ArrayList<androidx.constraintlayout.motion.widget.MotionScene$Transition> r3 = r6.f3096e
            java.util.Iterator r3 = r3.iterator()
        L31:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L6b
            java.lang.Object r4 = r3.next()
            androidx.constraintlayout.motion.widget.MotionScene$Transition r4 = (androidx.constraintlayout.motion.widget.MotionScene.Transition) r4
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.a(r4)
            if (r5 != r2) goto L49
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.c(r4)
            if (r5 == r0) goto L55
        L49:
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.a(r4)
            if (r5 != r8) goto L31
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.c(r4)
            if (r5 != r7) goto L31
        L55:
            r6.f3094c = r4
            if (r4 == 0) goto L6a
            androidx.constraintlayout.motion.widget.TouchResponse r7 = androidx.constraintlayout.motion.widget.MotionScene.Transition.l(r4)
            if (r7 == 0) goto L6a
            androidx.constraintlayout.motion.widget.MotionScene$Transition r7 = r6.f3094c
            androidx.constraintlayout.motion.widget.TouchResponse r7 = androidx.constraintlayout.motion.widget.MotionScene.Transition.l(r7)
            boolean r8 = r6.f3109r
            r7.setRTL(r8)
        L6a:
            return
        L6b:
            androidx.constraintlayout.motion.widget.MotionScene$Transition r7 = r6.f3097f
            java.util.ArrayList<androidx.constraintlayout.motion.widget.MotionScene$Transition> r3 = r6.f3098g
            java.util.Iterator r3 = r3.iterator()
        L73:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L87
            java.lang.Object r4 = r3.next()
            androidx.constraintlayout.motion.widget.MotionScene$Transition r4 = (androidx.constraintlayout.motion.widget.MotionScene.Transition) r4
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.a(r4)
            if (r5 != r8) goto L73
            r7 = r4
            goto L73
        L87:
            androidx.constraintlayout.motion.widget.MotionScene$Transition r8 = new androidx.constraintlayout.motion.widget.MotionScene$Transition
            r8.<init>(r6, r7)
            androidx.constraintlayout.motion.widget.MotionScene.Transition.d(r8, r0)
            androidx.constraintlayout.motion.widget.MotionScene.Transition.b(r8, r2)
            if (r0 == r1) goto L99
            java.util.ArrayList<androidx.constraintlayout.motion.widget.MotionScene$Transition> r7 = r6.f3096e
            r7.add(r8)
        L99:
            r6.f3094c = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionScene.O(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return;
        }
        this.f3094c.f3128l.s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean Q() {
        Iterator<Transition> it2 = this.f3096e.iterator();
        while (it2.hasNext()) {
            if (it2.next().f3128l != null) {
                return true;
            }
        }
        Transition transition = this.f3094c;
        return (transition == null || transition.f3128l == null) ? false : true;
    }

    public void addOnClickListeners(MotionLayout motionLayout, int currentState) {
        Iterator<Transition> it2 = this.f3096e.iterator();
        while (it2.hasNext()) {
            Transition next = it2.next();
            if (next.f3129m.size() > 0) {
                Iterator it3 = next.f3129m.iterator();
                while (it3.hasNext()) {
                    ((Transition.TransitionOnClick) it3.next()).removeOnClickListeners(motionLayout);
                }
            }
        }
        Iterator<Transition> it4 = this.f3098g.iterator();
        while (it4.hasNext()) {
            Transition next2 = it4.next();
            if (next2.f3129m.size() > 0) {
                Iterator it5 = next2.f3129m.iterator();
                while (it5.hasNext()) {
                    ((Transition.TransitionOnClick) it5.next()).removeOnClickListeners(motionLayout);
                }
            }
        }
        Iterator<Transition> it6 = this.f3096e.iterator();
        while (it6.hasNext()) {
            Transition next3 = it6.next();
            if (next3.f3129m.size() > 0) {
                Iterator it7 = next3.f3129m.iterator();
                while (it7.hasNext()) {
                    ((Transition.TransitionOnClick) it7.next()).addOnClickListeners(motionLayout, currentState, next3);
                }
            }
        }
        Iterator<Transition> it8 = this.f3098g.iterator();
        while (it8.hasNext()) {
            Transition next4 = it8.next();
            if (next4.f3129m.size() > 0) {
                Iterator it9 = next4.f3129m.iterator();
                while (it9.hasNext()) {
                    ((Transition.TransitionOnClick) it9.next()).addOnClickListeners(motionLayout, currentState, next4);
                }
            }
        }
    }

    public void addTransition(Transition transition) {
        int l4 = l(transition);
        if (l4 == -1) {
            this.f3096e.add(transition);
        } else {
            this.f3096e.set(l4, transition);
        }
    }

    public boolean applyViewTransition(int viewTransitionId, MotionController motionController) {
        return this.f3110s.d(viewTransitionId, motionController);
    }

    public Transition bestTransitionFor(int currentState, float dx, float dy, MotionEvent lastTouchDown) {
        if (currentState != -1) {
            List<Transition> transitionsWithState = getTransitionsWithState(currentState);
            float f4 = 0.0f;
            Transition transition = null;
            RectF rectF = new RectF();
            for (Transition transition2 : transitionsWithState) {
                if (!transition2.f3131o && transition2.f3128l != null) {
                    transition2.f3128l.setRTL(this.f3109r);
                    RectF i2 = transition2.f3128l.i(this.f3092a, rectF);
                    if (i2 == null || lastTouchDown == null || i2.contains(lastTouchDown.getX(), lastTouchDown.getY())) {
                        RectF d4 = transition2.f3128l.d(this.f3092a, rectF);
                        if (d4 == null || lastTouchDown == null || d4.contains(lastTouchDown.getX(), lastTouchDown.getY())) {
                            float a4 = transition2.f3128l.a(dx, dy);
                            if (transition2.f3128l.f3170l && lastTouchDown != null) {
                                float x3 = lastTouchDown.getX() - transition2.f3128l.f3167i;
                                float y3 = lastTouchDown.getY() - transition2.f3128l.f3168j;
                                a4 = ((float) (Math.atan2(dy + y3, dx + x3) - Math.atan2(x3, y3))) * 10.0f;
                            }
                            float f5 = a4 * (transition2.f3119c == currentState ? -1.0f : 1.1f);
                            if (f5 > f4) {
                                transition = transition2;
                                f4 = f5;
                            }
                        }
                    }
                }
            }
            return transition;
        }
        return this.f3094c;
    }

    public void disableAutoTransition(boolean disable) {
        this.f3095d = disable;
    }

    public void enableViewTransition(int id, boolean enable) {
        this.f3110s.e(id, enable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(MotionLayout motionLayout, int currentState) {
        Transition transition;
        if (C() || this.f3095d) {
            return false;
        }
        Iterator<Transition> it2 = this.f3096e.iterator();
        while (it2.hasNext()) {
            Transition next = it2.next();
            if (next.f3130n != 0 && ((transition = this.f3094c) != next || !transition.isTransitionFlag(2))) {
                if (currentState != next.f3120d || (next.f3130n != 4 && next.f3130n != 2)) {
                    if (currentState == next.f3119c && (next.f3130n == 3 || next.f3130n == 1)) {
                        MotionLayout.TransitionState transitionState = MotionLayout.TransitionState.FINISHED;
                        motionLayout.setState(transitionState);
                        motionLayout.setTransition(next);
                        if (next.f3130n == 3) {
                            motionLayout.transitionToStart();
                            motionLayout.setState(MotionLayout.TransitionState.SETUP);
                            motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        } else {
                            motionLayout.setProgress(0.0f);
                            motionLayout.b0(true);
                            motionLayout.setState(MotionLayout.TransitionState.SETUP);
                            motionLayout.setState(MotionLayout.TransitionState.MOVING);
                            motionLayout.setState(transitionState);
                            motionLayout.n0();
                        }
                        return true;
                    }
                } else {
                    MotionLayout.TransitionState transitionState2 = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState2);
                    motionLayout.setTransition(next);
                    if (next.f3130n == 4) {
                        motionLayout.transitionToEnd();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.b0(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState2);
                        motionLayout.n0();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return 0;
        }
        return this.f3094c.f3128l.getAutoCompleteMode();
    }

    public int gatPathMotionArc() {
        Transition transition = this.f3094c;
        if (transition != null) {
            return transition.f3132p;
        }
        return -1;
    }

    public ConstraintSet getConstraintSet(Context context, String id) {
        if (this.f3102k) {
            PrintStream printStream = System.out;
            printStream.println("id " + id);
            PrintStream printStream2 = System.out;
            printStream2.println("size " + this.f3099h.size());
        }
        for (int i2 = 0; i2 < this.f3099h.size(); i2++) {
            int keyAt = this.f3099h.keyAt(i2);
            String resourceName = context.getResources().getResourceName(keyAt);
            if (this.f3102k) {
                PrintStream printStream3 = System.out;
                printStream3.println("Id for <" + i2 + "> is <" + resourceName + "> looking for <" + id + SimpleComparison.GREATER_THAN_OPERATION);
            }
            if (id.equals(resourceName)) {
                return this.f3099h.get(keyAt);
            }
        }
        return null;
    }

    public int[] getConstraintSetIds() {
        int size = this.f3099h.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = this.f3099h.keyAt(i2);
        }
        return iArr;
    }

    public ArrayList<Transition> getDefinedTransitions() {
        return this.f3096e;
    }

    public int getDuration() {
        Transition transition = this.f3094c;
        if (transition != null) {
            return transition.f3124h;
        }
        return this.f3103l;
    }

    public Interpolator getInterpolator() {
        int i2 = this.f3094c.f3121e;
        if (i2 != -2) {
            if (i2 == -1) {
                final Easing interpolator = Easing.getInterpolator(this.f3094c.f3122f);
                return new Interpolator(this) { // from class: androidx.constraintlayout.motion.widget.MotionScene.1
                    @Override // android.animation.TimeInterpolator
                    public float getInterpolation(float v3) {
                        return (float) interpolator.get(v3);
                    }
                };
            } else if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 4) {
                            if (i2 != 5) {
                                if (i2 != 6) {
                                    return null;
                                }
                                return new AnticipateInterpolator();
                            }
                            return new OvershootInterpolator();
                        }
                        return new BounceInterpolator();
                    }
                    return new DecelerateInterpolator();
                }
                return new AccelerateInterpolator();
            } else {
                return new AccelerateDecelerateInterpolator();
            }
        }
        return AnimationUtils.loadInterpolator(this.f3092a.getContext(), this.f3094c.f3123g);
    }

    public void getKeyFrames(MotionController motionController) {
        Transition transition = this.f3094c;
        if (transition != null) {
            Iterator it2 = transition.f3127k.iterator();
            while (it2.hasNext()) {
                ((KeyFrames) it2.next()).addFrames(motionController);
            }
            return;
        }
        Transition transition2 = this.f3097f;
        if (transition2 != null) {
            Iterator it3 = transition2.f3127k.iterator();
            while (it3.hasNext()) {
                ((KeyFrames) it3.next()).addFrames(motionController);
            }
        }
    }

    public float getPathPercent(View view, int position) {
        return 0.0f;
    }

    public float getStaggered() {
        Transition transition = this.f3094c;
        if (transition != null) {
            return transition.f3125i;
        }
        return 0.0f;
    }

    public Transition getTransitionById(int id) {
        Iterator<Transition> it2 = this.f3096e.iterator();
        while (it2.hasNext()) {
            Transition next = it2.next();
            if (next.f3117a == id) {
                return next;
            }
        }
        return null;
    }

    public List<Transition> getTransitionsWithState(int stateId) {
        int s3 = s(stateId);
        ArrayList arrayList = new ArrayList();
        Iterator<Transition> it2 = this.f3096e.iterator();
        while (it2.hasNext()) {
            Transition next = it2.next();
            if (next.f3120d == s3 || next.f3119c == s3) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConstraintSet h(int id) {
        return i(id, -1, -1);
    }

    ConstraintSet i(int id, int width, int height) {
        int stateGetConstraintID;
        if (this.f3102k) {
            PrintStream printStream = System.out;
            printStream.println("id " + id);
            PrintStream printStream2 = System.out;
            printStream2.println("size " + this.f3099h.size());
        }
        StateSet stateSet = this.f3093b;
        if (stateSet != null && (stateGetConstraintID = stateSet.stateGetConstraintID(id, width, height)) != -1) {
            id = stateGetConstraintID;
        }
        if (this.f3099h.get(id) == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Warning could not find ConstraintSet id/");
            sb.append(Debug.getName(this.f3092a.getContext(), id));
            sb.append(" In MotionScene");
            SparseArray<ConstraintSet> sparseArray = this.f3099h;
            return sparseArray.get(sparseArray.keyAt(0));
        }
        return this.f3099h.get(id);
    }

    public boolean isViewTransitionEnabled(int id) {
        return this.f3110s.g(id);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        Transition transition = this.f3094c;
        if (transition == null) {
            return -1;
        }
        return transition.f3119c;
    }

    public int lookUpConstraintId(String id) {
        Integer num = this.f3100i.get(id);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String lookUpConstraintName(int id) {
        for (Map.Entry<String, Integer> entry : this.f3100i.entrySet()) {
            Integer value = entry.getValue();
            if (value != null && value.intValue() == id) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Key m(Context context, int type, int target, int position) {
        Transition transition = this.f3094c;
        if (transition == null) {
            return null;
        }
        Iterator it2 = transition.f3127k.iterator();
        while (it2.hasNext()) {
            KeyFrames keyFrames = (KeyFrames) it2.next();
            for (Integer num : keyFrames.getKeys()) {
                if (target == num.intValue()) {
                    Iterator<Key> it3 = keyFrames.getKeyFramesForView(num.intValue()).iterator();
                    while (it3.hasNext()) {
                        Key next = it3.next();
                        if (next.f2719a == position && next.f2722d == type) {
                            return next;
                        }
                    }
                    continue;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float o() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return 0.0f;
        }
        return this.f3094c.f3128l.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float p() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return 0.0f;
        }
        return this.f3094c.f3128l.getMaxVelocity();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return false;
        }
        return this.f3094c.f3128l.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float r(float dx, float dy) {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return 0.0f;
        }
        return this.f3094c.f3128l.h(dx, dy);
    }

    public void removeTransition(Transition transition) {
        int l4 = l(transition);
        if (l4 != -1) {
            this.f3096e.remove(l4);
        }
    }

    public void setConstraintSet(int id, ConstraintSet set) {
        this.f3099h.put(id, set);
    }

    public void setDuration(int duration) {
        Transition transition = this.f3094c;
        if (transition != null) {
            transition.setDuration(duration);
        } else {
            this.f3103l = duration;
        }
    }

    public void setKeyframe(View view, int position, String name, Object value) {
        Transition transition = this.f3094c;
        if (transition == null) {
            return;
        }
        Iterator it2 = transition.f3127k.iterator();
        while (it2.hasNext()) {
            Iterator<Key> it3 = ((KeyFrames) it2.next()).getKeyFramesForView(view.getId()).iterator();
            while (it3.hasNext()) {
                if (it3.next().f2719a == position) {
                    if (value != null) {
                        ((Float) value).floatValue();
                    }
                    name.equalsIgnoreCase("app:PerpendicularPath_percent");
                }
            }
        }
    }

    public void setRtl(boolean rtl) {
        this.f3109r = rtl;
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return;
        }
        this.f3094c.f3128l.setRTL(this.f3109r);
    }

    public void setTransition(Transition transition) {
        this.f3094c = transition;
        if (transition == null || transition.f3128l == null) {
            return;
        }
        this.f3094c.f3128l.setRTL(this.f3109r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int t() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return 0;
        }
        return this.f3094c.f3128l.getSpringBoundary();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float u() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return 0.0f;
        }
        return this.f3094c.f3128l.getSpringDamping();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float v() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return 0.0f;
        }
        return this.f3094c.f3128l.getSpringMass();
    }

    public boolean validateLayout(MotionLayout layout) {
        return layout == this.f3092a && layout.G == this;
    }

    public void viewTransition(int id, View... view) {
        this.f3110s.l(id, view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float w() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return 0.0f;
        }
        return this.f3094c.f3128l.getSpringStiffness();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float x() {
        Transition transition = this.f3094c;
        if (transition == null || transition.f3128l == null) {
            return 0.0f;
        }
        return this.f3094c.f3128l.getSpringStopThreshold();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int y() {
        Transition transition = this.f3094c;
        if (transition == null) {
            return -1;
        }
        return transition.f3120d;
    }

    int z(int stateId) {
        Iterator<Transition> it2 = this.f3096e.iterator();
        while (it2.hasNext()) {
            if (it2.next().f3120d == stateId) {
                return 0;
            }
        }
        return 1;
    }

    /* loaded from: classes.dex */
    public static class Transition {
        public static final int AUTO_ANIMATE_TO_END = 4;
        public static final int AUTO_ANIMATE_TO_START = 3;
        public static final int AUTO_JUMP_TO_END = 2;
        public static final int AUTO_JUMP_TO_START = 1;
        public static final int AUTO_NONE = 0;
        public static final int INTERPOLATE_ANTICIPATE = 6;
        public static final int INTERPOLATE_BOUNCE = 4;
        public static final int INTERPOLATE_EASE_IN = 1;
        public static final int INTERPOLATE_EASE_IN_OUT = 0;
        public static final int INTERPOLATE_EASE_OUT = 2;
        public static final int INTERPOLATE_LINEAR = 3;
        public static final int INTERPOLATE_OVERSHOOT = 5;
        public static final int INTERPOLATE_REFERENCE_ID = -2;
        public static final int INTERPOLATE_SPLINE_STRING = -1;

        /* renamed from: s  reason: collision with root package name */
        static final int f3114s = 1;

        /* renamed from: t  reason: collision with root package name */
        static final int f3115t = 2;

        /* renamed from: u  reason: collision with root package name */
        static final int f3116u = 4;

        /* renamed from: a  reason: collision with root package name */
        private int f3117a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f3118b;

        /* renamed from: c  reason: collision with root package name */
        private int f3119c;

        /* renamed from: d  reason: collision with root package name */
        private int f3120d;

        /* renamed from: e  reason: collision with root package name */
        private int f3121e;

        /* renamed from: f  reason: collision with root package name */
        private String f3122f;

        /* renamed from: g  reason: collision with root package name */
        private int f3123g;

        /* renamed from: h  reason: collision with root package name */
        private int f3124h;

        /* renamed from: i  reason: collision with root package name */
        private float f3125i;

        /* renamed from: j  reason: collision with root package name */
        private final MotionScene f3126j;

        /* renamed from: k  reason: collision with root package name */
        private ArrayList<KeyFrames> f3127k;

        /* renamed from: l  reason: collision with root package name */
        private TouchResponse f3128l;

        /* renamed from: m  reason: collision with root package name */
        private ArrayList<TransitionOnClick> f3129m;

        /* renamed from: n  reason: collision with root package name */
        private int f3130n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f3131o;

        /* renamed from: p  reason: collision with root package name */
        private int f3132p;

        /* renamed from: q  reason: collision with root package name */
        private int f3133q;

        /* renamed from: r  reason: collision with root package name */
        private int f3134r;

        Transition(MotionScene motionScene, Transition global) {
            this.f3117a = -1;
            this.f3118b = false;
            this.f3119c = -1;
            this.f3120d = -1;
            this.f3121e = 0;
            this.f3122f = null;
            this.f3123g = -1;
            this.f3124h = StatFsHelper.f11741h;
            this.f3125i = 0.0f;
            this.f3127k = new ArrayList<>();
            this.f3128l = null;
            this.f3129m = new ArrayList<>();
            this.f3130n = 0;
            this.f3131o = false;
            this.f3132p = -1;
            this.f3133q = 0;
            this.f3134r = 0;
            this.f3126j = motionScene;
            this.f3124h = motionScene.f3103l;
            if (global != null) {
                this.f3132p = global.f3132p;
                this.f3121e = global.f3121e;
                this.f3122f = global.f3122f;
                this.f3123g = global.f3123g;
                this.f3124h = global.f3124h;
                this.f3127k = global.f3127k;
                this.f3125i = global.f3125i;
                this.f3133q = global.f3133q;
            }
        }

        private void t(MotionScene motionScene, Context context, TypedArray a4) {
            int indexCount = a4.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = a4.getIndex(i2);
                if (index == R.styleable.Transition_constraintSetEnd) {
                    this.f3119c = a4.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3119c);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        constraintSet.load(context, this.f3119c);
                        motionScene.f3099h.append(this.f3119c, constraintSet);
                    } else if ("xml".equals(resourceTypeName)) {
                        this.f3119c = motionScene.G(context, this.f3119c);
                    }
                } else if (index == R.styleable.Transition_constraintSetStart) {
                    this.f3120d = a4.getResourceId(index, this.f3120d);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.f3120d);
                    if ("layout".equals(resourceTypeName2)) {
                        ConstraintSet constraintSet2 = new ConstraintSet();
                        constraintSet2.load(context, this.f3120d);
                        motionScene.f3099h.append(this.f3120d, constraintSet2);
                    } else if ("xml".equals(resourceTypeName2)) {
                        this.f3120d = motionScene.G(context, this.f3120d);
                    }
                } else if (index == R.styleable.Transition_motionInterpolator) {
                    int i4 = a4.peekValue(index).type;
                    if (i4 == 1) {
                        int resourceId = a4.getResourceId(index, -1);
                        this.f3123g = resourceId;
                        if (resourceId != -1) {
                            this.f3121e = -2;
                        }
                    } else if (i4 == 3) {
                        String string = a4.getString(index);
                        this.f3122f = string;
                        if (string != null) {
                            if (string.indexOf(e.F0) > 0) {
                                this.f3123g = a4.getResourceId(index, -1);
                                this.f3121e = -2;
                            } else {
                                this.f3121e = -1;
                            }
                        }
                    } else {
                        this.f3121e = a4.getInteger(index, this.f3121e);
                    }
                } else if (index == R.styleable.Transition_duration) {
                    int i5 = a4.getInt(index, this.f3124h);
                    this.f3124h = i5;
                    if (i5 < 8) {
                        this.f3124h = 8;
                    }
                } else if (index == R.styleable.Transition_staggered) {
                    this.f3125i = a4.getFloat(index, this.f3125i);
                } else if (index == R.styleable.Transition_autoTransition) {
                    this.f3130n = a4.getInteger(index, this.f3130n);
                } else if (index == R.styleable.Transition_android_id) {
                    this.f3117a = a4.getResourceId(index, this.f3117a);
                } else if (index == R.styleable.Transition_transitionDisable) {
                    this.f3131o = a4.getBoolean(index, this.f3131o);
                } else if (index == R.styleable.Transition_pathMotionArc) {
                    this.f3132p = a4.getInteger(index, -1);
                } else if (index == R.styleable.Transition_layoutDuringTransition) {
                    this.f3133q = a4.getInteger(index, 0);
                } else if (index == R.styleable.Transition_transitionFlags) {
                    this.f3134r = a4.getInteger(index, 0);
                }
            }
            if (this.f3120d == -1) {
                this.f3118b = true;
            }
        }

        private void u(MotionScene motionScene, Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.Transition);
            t(motionScene, context, obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }

        public void addKeyFrame(KeyFrames keyFrames) {
            this.f3127k.add(keyFrames);
        }

        public void addOnClick(int id, int action) {
            Iterator<TransitionOnClick> it2 = this.f3129m.iterator();
            while (it2.hasNext()) {
                TransitionOnClick next = it2.next();
                if (next.f3136b == id) {
                    next.f3137c = action;
                    return;
                }
            }
            this.f3129m.add(new TransitionOnClick(this, id, action));
        }

        public String debugString(Context context) {
            String resourceEntryName = this.f3120d == -1 ? "null" : context.getResources().getResourceEntryName(this.f3120d);
            if (this.f3119c == -1) {
                return resourceEntryName + " -> null";
            }
            return resourceEntryName + " -> " + context.getResources().getResourceEntryName(this.f3119c);
        }

        public int getAutoTransition() {
            return this.f3130n;
        }

        public int getDuration() {
            return this.f3124h;
        }

        public int getEndConstraintSetId() {
            return this.f3119c;
        }

        public int getId() {
            return this.f3117a;
        }

        public List<KeyFrames> getKeyFrameList() {
            return this.f3127k;
        }

        public int getLayoutDuringTransition() {
            return this.f3133q;
        }

        public List<TransitionOnClick> getOnClickList() {
            return this.f3129m;
        }

        public int getPathMotionArc() {
            return this.f3132p;
        }

        public float getStagger() {
            return this.f3125i;
        }

        public int getStartConstraintSetId() {
            return this.f3120d;
        }

        public TouchResponse getTouchResponse() {
            return this.f3128l;
        }

        public boolean isEnabled() {
            return !this.f3131o;
        }

        public boolean isTransitionFlag(int flag) {
            return (flag & this.f3134r) != 0;
        }

        public void removeOnClick(int id) {
            TransitionOnClick transitionOnClick;
            Iterator<TransitionOnClick> it2 = this.f3129m.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    transitionOnClick = null;
                    break;
                }
                transitionOnClick = it2.next();
                if (transitionOnClick.f3136b == id) {
                    break;
                }
            }
            if (transitionOnClick != null) {
                this.f3129m.remove(transitionOnClick);
            }
        }

        public void setAutoTransition(int type) {
            this.f3130n = type;
        }

        public void setDuration(int duration) {
            this.f3124h = Math.max(duration, 8);
        }

        public void setEnable(boolean enable) {
            setEnabled(enable);
        }

        public void setEnabled(boolean enable) {
            this.f3131o = !enable;
        }

        public void setInterpolatorInfo(int interpolator, String interpolatorString, int interpolatorID) {
            this.f3121e = interpolator;
            this.f3122f = interpolatorString;
            this.f3123g = interpolatorID;
        }

        public void setLayoutDuringTransition(int mode) {
            this.f3133q = mode;
        }

        public void setOnSwipe(OnSwipe onSwipe) {
            this.f3128l = onSwipe == null ? null : new TouchResponse(this.f3126j.f3092a, onSwipe);
        }

        public void setOnTouchUp(int touchUpMode) {
            TouchResponse touchResponse = getTouchResponse();
            if (touchResponse != null) {
                touchResponse.setTouchUpMode(touchUpMode);
            }
        }

        public void setPathMotionArc(int arcMode) {
            this.f3132p = arcMode;
        }

        public void setStagger(float stagger) {
            this.f3125i = stagger;
        }

        public void setTransitionFlag(int flag) {
            this.f3134r = flag;
        }

        public void addOnClick(Context context, XmlPullParser parser) {
            this.f3129m.add(new TransitionOnClick(context, this, parser));
        }

        /* loaded from: classes.dex */
        public static class TransitionOnClick implements View.OnClickListener {
            public static final int ANIM_TOGGLE = 17;
            public static final int ANIM_TO_END = 1;
            public static final int ANIM_TO_START = 16;
            public static final int JUMP_TO_END = 256;
            public static final int JUMP_TO_START = 4096;

            /* renamed from: a  reason: collision with root package name */
            private final Transition f3135a;

            /* renamed from: b  reason: collision with root package name */
            int f3136b;

            /* renamed from: c  reason: collision with root package name */
            int f3137c;

            public TransitionOnClick(Context context, Transition transition, XmlPullParser parser) {
                this.f3136b = -1;
                this.f3137c = 17;
                this.f3135a = transition;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.OnClick);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i2 = 0; i2 < indexCount; i2++) {
                    int index = obtainStyledAttributes.getIndex(i2);
                    if (index == R.styleable.OnClick_targetId) {
                        this.f3136b = obtainStyledAttributes.getResourceId(index, this.f3136b);
                    } else if (index == R.styleable.OnClick_clickAction) {
                        this.f3137c = obtainStyledAttributes.getInt(index, this.f3137c);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            boolean a(Transition current, MotionLayout tl) {
                Transition transition = this.f3135a;
                if (transition == current) {
                    return true;
                }
                int i2 = transition.f3119c;
                int i4 = this.f3135a.f3120d;
                if (i4 == -1) {
                    return tl.f2986n0 != i2;
                }
                int i5 = tl.f2986n0;
                return i5 == i4 || i5 == i2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r7v3, types: [android.view.View] */
            public void addOnClickListeners(MotionLayout motionLayout, int currentState, Transition transition) {
                int i2 = this.f3136b;
                MotionLayout motionLayout2 = motionLayout;
                if (i2 != -1) {
                    motionLayout2 = motionLayout.findViewById(i2);
                }
                if (motionLayout2 != null) {
                    int i4 = transition.f3120d;
                    int i5 = transition.f3119c;
                    if (i4 == -1) {
                        motionLayout2.setOnClickListener(this);
                        return;
                    }
                    int i6 = this.f3137c;
                    boolean z3 = false;
                    boolean z4 = ((i6 & 1) != 0 && currentState == i4) | ((i6 & 1) != 0 && currentState == i4) | ((i6 & 256) != 0 && currentState == i4) | ((i6 & 16) != 0 && currentState == i5);
                    if ((i6 & 4096) != 0 && currentState == i5) {
                        z3 = true;
                    }
                    if (z4 || z3) {
                        motionLayout2.setOnClickListener(this);
                        return;
                    }
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("OnClick could not find id ");
                sb.append(this.f3136b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MotionLayout motionLayout = this.f3135a.f3126j.f3092a;
                if (motionLayout.isInteractionEnabled()) {
                    if (this.f3135a.f3120d != -1) {
                        Transition transition = this.f3135a.f3126j.f3094c;
                        int i2 = this.f3137c;
                        boolean z3 = false;
                        boolean z4 = ((i2 & 1) == 0 && (i2 & 256) == 0) ? false : true;
                        boolean z5 = ((i2 & 16) == 0 && (i2 & 4096) == 0) ? false : true;
                        if (z4 && z5) {
                            Transition transition2 = this.f3135a.f3126j.f3094c;
                            Transition transition3 = this.f3135a;
                            if (transition2 != transition3) {
                                motionLayout.setTransition(transition3);
                            }
                            if (motionLayout.getCurrentState() != motionLayout.getEndState() && motionLayout.getProgress() <= 0.5f) {
                                z3 = z4;
                                z5 = false;
                            }
                        } else {
                            z3 = z4;
                        }
                        if (a(transition, motionLayout)) {
                            if (z3 && (this.f3137c & 1) != 0) {
                                motionLayout.setTransition(this.f3135a);
                                motionLayout.transitionToEnd();
                                return;
                            } else if (z5 && (this.f3137c & 16) != 0) {
                                motionLayout.setTransition(this.f3135a);
                                motionLayout.transitionToStart();
                                return;
                            } else if (z3 && (this.f3137c & 256) != 0) {
                                motionLayout.setTransition(this.f3135a);
                                motionLayout.setProgress(1.0f);
                                return;
                            } else if (!z5 || (this.f3137c & 4096) == 0) {
                                return;
                            } else {
                                motionLayout.setTransition(this.f3135a);
                                motionLayout.setProgress(0.0f);
                                return;
                            }
                        }
                        return;
                    }
                    int currentState = motionLayout.getCurrentState();
                    if (currentState == -1) {
                        motionLayout.transitionToState(this.f3135a.f3119c);
                        return;
                    }
                    Transition transition4 = new Transition(this.f3135a.f3126j, this.f3135a);
                    transition4.f3120d = currentState;
                    transition4.f3119c = this.f3135a.f3119c;
                    motionLayout.setTransition(transition4);
                    motionLayout.transitionToEnd();
                }
            }

            public void removeOnClickListeners(MotionLayout motionLayout) {
                int i2 = this.f3136b;
                if (i2 == -1) {
                    return;
                }
                View findViewById = motionLayout.findViewById(i2);
                if (findViewById == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(" (*)  could not find id ");
                    sb.append(this.f3136b);
                    return;
                }
                findViewById.setOnClickListener(null);
            }

            public TransitionOnClick(Transition transition, int id, int action) {
                this.f3136b = -1;
                this.f3137c = 17;
                this.f3135a = transition;
                this.f3136b = id;
                this.f3137c = action;
            }
        }

        public Transition(int id, MotionScene motionScene, int constraintSetStartId, int constraintSetEndId) {
            this.f3117a = -1;
            this.f3118b = false;
            this.f3119c = -1;
            this.f3120d = -1;
            this.f3121e = 0;
            this.f3122f = null;
            this.f3123g = -1;
            this.f3124h = StatFsHelper.f11741h;
            this.f3125i = 0.0f;
            this.f3127k = new ArrayList<>();
            this.f3128l = null;
            this.f3129m = new ArrayList<>();
            this.f3130n = 0;
            this.f3131o = false;
            this.f3132p = -1;
            this.f3133q = 0;
            this.f3134r = 0;
            this.f3117a = id;
            this.f3126j = motionScene;
            this.f3120d = constraintSetStartId;
            this.f3119c = constraintSetEndId;
            this.f3124h = motionScene.f3103l;
            this.f3133q = motionScene.f3104m;
        }

        Transition(MotionScene motionScene, Context context, XmlPullParser parser) {
            this.f3117a = -1;
            this.f3118b = false;
            this.f3119c = -1;
            this.f3120d = -1;
            this.f3121e = 0;
            this.f3122f = null;
            this.f3123g = -1;
            this.f3124h = StatFsHelper.f11741h;
            this.f3125i = 0.0f;
            this.f3127k = new ArrayList<>();
            this.f3128l = null;
            this.f3129m = new ArrayList<>();
            this.f3130n = 0;
            this.f3131o = false;
            this.f3132p = -1;
            this.f3133q = 0;
            this.f3134r = 0;
            this.f3124h = motionScene.f3103l;
            this.f3133q = motionScene.f3104m;
            this.f3126j = motionScene;
            u(motionScene, context, Xml.asAttributeSet(parser));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionScene(Context context, MotionLayout layout, int resourceID) {
        this.f3092a = layout;
        this.f3110s = new ViewTransitionController(layout);
        D(context, resourceID);
        SparseArray<ConstraintSet> sparseArray = this.f3099h;
        int i2 = R.id.motion_base;
        sparseArray.put(i2, new ConstraintSet());
        this.f3100i.put("motion_base", Integer.valueOf(i2));
    }
}
