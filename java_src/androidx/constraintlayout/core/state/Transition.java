package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.Motion;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import com.facebook.common.statfs.StatFsHelper;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.http.client.config.CookieSpecs;
/* loaded from: classes.dex */
public class Transition implements TypedValues {
    public static final int END = 1;
    public static final int INTERPOLATED = 2;
    public static final int START = 0;

    /* renamed from: j  reason: collision with root package name */
    static final int f2369j = 0;

    /* renamed from: k  reason: collision with root package name */
    static final int f2370k = 1;

    /* renamed from: l  reason: collision with root package name */
    static final int f2371l = 2;

    /* renamed from: m  reason: collision with root package name */
    static final int f2372m = 3;

    /* renamed from: n  reason: collision with root package name */
    static final int f2373n = 4;

    /* renamed from: o  reason: collision with root package name */
    static final int f2374o = 5;

    /* renamed from: p  reason: collision with root package name */
    static final int f2375p = 6;

    /* renamed from: q  reason: collision with root package name */
    private static final int f2376q = -1;

    /* renamed from: r  reason: collision with root package name */
    private static final int f2377r = -2;

    /* renamed from: a  reason: collision with root package name */
    HashMap<Integer, HashMap<String, KeyPosition>> f2378a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, WidgetState> f2379b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    TypedBundle f2380c = new TypedBundle();

    /* renamed from: d  reason: collision with root package name */
    private int f2381d = 0;

    /* renamed from: e  reason: collision with root package name */
    private String f2382e = null;

    /* renamed from: f  reason: collision with root package name */
    private Easing f2383f = null;

    /* renamed from: g  reason: collision with root package name */
    private int f2384g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f2385h = StatFsHelper.f11741h;

