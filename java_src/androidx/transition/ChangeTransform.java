package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class ChangeTransform extends Transition {
    private static final String B0 = "android:changeTransform:intermediateParentMatrix";
    private static final String C0 = "android:changeTransform:intermediateMatrix";
    private static final boolean G0;

    /* renamed from: z0  reason: collision with root package name */
    private static final String f7595z0 = "android:changeTransform:parent";

    /* renamed from: u0  reason: collision with root package name */
    boolean f7596u0;

    /* renamed from: v0  reason: collision with root package name */
    private boolean f7597v0;

    /* renamed from: w0  reason: collision with root package name */
    private Matrix f7598w0;

    /* renamed from: x0  reason: collision with root package name */
    private static final String f7593x0 = "android:changeTransform:matrix";

    /* renamed from: y0  reason: collision with root package name */
    private static final String f7594y0 = "android:changeTransform:transforms";
    private static final String A0 = "android:changeTransform:parentMatrix";
    private static final String[] D0 = {f7593x0, f7594y0, A0};
    private static final Property<PathAnimatorMatrix, float[]> E0 = new Property<PathAnimatorMatrix, float[]>(float[].class, "nonTranslations") { // from class: androidx.transition.ChangeTransform.1
        @Override // android.util.Property
        public float[] get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        @Override // android.util.Property
        public void set(PathAnimatorMatrix pathAnimatorMatrix, float[] fArr) {
            pathAnimatorMatrix.d(fArr);
        }
    };
    private static final Property<PathAnimatorMatrix, PointF> F0 = new Property<PathAnimatorMatrix, PointF>(PointF.class, "translations") { // from class: androidx.transition.ChangeTransform.2
        @Override // android.util.Property
        public PointF get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        @Override // android.util.Property
        public void set(PathAnimatorMatrix pathAnimatorMatrix, PointF pointF) {
            pathAnimatorMatrix.c(pointF);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class GhostListener extends TransitionListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private View f7607a;

        /* renamed from: b  reason: collision with root package name */
        private GhostView f7608b;

        GhostListener(View view, GhostView ghostView) {
            this.f7607a = view;
            this.f7608b = ghostView;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            transition.removeListener(this);
            GhostViewUtils.b(this.f7607a);
            this.f7607a.setTag(R.id.transition_transform, null);
            this.f7607a.setTag(R.id.parent_matrix, null);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            this.f7608b.setVisibility(4);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.f7608b.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class PathAnimatorMatrix {

        /* renamed from: a  reason: collision with root package name */
        private final Matrix f7609a = new Matrix();

        /* renamed from: b  reason: collision with root package name */
        private final View f7610b;

        /* renamed from: c  reason: collision with root package name */
        private final float[] f7611c;

        /* renamed from: d  reason: collision with root package name */
        private float f7612d;

        /* renamed from: e  reason: collision with root package name */
        private float f7613e;

        PathAnimatorMatrix(View view, float[] fArr) {
            this.f7610b = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.f7611c = fArr2;
            this.f7612d = fArr2[2];
            this.f7613e = fArr2[5];
            b();
        }

        private void b() {
            float[] fArr = this.f7611c;
            fArr[2] = this.f7612d;
            fArr[5] = this.f7613e;
            this.f7609a.setValues(fArr);
            ViewUtils.f(this.f7610b, this.f7609a);
        }

        Matrix a() {
            return this.f7609a;
        }

        void c(PointF pointF) {
            this.f7612d = pointF.x;
            this.f7613e = pointF.y;
            b();
        }

        void d(float[] fArr) {
            System.arraycopy(fArr, 0, this.f7611c, 0, fArr.length);
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Transforms {

        /* renamed from: a  reason: collision with root package name */
        final float f7614a;

        /* renamed from: b  reason: collision with root package name */
        final float f7615b;

        /* renamed from: c  reason: collision with root package name */
        final float f7616c;

        /* renamed from: d  reason: collision with root package name */
        final float f7617d;

        /* renamed from: e  reason: collision with root package name */
        final float f7618e;

        /* renamed from: f  reason: collision with root package name */
        final float f7619f;

        /* renamed from: g  reason: collision with root package name */
        final float f7620g;

        /* renamed from: h  reason: collision with root package name */
        final float f7621h;

        Transforms(View view) {
            this.f7614a = view.getTranslationX();
            this.f7615b = view.getTranslationY();
            this.f7616c = ViewCompat.getTranslationZ(view);
            this.f7617d = view.getScaleX();
            this.f7618e = view.getScaleY();
            this.f7619f = view.getRotationX();
            this.f7620g = view.getRotationY();
            this.f7621h = view.getRotation();
        }

        public boolean equals(Object obj) {
            if (obj instanceof Transforms) {
                Transforms transforms = (Transforms) obj;
                return transforms.f7614a == this.f7614a && transforms.f7615b == this.f7615b && transforms.f7616c == this.f7616c && transforms.f7617d == this.f7617d && transforms.f7618e == this.f7618e && transforms.f7619f == this.f7619f && transforms.f7620g == this.f7620g && transforms.f7621h == this.f7621h;
            }
            return false;
        }

        public int hashCode() {
            float f4 = this.f7614a;
            int floatToIntBits = (f4 != 0.0f ? Float.floatToIntBits(f4) : 0) * 31;
            float f5 = this.f7615b;
            int floatToIntBits2 = (floatToIntBits + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0)) * 31;
            float f6 = this.f7616c;
            int floatToIntBits3 = (floatToIntBits2 + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0)) * 31;
            float f7 = this.f7617d;
            int floatToIntBits4 = (floatToIntBits3 + (f7 != 0.0f ? Float.floatToIntBits(f7) : 0)) * 31;
            float f8 = this.f7618e;
            int floatToIntBits5 = (floatToIntBits4 + (f8 != 0.0f ? Float.floatToIntBits(f8) : 0)) * 31;
            float f9 = this.f7619f;
            int floatToIntBits6 = (floatToIntBits5 + (f9 != 0.0f ? Float.floatToIntBits(f9) : 0)) * 31;
            float f10 = this.f7620g;
            int floatToIntBits7 = (floatToIntBits6 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
            float f11 = this.f7621h;
            return floatToIntBits7 + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0);
        }

        public void restore(View view) {
            ChangeTransform.N(view, this.f7614a, this.f7615b, this.f7616c, this.f7617d, this.f7618e, this.f7619f, this.f7620g, this.f7621h);
        }
    }

    static {
        G0 = Build.VERSION.SDK_INT >= 21;
    }

    public ChangeTransform() {
        this.f7596u0 = true;
        this.f7597v0 = true;
        this.f7598w0 = new Matrix();
    }

    private void H(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        transitionValues.values.put(f7595z0, view.getParent());
        transitionValues.values.put(f7594y0, new Transforms(view));
        Matrix matrix = view.getMatrix();
        transitionValues.values.put(f7593x0, (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (this.f7597v0) {
            Matrix matrix2 = new Matrix();
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            ViewUtils.j(viewGroup, matrix2);
            matrix2.preTranslate(-viewGroup.getScrollX(), -viewGroup.getScrollY());
            transitionValues.values.put(A0, matrix2);
            transitionValues.values.put(C0, view.getTag(R.id.transition_transform));
            transitionValues.values.put(B0, view.getTag(R.id.parent_matrix));
        }
    }

    private void I(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        View view = transitionValues2.view;
        Matrix matrix = new Matrix((Matrix) transitionValues2.values.get(A0));
        ViewUtils.k(viewGroup, matrix);
        GhostView a4 = GhostViewUtils.a(view, viewGroup, matrix);
        if (a4 == null) {
            return;
        }
        a4.reserveEndViewTransition((ViewGroup) transitionValues.values.get(f7595z0), transitionValues.view);
        Transition transition = this;
        while (true) {
            Transition transition2 = transition.f7719r;
            if (transition2 == null) {
                break;
            }
            transition = transition2;
        }
        transition.addListener(new GhostListener(view, a4));
        if (G0) {
            View view2 = transitionValues.view;
            if (view2 != transitionValues2.view) {
                ViewUtils.h(view2, 0.0f);
            }
            ViewUtils.h(view, 1.0f);
        }
    }

    private ObjectAnimator J(TransitionValues transitionValues, TransitionValues transitionValues2, final boolean z3) {
        Matrix matrix = (Matrix) transitionValues.values.get(f7593x0);
        Matrix matrix2 = (Matrix) transitionValues2.values.get(f7593x0);
        if (matrix == null) {
            matrix = MatrixUtils.f7664a;
        }
        if (matrix2 == null) {
            matrix2 = MatrixUtils.f7664a;
        }
        final Matrix matrix3 = matrix2;
        if (matrix.equals(matrix3)) {
            return null;
        }
        final Transforms transforms = (Transforms) transitionValues2.values.get(f7594y0);
        final View view = transitionValues2.view;
        L(view);
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        float[] fArr2 = new float[9];
        matrix3.getValues(fArr2);
        final PathAnimatorMatrix pathAnimatorMatrix = new PathAnimatorMatrix(view, fArr);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(pathAnimatorMatrix, PropertyValuesHolder.ofObject(E0, new FloatArrayEvaluator(new float[9]), fArr, fArr2), PropertyValuesHolderUtils.a(F0, getPathMotion().getPath(fArr[2], fArr[5], fArr2[2], fArr2[5])));
        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeTransform.3

            /* renamed from: a  reason: collision with root package name */
            private boolean f7599a;

            /* renamed from: b  reason: collision with root package name */
            private Matrix f7600b = new Matrix();

            private void a(Matrix matrix4) {
                this.f7600b.set(matrix4);
                view.setTag(R.id.transition_transform, this.f7600b);
                transforms.restore(view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.f7599a = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.f7599a) {
                    if (z3 && ChangeTransform.this.f7596u0) {
                        a(matrix3);
                    } else {
                        view.setTag(R.id.transition_transform, null);
                        view.setTag(R.id.parent_matrix, null);
                    }
                }
                ViewUtils.f(view, null);
                transforms.restore(view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(Animator animator) {
                a(pathAnimatorMatrix.a());
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(Animator animator) {
                ChangeTransform.L(view);
            }
        };
        ofPropertyValuesHolder.addListener(animatorListenerAdapter);
        AnimatorUtils.a(ofPropertyValuesHolder, animatorListenerAdapter);
        return ofPropertyValuesHolder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        if (r5 == r4.view) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
        if (r4 == r5) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001d, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001f, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean K(android.view.ViewGroup r4, android.view.ViewGroup r5) {
        /*
            r3 = this;
            boolean r0 = r3.s(r4)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L1a
            boolean r0 = r3.s(r5)
            if (r0 != 0) goto Lf
            goto L1a
        Lf:
            androidx.transition.TransitionValues r4 = r3.p(r4, r1)
            if (r4 == 0) goto L1f
            android.view.View r4 = r4.view
            if (r5 != r4) goto L1d
            goto L1e
        L1a:
            if (r4 != r5) goto L1d
            goto L1e
        L1d:
            r1 = 0
        L1e:
            r2 = r1
        L1f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.K(android.view.ViewGroup, android.view.ViewGroup):boolean");
    }

    static void L(View view) {
        N(view, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    }

    private void M(TransitionValues transitionValues, TransitionValues transitionValues2) {
        Matrix matrix = (Matrix) transitionValues2.values.get(A0);
        transitionValues2.view.setTag(R.id.parent_matrix, matrix);
        Matrix matrix2 = this.f7598w0;
        matrix2.reset();
        matrix.invert(matrix2);
        Matrix matrix3 = (Matrix) transitionValues.values.get(f7593x0);
        if (matrix3 == null) {
            matrix3 = new Matrix();
            transitionValues.values.put(f7593x0, matrix3);
        }
        matrix3.postConcat((Matrix) transitionValues.values.get(A0));
        matrix3.postConcat(matrix2);
    }

    static void N(View view, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11) {
        view.setTranslationX(f4);
        view.setTranslationY(f5);
        ViewCompat.setTranslationZ(view, f6);
        view.setScaleX(f7);
        view.setScaleY(f8);
        view.setRotationX(f9);
        view.setRotationY(f10);
        view.setRotation(f11);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        H(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        H(transitionValues);
        if (G0) {
            return;
        }
        ((ViewGroup) transitionValues.view.getParent()).startViewTransition(transitionValues.view);
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(@NonNull ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !transitionValues.values.containsKey(f7595z0) || !transitionValues2.values.containsKey(f7595z0)) {
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) transitionValues.values.get(f7595z0);
        boolean z3 = this.f7597v0 && !K(viewGroup2, (ViewGroup) transitionValues2.values.get(f7595z0));
        Matrix matrix = (Matrix) transitionValues.values.get(C0);
        if (matrix != null) {
            transitionValues.values.put(f7593x0, matrix);
        }
        Matrix matrix2 = (Matrix) transitionValues.values.get(B0);
        if (matrix2 != null) {
            transitionValues.values.put(A0, matrix2);
        }
        if (z3) {
            M(transitionValues, transitionValues2);
        }
        ObjectAnimator J = J(transitionValues, transitionValues2, z3);
        if (z3 && J != null && this.f7596u0) {
            I(viewGroup, transitionValues, transitionValues2);
        } else if (!G0) {
            viewGroup2.endViewTransition(transitionValues.view);
        }
        return J;
    }

    public boolean getReparent() {
        return this.f7597v0;
    }

    public boolean getReparentWithOverlay() {
        return this.f7596u0;
    }

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return D0;
    }

    public void setReparent(boolean z3) {
        this.f7597v0 = z3;
    }

    public void setReparentWithOverlay(boolean z3) {
        this.f7596u0 = z3;
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7596u0 = true;
        this.f7597v0 = true;
        this.f7598w0 = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f7690g);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f7596u0 = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.f7597v0 = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }
}
