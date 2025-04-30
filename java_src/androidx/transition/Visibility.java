package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.AnimatorUtils;
import androidx.transition.Transition;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public abstract class Visibility extends Transition {
    public static final int MODE_IN = 1;
    public static final int MODE_OUT = 2;

    /* renamed from: x0  reason: collision with root package name */
    private static final String f7817x0 = "android:visibility:screenLocation";

    /* renamed from: u0  reason: collision with root package name */
    private int f7819u0;

    /* renamed from: v0  reason: collision with root package name */
    static final String f7815v0 = "android:visibility:visibility";

    /* renamed from: w0  reason: collision with root package name */
    private static final String f7816w0 = "android:visibility:parent";

    /* renamed from: y0  reason: collision with root package name */
    private static final String[] f7818y0 = {f7815v0, f7816w0};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class DisappearListener extends AnimatorListenerAdapter implements Transition.TransitionListener, AnimatorUtils.AnimatorPauseListenerCompat {

        /* renamed from: a  reason: collision with root package name */
        private final View f7824a;

        /* renamed from: b  reason: collision with root package name */
        private final int f7825b;

        /* renamed from: c  reason: collision with root package name */
        private final ViewGroup f7826c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f7827d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f7828e;

        /* renamed from: f  reason: collision with root package name */
        boolean f7829f = false;

        DisappearListener(View view, int i2, boolean z3) {
            this.f7824a = view;
            this.f7825b = i2;
            this.f7826c = (ViewGroup) view.getParent();
            this.f7827d = z3;
            b(true);
        }

        private void a() {
            if (!this.f7829f) {
                ViewUtils.i(this.f7824a, this.f7825b);
                ViewGroup viewGroup = this.f7826c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            b(false);
        }

        private void b(boolean z3) {
            ViewGroup viewGroup;
            if (!this.f7827d || this.f7828e == z3 || (viewGroup = this.f7826c) == null) {
                return;
            }
            this.f7828e = z3;
            ViewGroupUtils.d(viewGroup, z3);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f7829f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.AnimatorUtils.AnimatorPauseListenerCompat
        public void onAnimationPause(Animator animator) {
            if (this.f7829f) {
                return;
            }
            ViewUtils.i(this.f7824a, this.f7825b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.AnimatorUtils.AnimatorPauseListenerCompat
        public void onAnimationResume(Animator animator) {
            if (this.f7829f) {
                return;
            }
            ViewUtils.i(this.f7824a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            a();
            transition.removeListener(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            b(false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            b(true);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }
    }

    @SuppressLint({"UniqueConstants"})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Mode {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class VisibilityInfo {

        /* renamed from: a  reason: collision with root package name */
        boolean f7830a;

        /* renamed from: b  reason: collision with root package name */
        boolean f7831b;

        /* renamed from: c  reason: collision with root package name */
        int f7832c;

        /* renamed from: d  reason: collision with root package name */
        int f7833d;

        /* renamed from: e  reason: collision with root package name */
        ViewGroup f7834e;

        /* renamed from: f  reason: collision with root package name */
        ViewGroup f7835f;

        VisibilityInfo() {
        }
    }

    public Visibility() {
        this.f7819u0 = 3;
    }

    private void H(TransitionValues transitionValues) {
        transitionValues.values.put(f7815v0, Integer.valueOf(transitionValues.view.getVisibility()));
        transitionValues.values.put(f7816w0, transitionValues.view.getParent());
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put(f7817x0, iArr);
    }

    private VisibilityInfo I(TransitionValues transitionValues, TransitionValues transitionValues2) {
        VisibilityInfo visibilityInfo = new VisibilityInfo();
        visibilityInfo.f7830a = false;
        visibilityInfo.f7831b = false;
        if (transitionValues != null && transitionValues.values.containsKey(f7815v0)) {
            visibilityInfo.f7832c = ((Integer) transitionValues.values.get(f7815v0)).intValue();
            visibilityInfo.f7834e = (ViewGroup) transitionValues.values.get(f7816w0);
        } else {
            visibilityInfo.f7832c = -1;
            visibilityInfo.f7834e = null;
        }
        if (transitionValues2 != null && transitionValues2.values.containsKey(f7815v0)) {
            visibilityInfo.f7833d = ((Integer) transitionValues2.values.get(f7815v0)).intValue();
            visibilityInfo.f7835f = (ViewGroup) transitionValues2.values.get(f7816w0);
        } else {
            visibilityInfo.f7833d = -1;
            visibilityInfo.f7835f = null;
        }
        if (transitionValues != null && transitionValues2 != null) {
            int i2 = visibilityInfo.f7832c;
            int i4 = visibilityInfo.f7833d;
            if (i2 == i4 && visibilityInfo.f7834e == visibilityInfo.f7835f) {
                return visibilityInfo;
            }
            if (i2 != i4) {
                if (i2 == 0) {
                    visibilityInfo.f7831b = false;
                    visibilityInfo.f7830a = true;
                } else if (i4 == 0) {
                    visibilityInfo.f7831b = true;
                    visibilityInfo.f7830a = true;
                }
            } else if (visibilityInfo.f7835f == null) {
                visibilityInfo.f7831b = false;
                visibilityInfo.f7830a = true;
            } else if (visibilityInfo.f7834e == null) {
                visibilityInfo.f7831b = true;
                visibilityInfo.f7830a = true;
            }
        } else if (transitionValues == null && visibilityInfo.f7833d == 0) {
            visibilityInfo.f7831b = true;
            visibilityInfo.f7830a = true;
        } else if (transitionValues2 == null && visibilityInfo.f7832c == 0) {
            visibilityInfo.f7831b = false;
            visibilityInfo.f7830a = true;
        }
        return visibilityInfo;
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        H(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        H(transitionValues);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        VisibilityInfo I = I(transitionValues, transitionValues2);
        if (I.f7830a) {
            if (I.f7834e == null && I.f7835f == null) {
                return null;
            }
            if (I.f7831b) {
                return onAppear(viewGroup, transitionValues, I.f7832c, transitionValues2, I.f7833d);
            }
            return onDisappear(viewGroup, transitionValues, I.f7832c, transitionValues2, I.f7833d);
        }
        return null;
    }

    public int getMode() {
        return this.f7819u0;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f7818y0;
    }

    @Override // androidx.transition.Transition
    public boolean isTransitionRequired(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null && transitionValues2 == null) {
            return false;
        }
        if (transitionValues == null || transitionValues2 == null || transitionValues2.values.containsKey(f7815v0) == transitionValues.values.containsKey(f7815v0)) {
            VisibilityInfo I = I(transitionValues, transitionValues2);
            if (I.f7830a) {
                return I.f7832c == 0 || I.f7833d == 0;
            }
            return false;
        }
        return false;
    }

    public boolean isVisible(TransitionValues transitionValues) {
        if (transitionValues == null) {
            return false;
        }
        return ((Integer) transitionValues.values.get(f7815v0)).intValue() == 0 && ((View) transitionValues.values.get(f7816w0)) != null;
    }

    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i2, TransitionValues transitionValues2, int i4) {
        if ((this.f7819u0 & 1) != 1 || transitionValues2 == null) {
            return null;
        }
        if (transitionValues == null) {
            View view = (View) transitionValues2.view.getParent();
            if (I(p(view, false), getTransitionValues(view, false)).f7830a) {
                return null;
            }
        }
        return onAppear(viewGroup, transitionValues2.view, transitionValues, transitionValues2);
    }

    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0089, code lost:
        if (r17.f7724w != false) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator onDisappear(final android.view.ViewGroup r18, androidx.transition.TransitionValues r19, int r20, androidx.transition.TransitionValues r21, int r22) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.onDisappear(android.view.ViewGroup, androidx.transition.TransitionValues, int, androidx.transition.TransitionValues, int):android.animation.Animator");
    }

    public void setMode(int i2) {
        if ((i2 & (-4)) == 0) {
            this.f7819u0 = i2;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    @SuppressLint({"RestrictedApi"})
    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7819u0 = 3;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f7688e);
        int namedInt = TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (namedInt != 0) {
            setMode(namedInt);
        }
    }
}
