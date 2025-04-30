package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.Xml;
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
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import net.lingala.zip4j.util.e;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class ViewTransition {
    static final int A = 1;
    static final int B = 2;
    private static final int C = -1;
    public static final String CONSTRAINT_OVERRIDE = "ConstraintOverride";
    public static final String CUSTOM_ATTRIBUTE = "CustomAttribute";
    public static final String CUSTOM_METHOD = "CustomMethod";
    private static final int D = -2;
    static final int E = 0;
    static final int F = 1;
    static final int G = 2;
    static final int H = 3;
    static final int I = 4;
    static final int J = 5;
    static final int K = 6;
    public static final String KEY_FRAME_SET_TAG = "KeyFrameSet";
    public static final int ONSTATE_ACTION_DOWN = 1;
    public static final int ONSTATE_ACTION_DOWN_UP = 3;
    public static final int ONSTATE_ACTION_UP = 2;
    public static final int ONSTATE_SHARED_VALUE_SET = 4;
    public static final int ONSTATE_SHARED_VALUE_UNSET = 5;
    public static final String VIEW_TRANSITION_TAG = "ViewTransition";

    /* renamed from: x  reason: collision with root package name */
    private static String f3186x = "ViewTransition";

    /* renamed from: y  reason: collision with root package name */
    private static final int f3187y = -1;

    /* renamed from: z  reason: collision with root package name */
    static final int f3188z = 0;

    /* renamed from: a  reason: collision with root package name */
    ConstraintSet f3189a;

    /* renamed from: b  reason: collision with root package name */
    private int f3190b;

    /* renamed from: f  reason: collision with root package name */
    int f3194f;

    /* renamed from: g  reason: collision with root package name */
    KeyFrames f3195g;

    /* renamed from: h  reason: collision with root package name */
    ConstraintSet.Constraint f3196h;

    /* renamed from: k  reason: collision with root package name */
    private int f3199k;

    /* renamed from: l  reason: collision with root package name */
    private String f3200l;

    /* renamed from: p  reason: collision with root package name */
    Context f3204p;

    /* renamed from: c  reason: collision with root package name */
    private int f3191c = -1;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3192d = false;

    /* renamed from: e  reason: collision with root package name */
    private int f3193e = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f3197i = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f3198j = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f3201m = 0;

    /* renamed from: n  reason: collision with root package name */
    private String f3202n = null;

    /* renamed from: o  reason: collision with root package name */
    private int f3203o = -1;

    /* renamed from: q  reason: collision with root package name */
    private int f3205q = -1;

    /* renamed from: r  reason: collision with root package name */
    private int f3206r = -1;

    /* renamed from: s  reason: collision with root package name */
    private int f3207s = -1;

    /* renamed from: t  reason: collision with root package name */
    private int f3208t = -1;

    /* renamed from: u  reason: collision with root package name */
    private int f3209u = -1;

    /* renamed from: v  reason: collision with root package name */
    private int f3210v = -1;

    /* renamed from: w  reason: collision with root package name */
    private int f3211w = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Animate {

        /* renamed from: a  reason: collision with root package name */
        private final int f3213a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3214b;

        /* renamed from: c  reason: collision with root package name */
        long f3215c;

        /* renamed from: d  reason: collision with root package name */
        MotionController f3216d;

        /* renamed from: e  reason: collision with root package name */
        int f3217e;

        /* renamed from: f  reason: collision with root package name */
        int f3218f;

        /* renamed from: h  reason: collision with root package name */
        ViewTransitionController f3220h;

        /* renamed from: i  reason: collision with root package name */
        Interpolator f3221i;

        /* renamed from: k  reason: collision with root package name */
        float f3223k;

        /* renamed from: l  reason: collision with root package name */
        float f3224l;

        /* renamed from: m  reason: collision with root package name */
        long f3225m;

        /* renamed from: o  reason: collision with root package name */
        boolean f3227o;

        /* renamed from: g  reason: collision with root package name */
        KeyCache f3219g = new KeyCache();

        /* renamed from: j  reason: collision with root package name */
        boolean f3222j = false;

        /* renamed from: n  reason: collision with root package name */
        Rect f3226n = new Rect();

        Animate(ViewTransitionController controller, MotionController motionController, int duration, int upDuration, int mode, Interpolator interpolator, int setTag, int clearTag) {
            this.f3227o = false;
            this.f3220h = controller;
            this.f3216d = motionController;
            this.f3217e = duration;
            this.f3218f = upDuration;
            long nanoTime = System.nanoTime();
            this.f3215c = nanoTime;
            this.f3225m = nanoTime;
            this.f3220h.b(this);
            this.f3221i = interpolator;
            this.f3213a = setTag;
            this.f3214b = clearTag;
            if (mode == 3) {
                this.f3227o = true;
            }
            this.f3224l = duration == 0 ? Float.MAX_VALUE : 1.0f / duration;
            a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            if (this.f3222j) {
                c();
            } else {
                b();
            }
        }

        void b() {
            long nanoTime = System.nanoTime();
            this.f3225m = nanoTime;
            float f4 = this.f3223k;
            double d4 = nanoTime - this.f3225m;
            Double.isNaN(d4);
            float f5 = f4 + (((float) (d4 * 1.0E-6d)) * this.f3224l);
            this.f3223k = f5;
            if (f5 >= 1.0f) {
                this.f3223k = 1.0f;
            }
            Interpolator interpolator = this.f3221i;
            float interpolation = interpolator == null ? this.f3223k : interpolator.getInterpolation(this.f3223k);
            MotionController motionController = this.f3216d;
            boolean t3 = motionController.t(motionController.f2943b, interpolation, nanoTime, this.f3219g);
            if (this.f3223k >= 1.0f) {
                if (this.f3213a != -1) {
                    this.f3216d.getView().setTag(this.f3213a, Long.valueOf(System.nanoTime()));
                }
                if (this.f3214b != -1) {
                    this.f3216d.getView().setTag(this.f3214b, null);
                }
                if (!this.f3227o) {
                    this.f3220h.j(this);
                }
            }
            if (this.f3223k < 1.0f || t3) {
                this.f3220h.f();
            }
        }

        void c() {
            long nanoTime = System.nanoTime();
            this.f3225m = nanoTime;
            float f4 = this.f3223k;
            double d4 = nanoTime - this.f3225m;
            Double.isNaN(d4);
            float f5 = f4 - (((float) (d4 * 1.0E-6d)) * this.f3224l);
            this.f3223k = f5;
            if (f5 < 0.0f) {
                this.f3223k = 0.0f;
            }
            Interpolator interpolator = this.f3221i;
            float interpolation = interpolator == null ? this.f3223k : interpolator.getInterpolation(this.f3223k);
            MotionController motionController = this.f3216d;
            boolean t3 = motionController.t(motionController.f2943b, interpolation, nanoTime, this.f3219g);
            if (this.f3223k <= 0.0f) {
                if (this.f3213a != -1) {
                    this.f3216d.getView().setTag(this.f3213a, Long.valueOf(System.nanoTime()));
                }
                if (this.f3214b != -1) {
                    this.f3216d.getView().setTag(this.f3214b, null);
                }
                this.f3220h.j(this);
            }
            if (this.f3223k > 0.0f || t3) {
                this.f3220h.f();
            }
        }

        void d(boolean dir) {
            int i2;
            this.f3222j = dir;
            if (dir && (i2 = this.f3218f) != -1) {
                this.f3224l = i2 == 0 ? Float.MAX_VALUE : 1.0f / i2;
            }
            this.f3220h.f();
            this.f3225m = System.nanoTime();
        }

        public void reactTo(int action, float x3, float y3) {
            if (action == 1) {
                if (this.f3222j) {
                    return;
                }
                d(true);
            } else if (action != 2) {
            } else {
                this.f3216d.getView().getHitRect(this.f3226n);
                if (this.f3226n.contains((int) x3, (int) y3) || this.f3222j) {
                    return;
                }
                d(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTransition(Context context, XmlPullParser parser) {
        char c4;
        this.f3204p = context;
        try {
            int eventType = parser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = parser.getName();
                    switch (name.hashCode()) {
                        case -1962203927:
                            if (name.equals(CONSTRAINT_OVERRIDE)) {
                                c4 = 2;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case -1239391468:
                            if (name.equals(KEY_FRAME_SET_TAG)) {
                                c4 = 1;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 61998586:
                            if (name.equals(VIEW_TRANSITION_TAG)) {
                                c4 = 0;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 366511058:
                            if (name.equals(CUSTOM_METHOD)) {
                                c4 = 4;
                                break;
                            }
                            c4 = 65535;
                            break;
                        case 1791837707:
                            if (name.equals(CUSTOM_ATTRIBUTE)) {
                                c4 = 3;
                                break;
                            }
                            c4 = 65535;
                            break;
                        default:
                            c4 = 65535;
                            break;
                    }
                    if (c4 == 0) {
                        j(context, parser);
                    } else if (c4 == 1) {
                        this.f3195g = new KeyFrames(context, parser);
                    } else if (c4 == 2) {
                        this.f3196h = ConstraintSet.buildDelta(context, parser);
                    } else if (c4 != 3 && c4 != 4) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(Debug.getLoc());
                        sb.append(" unknown tag ");
                        sb.append(name);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(".xml:");
                        sb2.append(parser.getLineNumber());
                    } else {
                        ConstraintAttribute.parse(context, parser, this.f3196h.mCustomConstraints);
                    }
                } else if (eventType != 3) {
                    continue;
                } else if (VIEW_TRANSITION_TAG.equals(parser.getName())) {
                    return;
                }
                eventType = parser.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View[] viewArr) {
        if (this.f3205q != -1) {
            for (View view : viewArr) {
                view.setTag(this.f3205q, Long.valueOf(System.nanoTime()));
            }
        }
        if (this.f3206r != -1) {
            for (View view2 : viewArr) {
                view2.setTag(this.f3206r, null);
            }
        }
    }

    private void j(Context context, XmlPullParser parser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.ViewTransition);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.ViewTransition_android_id) {
                this.f3190b = obtainStyledAttributes.getResourceId(index, this.f3190b);
            } else if (index == R.styleable.ViewTransition_motionTarget) {
                if (MotionLayout.IS_IN_EDIT_MODE) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f3199k);
                    this.f3199k = resourceId;
                    if (resourceId == -1) {
                        this.f3200l = obtainStyledAttributes.getString(index);
                    }
                } else if (obtainStyledAttributes.peekValue(index).type == 3) {
                    this.f3200l = obtainStyledAttributes.getString(index);
                } else {
                    this.f3199k = obtainStyledAttributes.getResourceId(index, this.f3199k);
                }
            } else if (index == R.styleable.ViewTransition_onStateTransition) {
                this.f3191c = obtainStyledAttributes.getInt(index, this.f3191c);
            } else if (index == R.styleable.ViewTransition_transitionDisable) {
                this.f3192d = obtainStyledAttributes.getBoolean(index, this.f3192d);
            } else if (index == R.styleable.ViewTransition_pathMotionArc) {
                this.f3193e = obtainStyledAttributes.getInt(index, this.f3193e);
            } else if (index == R.styleable.ViewTransition_duration) {
                this.f3197i = obtainStyledAttributes.getInt(index, this.f3197i);
            } else if (index == R.styleable.ViewTransition_upDuration) {
                this.f3198j = obtainStyledAttributes.getInt(index, this.f3198j);
            } else if (index == R.styleable.ViewTransition_viewTransitionMode) {
                this.f3194f = obtainStyledAttributes.getInt(index, this.f3194f);
            } else if (index == R.styleable.ViewTransition_motionInterpolator) {
                int i4 = obtainStyledAttributes.peekValue(index).type;
                if (i4 == 1) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                    this.f3203o = resourceId2;
                    if (resourceId2 != -1) {
                        this.f3201m = -2;
                    }
                } else if (i4 == 3) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f3202n = string;
                    if (string != null && string.indexOf(e.F0) > 0) {
                        this.f3203o = obtainStyledAttributes.getResourceId(index, -1);
                        this.f3201m = -2;
                    } else {
                        this.f3201m = -1;
                    }
                } else {
                    this.f3201m = obtainStyledAttributes.getInteger(index, this.f3201m);
                }
            } else if (index == R.styleable.ViewTransition_setsTag) {
                this.f3205q = obtainStyledAttributes.getResourceId(index, this.f3205q);
            } else if (index == R.styleable.ViewTransition_clearsTag) {
                this.f3206r = obtainStyledAttributes.getResourceId(index, this.f3206r);
            } else if (index == R.styleable.ViewTransition_ifTagSet) {
                this.f3207s = obtainStyledAttributes.getResourceId(index, this.f3207s);
            } else if (index == R.styleable.ViewTransition_ifTagNotSet) {
                this.f3208t = obtainStyledAttributes.getResourceId(index, this.f3208t);
            } else if (index == R.styleable.ViewTransition_SharedValueId) {
                this.f3210v = obtainStyledAttributes.getResourceId(index, this.f3210v);
            } else if (index == R.styleable.ViewTransition_SharedValue) {
                this.f3209u = obtainStyledAttributes.getInteger(index, this.f3209u);
            }
        }
        obtainStyledAttributes.recycle();
    }

    private void n(MotionScene.Transition transition, View view) {
        int i2 = this.f3197i;
        if (i2 != -1) {
            transition.setDuration(i2);
        }
        transition.setPathMotionArc(this.f3193e);
        transition.setInterpolatorInfo(this.f3201m, this.f3202n, this.f3203o);
        int id = view.getId();
        KeyFrames keyFrames = this.f3195g;
        if (keyFrames != null) {
            ArrayList<Key> keyFramesForView = keyFrames.getKeyFramesForView(-1);
            KeyFrames keyFrames2 = new KeyFrames();
            Iterator<Key> it2 = keyFramesForView.iterator();
            while (it2.hasNext()) {
                keyFrames2.addKey(it2.next().mo3clone().setViewId(id));
            }
            transition.addKeyFrame(keyFrames2);
        }
    }

    void b(ViewTransitionController controller, MotionLayout motionLayout, View view) {
        MotionController motionController = new MotionController(view);
        motionController.y(view);
        this.f3195g.addAllFrames(motionController);
        motionController.setup(motionLayout.getWidth(), motionLayout.getHeight(), this.f3197i, System.nanoTime());
        new Animate(controller, motionController, this.f3197i, this.f3198j, this.f3191c, f(motionLayout.getContext()), this.f3205q, this.f3206r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(ViewTransitionController controller, MotionLayout layout, int fromId, ConstraintSet current, final View... views) {
        int[] constraintSetIds;
        if (this.f3192d) {
            return;
        }
        int i2 = this.f3194f;
        if (i2 == 2) {
            b(controller, layout, views[0]);
            return;
        }
        if (i2 == 1) {
            for (int i4 : layout.getConstraintSetIds()) {
                if (i4 != fromId) {
                    ConstraintSet constraintSet = layout.getConstraintSet(i4);
                    for (View view : views) {
                        ConstraintSet.Constraint constraint = constraintSet.getConstraint(view.getId());
                        ConstraintSet.Constraint constraint2 = this.f3196h;
                        if (constraint2 != null) {
                            constraint2.applyDelta(constraint);
                            constraint.mCustomConstraints.putAll(this.f3196h.mCustomConstraints);
                        }
                    }
                }
            }
        }
        ConstraintSet constraintSet2 = new ConstraintSet();
        constraintSet2.clone(current);
        for (View view2 : views) {
            ConstraintSet.Constraint constraint3 = constraintSet2.getConstraint(view2.getId());
            ConstraintSet.Constraint constraint4 = this.f3196h;
            if (constraint4 != null) {
                constraint4.applyDelta(constraint3);
                constraint3.mCustomConstraints.putAll(this.f3196h.mCustomConstraints);
            }
        }
        layout.updateState(fromId, constraintSet2);
        int i5 = R.id.view_transition;
        layout.updateState(i5, current);
        layout.setState(i5, -1, -1);
        MotionScene.Transition transition = new MotionScene.Transition(-1, layout.G, i5, fromId);
        for (View view3 : views) {
            n(transition, view3);
        }
        layout.setTransition(transition);
        layout.transitionToEnd(new Runnable() { // from class: androidx.constraintlayout.motion.widget.a
            @Override // java.lang.Runnable
            public final void run() {
                ViewTransition.this.h(views);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(View view) {
        int i2 = this.f3207s;
        boolean z3 = i2 == -1 || view.getTag(i2) != null;
        int i4 = this.f3208t;
        return z3 && (i4 == -1 || view.getTag(i4) == null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f3190b;
    }

    Interpolator f(Context context) {
        int i2 = this.f3201m;
        if (i2 != -2) {
            if (i2 == -1) {
                final Easing interpolator = Easing.getInterpolator(this.f3202n);
                return new Interpolator(this) { // from class: androidx.constraintlayout.motion.widget.ViewTransition.1
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
        return AnimationUtils.loadInterpolator(context, this.f3203o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return !this.f3192d;
    }

    public int getSharedValue() {
        return this.f3209u;
    }

    public int getSharedValueCurrent() {
        return this.f3211w;
    }

    public int getSharedValueID() {
        return this.f3210v;
    }

    public int getStateTransition() {
        return this.f3191c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if (!(this.f3199k == -1 && this.f3200l == null) && d(view)) {
            if (view.getId() == this.f3199k) {
                return true;
            }
            return this.f3200l != null && (view.getLayoutParams() instanceof ConstraintLayout.LayoutParams) && (str = ((ConstraintLayout.LayoutParams) view.getLayoutParams()).constraintTag) != null && str.matches(this.f3200l);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(boolean enable) {
        this.f3192d = !enable;
    }

    void l(int id) {
        this.f3190b = id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m(int action) {
        int i2 = this.f3191c;
        return i2 == 1 ? action == 0 : i2 == 2 ? action == 1 : i2 == 3 && action == 0;
    }

    public void setSharedValue(int sharedValue) {
        this.f3209u = sharedValue;
    }

    public void setSharedValueCurrent(int sharedValueCurrent) {
        this.f3211w = sharedValueCurrent;
    }

    public void setSharedValueID(int sharedValueID) {
        this.f3210v = sharedValueID;
    }

    public void setStateTransition(int stateTransition) {
        this.f3191c = stateTransition;
    }

    public String toString() {
        return "ViewTransition(" + Debug.getName(this.f3204p, this.f3190b) + ")";
    }
}