    /* renamed from: i  reason: collision with root package name */
    private float f2386i = 0.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class KeyPosition {

        /* renamed from: a  reason: collision with root package name */
        int f2387a;

        /* renamed from: b  reason: collision with root package name */
        String f2388b;

        /* renamed from: c  reason: collision with root package name */
        int f2389c;

        /* renamed from: d  reason: collision with root package name */
        float f2390d;

        /* renamed from: e  reason: collision with root package name */
        float f2391e;

        public KeyPosition(String str, int i2, int i4, float f4, float f5) {
            this.f2388b = str;
            this.f2387a = i2;
            this.f2389c = i4;
            this.f2390d = f4;
            this.f2391e = f5;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WidgetState {

        /* renamed from: d  reason: collision with root package name */
        Motion f2395d;

        /* renamed from: h  reason: collision with root package name */
        KeyCache f2399h = new KeyCache();

        /* renamed from: i  reason: collision with root package name */
        int f2400i = -1;

        /* renamed from: j  reason: collision with root package name */
        int f2401j = -1;

        /* renamed from: a  reason: collision with root package name */
        WidgetFrame f2392a = new WidgetFrame();

        /* renamed from: b  reason: collision with root package name */
        WidgetFrame f2393b = new WidgetFrame();

        /* renamed from: c  reason: collision with root package name */
        WidgetFrame f2394c = new WidgetFrame();

        /* renamed from: e  reason: collision with root package name */
        MotionWidget f2396e = new MotionWidget(this.f2392a);

        /* renamed from: f  reason: collision with root package name */
        MotionWidget f2397f = new MotionWidget(this.f2393b);

        /* renamed from: g  reason: collision with root package name */
        MotionWidget f2398g = new MotionWidget(this.f2394c);

        public WidgetState() {
            Motion motion = new Motion(this.f2396e);
            this.f2395d = motion;
            motion.setStart(this.f2396e);
            this.f2395d.setEnd(this.f2397f);
        }

        public WidgetFrame getFrame(int i2) {
            if (i2 == 0) {
                return this.f2392a;
            }
            if (i2 == 1) {
                return this.f2393b;
            }
            return this.f2394c;
        }

        public void interpolate(int i2, int i4, float f4, Transition transition) {
            this.f2400i = i4;
            this.f2401j = i2;
            this.f2395d.setup(i2, i4, 1.0f, System.nanoTime());
            WidgetFrame.interpolate(i2, i4, this.f2394c, this.f2392a, this.f2393b, transition, f4);
            this.f2394c.interpolatedPos = f4;
            this.f2395d.interpolate(this.f2398g, f4, System.nanoTime(), this.f2399h);
        }

        public void setKeyAttribute(TypedBundle typedBundle) {
            MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
            typedBundle.applyDelta(motionKeyAttributes);
            this.f2395d.addKey(motionKeyAttributes);
        }

        public void setKeyCycle(TypedBundle typedBundle) {
            MotionKeyCycle motionKeyCycle = new MotionKeyCycle();
            typedBundle.applyDelta(motionKeyCycle);
            this.f2395d.addKey(motionKeyCycle);
        }

        public void setKeyPosition(TypedBundle typedBundle) {
            MotionKeyPosition motionKeyPosition = new MotionKeyPosition();
            typedBundle.applyDelta(motionKeyPosition);
            this.f2395d.addKey(motionKeyPosition);
        }

        public void update(ConstraintWidget constraintWidget, int i2) {
            if (i2 == 0) {
                this.f2392a.update(constraintWidget);
                this.f2395d.setStart(this.f2396e);
            } else if (i2 == 1) {
                this.f2393b.update(constraintWidget);
                this.f2395d.setEnd(this.f2397f);
            }
            this.f2401j = -1;
        }
    }

    public static Interpolator getInterpolator(int i2, final String str) {
        switch (i2) {
            case -1:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.a
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f4) {
                        float k4;
                        k4 = Transition.k(str, f4);
                        return k4;
                    }
                };
            case 0:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.d
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f4) {
                        float l4;
                        l4 = Transition.l(f4);
                        return l4;
                    }
                };
            case 1:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.e
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f4) {
                        float m4;
                        m4 = Transition.m(f4);
                        return m4;
                    }
                };
            case 2:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.b
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f4) {
                        float n4;
                        n4 = Transition.n(f4);
                        return n4;
                    }
                };
            case 3:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.c
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f4) {
                        float o3;
                        o3 = Transition.o(f4);
                        return o3;
                    }
                };
            case 4:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.f
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f4) {
                        float r3;
                        r3 = Transition.r(f4);
                        return r3;
                    }
                };
            case 5:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.h
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f4) {
                        float q3;
                        q3 = Transition.q(f4);
                        return q3;
                    }
                };
            case 6:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.g
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f4) {
                        float p3;
                        p3 = Transition.p(f4);
                        return p3;
                    }
                };
            default:
                return null;
        }
    }

    private WidgetState i(String str) {
        return this.f2379b.get(str);
    }

    private WidgetState j(String str, ConstraintWidget constraintWidget, int i2) {
        WidgetState widgetState = this.f2379b.get(str);
        if (widgetState == null) {
            widgetState = new WidgetState();
            this.f2380c.applyDelta(widgetState.f2395d);
            this.f2379b.put(str, widgetState);
            if (constraintWidget != null) {
                widgetState.update(constraintWidget, i2);
            }
        }
        return widgetState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float k(String str, float f4) {
        return (float) Easing.getInterpolator(str).get(f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float l(float f4) {
        return (float) Easing.getInterpolator(CookieSpecs.STANDARD).get(f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float m(float f4) {
        return (float) Easing.getInterpolator("accelerate").get(f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float n(float f4) {
        return (float) Easing.getInterpolator("decelerate").get(f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float o(float f4) {
        return (float) Easing.getInterpolator("linear").get(f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float p(float f4) {
        return (float) Easing.getInterpolator("anticipate").get(f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float q(float f4) {
        return (float) Easing.getInterpolator("overshoot").get(f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float r(float f4) {
        return (float) Easing.getInterpolator("spline(0.0, 0.2, 0.4, 0.6, 0.8 ,1.0, 0.8, 1.0, 0.9, 1.0)").get(f4);
    }

    public void addCustomColor(int i2, String str, String str2, int i4) {
        j(str, null, i2).getFrame(i2).addCustomColor(str2, i4);
    }

    public void addCustomFloat(int i2, String str, String str2, float f4) {
        j(str, null, i2).getFrame(i2).addCustomFloat(str2, f4);
    }

    public void addKeyAttribute(String str, TypedBundle typedBundle) {
        j(str, null, 0).setKeyAttribute(typedBundle);
    }

    public void addKeyCycle(String str, TypedBundle typedBundle) {
        j(str, null, 0).setKeyCycle(typedBundle);
    }

    public void addKeyPosition(String str, TypedBundle typedBundle) {
        j(str, null, 0).setKeyPosition(typedBundle);
    }

    public void clear() {
        this.f2379b.clear();
    }

    public boolean contains(String str) {
        return this.f2379b.containsKey(str);
    }

    public void fillKeyPositions(WidgetFrame widgetFrame, float[] fArr, float[] fArr2, float[] fArr3) {
        KeyPosition keyPosition;
        int i2 = 0;
        for (int i4 = 0; i4 <= 100; i4++) {
            HashMap<String, KeyPosition> hashMap = this.f2378a.get(Integer.valueOf(i4));
            if (hashMap != null && (keyPosition = hashMap.get(widgetFrame.widget.stringId)) != null) {
                fArr[i2] = keyPosition.f2390d;
                fArr2[i2] = keyPosition.f2391e;
                fArr3[i2] = keyPosition.f2387a;
                i2++;
            }
        }
    }

    public KeyPosition findNextPosition(String str, int i2) {
        KeyPosition keyPosition;
        while (i2 <= 100) {
            HashMap<String, KeyPosition> hashMap = this.f2378a.get(Integer.valueOf(i2));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i2++;
        }
        return null;
    }

    public KeyPosition findPreviousPosition(String str, int i2) {
        KeyPosition keyPosition;
        while (i2 >= 0) {
            HashMap<String, KeyPosition> hashMap = this.f2378a.get(Integer.valueOf(i2));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i2--;
        }
        return null;
    }

    public int getAutoTransition() {
        return this.f2384g;
    }

    public WidgetFrame getEnd(String str) {
        WidgetState widgetState = this.f2379b.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.f2393b;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    public WidgetFrame getInterpolated(String str) {
        WidgetState widgetState = this.f2379b.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.f2394c;
    }

    public int getKeyFrames(String str, float[] fArr, int[] iArr, int[] iArr2) {
        return this.f2379b.get(str).f2395d.buildKeyFrames(fArr, iArr, iArr2);
    }

    public Motion getMotion(String str) {
        return j(str, null, 0).f2395d;
    }

    public int getNumberKeyPositions(WidgetFrame widgetFrame) {
        int i2 = 0;
        for (int i4 = 0; i4 <= 100; i4++) {
            HashMap<String, KeyPosition> hashMap = this.f2378a.get(Integer.valueOf(i4));
            if (hashMap != null && hashMap.get(widgetFrame.widget.stringId) != null) {
                i2++;
            }
        }
        return i2;
    }

    public float[] getPath(String str) {
        float[] fArr = new float[124];
        this.f2379b.get(str).f2395d.buildPath(fArr, 62);
        return fArr;
    }

    public WidgetFrame getStart(String str) {
        WidgetState widgetState = this.f2379b.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.f2392a;
    }

    public boolean hasPositionKeyframes() {
        return this.f2378a.size() > 0;
    }

    public void interpolate(int i2, int i4, float f4) {
        Easing easing = this.f2383f;
        if (easing != null) {
            f4 = (float) easing.get(f4);
        }
        for (String str : this.f2379b.keySet()) {
            this.f2379b.get(str).interpolate(i2, i4, f4, this);
        }
    }

    public boolean isEmpty() {
        return this.f2379b.isEmpty();
    }

    public void setTransitionProperties(TypedBundle typedBundle) {
        typedBundle.applyDelta(this.f2380c);
        typedBundle.applyDelta(this);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, float f4) {
        if (i2 == 706) {
            this.f2386i = f4;
            return false;
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, int i4) {
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, boolean z3) {
        return false;
    }

    public void updateFrom(ConstraintWidgetContainer constraintWidgetContainer, int i2) {
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = children.get(i4);
            j(constraintWidget.stringId, null, i2).update(constraintWidget, i2);
        }
    }

    public void addKeyPosition(String str, int i2, int i4, float f4, float f5) {
        TypedBundle typedBundle = new TypedBundle();
        typedBundle.add(TypedValues.PositionType.TYPE_POSITION_TYPE, 2);
        typedBundle.add(100, i2);
        typedBundle.add(TypedValues.PositionType.TYPE_PERCENT_X, f4);
        typedBundle.add(TypedValues.PositionType.TYPE_PERCENT_Y, f5);
        j(str, null, 0).setKeyPosition(typedBundle);
        KeyPosition keyPosition = new KeyPosition(str, i2, i4, f4, f5);
        HashMap<String, KeyPosition> hashMap = this.f2378a.get(Integer.valueOf(i2));
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.f2378a.put(Integer.valueOf(i2), hashMap);
        }
        hashMap.put(str, keyPosition);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, String str) {
        if (i2 == 705) {
            this.f2382e = str;
            this.f2383f = Easing.getInterpolator(str);
            return false;
        }
        return false;
    }

    public WidgetFrame getEnd(ConstraintWidget constraintWidget) {
        return j(constraintWidget.stringId, null, 1).f2393b;
    }

    public WidgetFrame getInterpolated(ConstraintWidget constraintWidget) {
        return j(constraintWidget.stringId, null, 2).f2394c;
    }

    public WidgetFrame getStart(ConstraintWidget constraintWidget) {
        return j(constraintWidget.stringId, null, 0).f2392a;
    }

    public Interpolator getInterpolator() {
        return getInterpolator(this.f2381d, this.f2382e);
    }
}
