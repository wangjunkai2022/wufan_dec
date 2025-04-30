package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Carousel extends MotionHelper {
    private static final boolean H = false;
    private static final String I = "Carousel";
    public static final int TOUCH_UP_CARRY_ON = 2;
    public static final int TOUCH_UP_IMMEDIATE_STOP = 1;
    private int A;
    private int B;
    private float C;
    private int D;
    private int E;
    int F;
    Runnable G;

    /* renamed from: n  reason: collision with root package name */
    private Adapter f2628n;

    /* renamed from: o  reason: collision with root package name */
    private final ArrayList<View> f2629o;

    /* renamed from: p  reason: collision with root package name */
    private int f2630p;

    /* renamed from: q  reason: collision with root package name */
    private int f2631q;

    /* renamed from: r  reason: collision with root package name */
    private MotionLayout f2632r;

    /* renamed from: s  reason: collision with root package name */
    private int f2633s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f2634t;

    /* renamed from: u  reason: collision with root package name */
    private int f2635u;

    /* renamed from: v  reason: collision with root package name */
    private int f2636v;

    /* renamed from: w  reason: collision with root package name */
    private int f2637w;

    /* renamed from: x  reason: collision with root package name */
    private int f2638x;

    /* renamed from: y  reason: collision with root package name */
    private float f2639y;

    /* renamed from: z  reason: collision with root package name */
    private int f2640z;

    /* loaded from: classes.dex */
    public interface Adapter {
        int count();

        void onNewItem(int index);

        void populate(View view, int index);
    }

    public Carousel(Context context) {
        super(context);
        this.f2628n = null;
        this.f2629o = new ArrayList<>();
        this.f2630p = 0;
        this.f2631q = 0;
        this.f2633s = -1;
        this.f2634t = false;
        this.f2635u = -1;
        this.f2636v = -1;
        this.f2637w = -1;
        this.f2638x = -1;
        this.f2639y = 0.9f;
        this.f2640z = 0;
        this.A = 4;
        this.B = 1;
        this.C = 2.0f;
        this.D = -1;
        this.E = 200;
        this.F = -1;
        this.G = new Runnable() { // from class: androidx.constraintlayout.helper.widget.Carousel.1
            @Override // java.lang.Runnable
            public void run() {
                Carousel.this.f2632r.setProgress(0.0f);
                Carousel.this.y();
                Carousel.this.f2628n.onNewItem(Carousel.this.f2631q);
                float velocity = Carousel.this.f2632r.getVelocity();
                if (Carousel.this.B != 2 || velocity <= Carousel.this.C || Carousel.this.f2631q >= Carousel.this.f2628n.count() - 1) {
                    return;
                }
                final float f4 = velocity * Carousel.this.f2639y;
                if (Carousel.this.f2631q != 0 || Carousel.this.f2630p <= Carousel.this.f2631q) {
                    if (Carousel.this.f2631q != Carousel.this.f2628n.count() - 1 || Carousel.this.f2630p >= Carousel.this.f2631q) {
                        Carousel.this.f2632r.post(new Runnable() { // from class: androidx.constraintlayout.helper.widget.Carousel.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Carousel.this.f2632r.touchAnimateTo(5, 1.0f, f4);
                            }
                        });
                    }
                }
            }
        };
    }

    private boolean A(View view, int visibility) {
        MotionLayout motionLayout = this.f2632r;
        if (motionLayout == null) {
            return false;
        }
        boolean z3 = false;
        for (int i2 : motionLayout.getConstraintSetIds()) {
            z3 |= z(i2, view, visibility);
        }
        return z3;
    }

    private void u(boolean enable) {
        Iterator<MotionScene.Transition> it2 = this.f2632r.getDefinedTransitions().iterator();
        while (it2.hasNext()) {
            it2.next().setEnabled(enable);
        }
    }

    private boolean v(int transitionID, boolean enable) {
        MotionLayout motionLayout;
        MotionScene.Transition transition;
        if (transitionID == -1 || (motionLayout = this.f2632r) == null || (transition = motionLayout.getTransition(transitionID)) == null || enable == transition.isEnabled()) {
            return false;
        }
        transition.setEnabled(enable);
        return true;
    }

    private void w(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.Carousel);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.Carousel_carousel_firstView) {
                    this.f2633s = obtainStyledAttributes.getResourceId(index, this.f2633s);
                } else if (index == R.styleable.Carousel_carousel_backwardTransition) {
                    this.f2635u = obtainStyledAttributes.getResourceId(index, this.f2635u);
                } else if (index == R.styleable.Carousel_carousel_forwardTransition) {
                    this.f2636v = obtainStyledAttributes.getResourceId(index, this.f2636v);
                } else if (index == R.styleable.Carousel_carousel_emptyViewsBehavior) {
                    this.A = obtainStyledAttributes.getInt(index, this.A);
                } else if (index == R.styleable.Carousel_carousel_previousState) {
                    this.f2637w = obtainStyledAttributes.getResourceId(index, this.f2637w);
                } else if (index == R.styleable.Carousel_carousel_nextState) {
                    this.f2638x = obtainStyledAttributes.getResourceId(index, this.f2638x);
                } else if (index == R.styleable.Carousel_carousel_touchUp_dampeningFactor) {
                    this.f2639y = obtainStyledAttributes.getFloat(index, this.f2639y);
                } else if (index == R.styleable.Carousel_carousel_touchUpMode) {
                    this.B = obtainStyledAttributes.getInt(index, this.B);
                } else if (index == R.styleable.Carousel_carousel_touchUp_velocityThreshold) {
                    this.C = obtainStyledAttributes.getFloat(index, this.C);
                } else if (index == R.styleable.Carousel_carousel_infinite) {
                    this.f2634t = obtainStyledAttributes.getBoolean(index, this.f2634t);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x() {
        this.f2632r.setTransitionDuration(this.E);
        if (this.D < this.f2631q) {
            this.f2632r.transitionToState(this.f2637w, this.E);
        } else {
            this.f2632r.transitionToState(this.f2638x, this.E);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        Adapter adapter = this.f2628n;
        if (adapter == null || this.f2632r == null || adapter.count() == 0) {
            return;
        }
        int size = this.f2629o.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f2629o.get(i2);
            int i4 = (this.f2631q + i2) - this.f2640z;
            if (this.f2634t) {
                if (i4 < 0) {
                    int i5 = this.A;
                    if (i5 != 4) {
                        A(view, i5);
                    } else {
                        A(view, 0);
                    }
                    if (i4 % this.f2628n.count() == 0) {
                        this.f2628n.populate(view, 0);
                    } else {
                        Adapter adapter2 = this.f2628n;
                        adapter2.populate(view, adapter2.count() + (i4 % this.f2628n.count()));
                    }
                } else if (i4 >= this.f2628n.count()) {
                    if (i4 == this.f2628n.count()) {
                        i4 = 0;
                    } else if (i4 > this.f2628n.count()) {
                        i4 %= this.f2628n.count();
                    }
                    int i6 = this.A;
                    if (i6 != 4) {
                        A(view, i6);
                    } else {
                        A(view, 0);
                    }
                    this.f2628n.populate(view, i4);
                } else {
                    A(view, 0);
                    this.f2628n.populate(view, i4);
                }
            } else if (i4 < 0) {
                A(view, this.A);
            } else if (i4 >= this.f2628n.count()) {
                A(view, this.A);
            } else {
                A(view, 0);
                this.f2628n.populate(view, i4);
            }
        }
        int i7 = this.D;
        if (i7 != -1 && i7 != this.f2631q) {
            this.f2632r.post(new Runnable() { // from class: androidx.constraintlayout.helper.widget.a
                @Override // java.lang.Runnable
                public final void run() {
                    Carousel.this.x();
                }
            });
        } else if (i7 == this.f2631q) {
            this.D = -1;
        }
        if (this.f2635u == -1 || this.f2636v == -1 || this.f2634t) {
            return;
        }
        int count = this.f2628n.count();
        if (this.f2631q == 0) {
            v(this.f2635u, false);
        } else {
            v(this.f2635u, true);
            this.f2632r.setTransition(this.f2635u);
        }
        if (this.f2631q == count - 1) {
            v(this.f2636v, false);
            return;
        }
        v(this.f2636v, true);
        this.f2632r.setTransition(this.f2636v);
    }

    private boolean z(int constraintSetId, View view, int visibility) {
        ConstraintSet.Constraint constraint;
        ConstraintSet constraintSet = this.f2632r.getConstraintSet(constraintSetId);
        if (constraintSet == null || (constraint = constraintSet.getConstraint(view.getId())) == null) {
            return false;
        }
        constraint.propertySet.mVisibilityMode = 1;
        view.setVisibility(visibility);
        return true;
    }

    public int getCount() {
        Adapter adapter = this.f2628n;
        if (adapter != null) {
            return adapter.count();
        }
        return 0;
    }

    public int getCurrentIndex() {
        return this.f2631q;
    }

    public void jumpToIndex(int index) {
        this.f2631q = Math.max(0, Math.min(getCount() - 1, index));
        refresh();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    @RequiresApi(api = 17)
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof MotionLayout) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            for (int i2 = 0; i2 < this.f3365b; i2++) {
                int i4 = this.f3364a[i2];
                View viewById = motionLayout.getViewById(i4);
                if (this.f2633s == i4) {
                    this.f2640z = i2;
                }
                this.f2629o.add(viewById);
            }
            this.f2632r = motionLayout;
            if (this.B == 2) {
                MotionScene.Transition transition = motionLayout.getTransition(this.f2636v);
                if (transition != null) {
                    transition.setOnTouchUp(5);
                }
                MotionScene.Transition transition2 = this.f2632r.getTransition(this.f2635u);
                if (transition2 != null) {
                    transition2.setOnTouchUp(5);
                }
            }
            y();
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    public void onTransitionChange(MotionLayout motionLayout, int startId, int endId, float progress) {
        this.F = startId;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    public void onTransitionCompleted(MotionLayout motionLayout, int currentId) {
        int i2 = this.f2631q;
        this.f2630p = i2;
        if (currentId == this.f2638x) {
            this.f2631q = i2 + 1;
        } else if (currentId == this.f2637w) {
            this.f2631q = i2 - 1;
        }
        if (this.f2634t) {
            if (this.f2631q >= this.f2628n.count()) {
                this.f2631q = 0;
            }
            if (this.f2631q < 0) {
                this.f2631q = this.f2628n.count() - 1;
            }
        } else {
            if (this.f2631q >= this.f2628n.count()) {
                this.f2631q = this.f2628n.count() - 1;
            }
            if (this.f2631q < 0) {
                this.f2631q = 0;
            }
        }
        if (this.f2630p != this.f2631q) {
            this.f2632r.post(this.G);
        }
    }

    public void refresh() {
        int size = this.f2629o.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f2629o.get(i2);
            if (this.f2628n.count() == 0) {
                A(view, this.A);
            } else {
                A(view, 0);
            }
        }
        this.f2632r.rebuildScene();
        y();
    }

    public void setAdapter(Adapter adapter) {
        this.f2628n = adapter;
    }

    public void transitionToIndex(int index, int delay) {
        this.D = Math.max(0, Math.min(getCount() - 1, index));
        int max = Math.max(0, delay);
        this.E = max;
        this.f2632r.setTransitionDuration(max);
        if (index < this.f2631q) {
            this.f2632r.transitionToState(this.f2637w, this.E);
        } else {
            this.f2632r.transitionToState(this.f2638x, this.E);
        }
    }

    public Carousel(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f2628n = null;
        this.f2629o = new ArrayList<>();
        this.f2630p = 0;
        this.f2631q = 0;
        this.f2633s = -1;
        this.f2634t = false;
        this.f2635u = -1;
        this.f2636v = -1;
        this.f2637w = -1;
        this.f2638x = -1;
        this.f2639y = 0.9f;
        this.f2640z = 0;
        this.A = 4;
        this.B = 1;
        this.C = 2.0f;
        this.D = -1;
        this.E = 200;
        this.F = -1;
        this.G = new Runnable() { // from class: androidx.constraintlayout.helper.widget.Carousel.1
            @Override // java.lang.Runnable
            public void run() {
                Carousel.this.f2632r.setProgress(0.0f);
                Carousel.this.y();
                Carousel.this.f2628n.onNewItem(Carousel.this.f2631q);
                float velocity = Carousel.this.f2632r.getVelocity();
                if (Carousel.this.B != 2 || velocity <= Carousel.this.C || Carousel.this.f2631q >= Carousel.this.f2628n.count() - 1) {
                    return;
                }
                final float f4 = velocity * Carousel.this.f2639y;
                if (Carousel.this.f2631q != 0 || Carousel.this.f2630p <= Carousel.this.f2631q) {
                    if (Carousel.this.f2631q != Carousel.this.f2628n.count() - 1 || Carousel.this.f2630p >= Carousel.this.f2631q) {
                        Carousel.this.f2632r.post(new Runnable() { // from class: androidx.constraintlayout.helper.widget.Carousel.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Carousel.this.f2632r.touchAnimateTo(5, 1.0f, f4);
                            }
                        });
                    }
                }
            }
        };
        w(context, attrs);
    }

    public Carousel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f2628n = null;
        this.f2629o = new ArrayList<>();
        this.f2630p = 0;
        this.f2631q = 0;
        this.f2633s = -1;
        this.f2634t = false;
        this.f2635u = -1;
        this.f2636v = -1;
        this.f2637w = -1;
        this.f2638x = -1;
        this.f2639y = 0.9f;
        this.f2640z = 0;
        this.A = 4;
        this.B = 1;
        this.C = 2.0f;
        this.D = -1;
        this.E = 200;
        this.F = -1;
        this.G = new Runnable() { // from class: androidx.constraintlayout.helper.widget.Carousel.1
            @Override // java.lang.Runnable
            public void run() {
                Carousel.this.f2632r.setProgress(0.0f);
                Carousel.this.y();
                Carousel.this.f2628n.onNewItem(Carousel.this.f2631q);
                float velocity = Carousel.this.f2632r.getVelocity();
                if (Carousel.this.B != 2 || velocity <= Carousel.this.C || Carousel.this.f2631q >= Carousel.this.f2628n.count() - 1) {
                    return;
                }
                final float f4 = velocity * Carousel.this.f2639y;
                if (Carousel.this.f2631q != 0 || Carousel.this.f2630p <= Carousel.this.f2631q) {
                    if (Carousel.this.f2631q != Carousel.this.f2628n.count() - 1 || Carousel.this.f2630p >= Carousel.this.f2631q) {
                        Carousel.this.f2632r.post(new Runnable() { // from class: androidx.constraintlayout.helper.widget.Carousel.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Carousel.this.f2632r.touchAnimateTo(5, 1.0f, f4);
                            }
                        });
                    }
                }
            }
        };
        w(context, attrs);
    }
}
