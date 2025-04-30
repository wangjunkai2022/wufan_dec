package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.util.Map;
/* loaded from: classes2.dex */
public class ChangeBounds extends Transition {

    /* renamed from: u0  reason: collision with root package name */
    private int[] f7550u0;

    /* renamed from: v0  reason: collision with root package name */
    private boolean f7551v0;

    /* renamed from: w0  reason: collision with root package name */
    private boolean f7552w0;

    /* renamed from: x0  reason: collision with root package name */
    private static final String f7547x0 = "android:changeBounds:bounds";

    /* renamed from: y0  reason: collision with root package name */
    private static final String f7548y0 = "android:changeBounds:clip";

    /* renamed from: z0  reason: collision with root package name */
    private static final String f7549z0 = "android:changeBounds:parent";
    private static final String A0 = "android:changeBounds:windowX";
    private static final String B0 = "android:changeBounds:windowY";
    private static final String[] C0 = {f7547x0, f7548y0, f7549z0, A0, B0};
    private static final Property<Drawable, PointF> D0 = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: androidx.transition.ChangeBounds.1

        /* renamed from: a  reason: collision with root package name */
        private Rect f7553a = new Rect();

        @Override // android.util.Property
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f7553a);
            Rect rect = this.f7553a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f7553a);
            this.f7553a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f7553a);
        }
    };
    private static final Property<ViewBounds, PointF> E0 = new Property<ViewBounds, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.2
        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.c(pointF);
        }
    };
    private static final Property<ViewBounds, PointF> F0 = new Property<ViewBounds, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.3
        @Override // android.util.Property
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.a(pointF);
        }
    };
    private static final Property<View, PointF> G0 = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.4
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            ViewUtils.g(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    };
    private static final Property<View, PointF> H0 = new Property<View, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.5
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            ViewUtils.g(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    };
    private static final Property<View, PointF> I0 = new Property<View, PointF>(PointF.class, "position") { // from class: androidx.transition.ChangeBounds.6
        @Override // android.util.Property
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            ViewUtils.g(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    };
    private static RectEvaluator J0 = new RectEvaluator();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ViewBounds {

        /* renamed from: a  reason: collision with root package name */
        private int f7572a;

        /* renamed from: b  reason: collision with root package name */
        private int f7573b;

        /* renamed from: c  reason: collision with root package name */
        private int f7574c;

        /* renamed from: d  reason: collision with root package name */
        private int f7575d;

        /* renamed from: e  reason: collision with root package name */
        private View f7576e;

        /* renamed from: f  reason: collision with root package name */
        private int f7577f;

        /* renamed from: g  reason: collision with root package name */
        private int f7578g;

        ViewBounds(View view) {
            this.f7576e = view;
        }

        private void b() {
            ViewUtils.g(this.f7576e, this.f7572a, this.f7573b, this.f7574c, this.f7575d);
            this.f7577f = 0;
            this.f7578g = 0;
        }

        void a(PointF pointF) {
            this.f7574c = Math.round(pointF.x);
            this.f7575d = Math.round(pointF.y);
            int i2 = this.f7578g + 1;
            this.f7578g = i2;
            if (this.f7577f == i2) {
                b();
            }
        }

        void c(PointF pointF) {
            this.f7572a = Math.round(pointF.x);
            this.f7573b = Math.round(pointF.y);
            int i2 = this.f7577f + 1;
            this.f7577f = i2;
            if (i2 == this.f7578g) {
                b();
            }
        }
    }

    public ChangeBounds() {
        this.f7550u0 = new int[2];
        this.f7551v0 = false;
        this.f7552w0 = false;
    }

    private void H(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (!ViewCompat.isLaidOut(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        transitionValues.values.put(f7547x0, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put(f7549z0, transitionValues.view.getParent());
        if (this.f7552w0) {
            transitionValues.view.getLocationInWindow(this.f7550u0);
            transitionValues.values.put(A0, Integer.valueOf(this.f7550u0[0]));
            transitionValues.values.put(B0, Integer.valueOf(this.f7550u0[1]));
        }
        if (this.f7551v0) {
            transitionValues.values.put(f7548y0, ViewCompat.getClipBounds(view));
        }
    }

    private boolean I(View view, View view2) {
        if (this.f7552w0) {
            TransitionValues p3 = p(view, true);
            if (p3 == null) {
                if (view == view2) {
                    return true;
                }
            } else if (view2 == p3.view) {
                return true;
            }
            return false;
        }
        return true;
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
    public Animator createAnimator(@NonNull final ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        int i2;
        final View view;
        int i4;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator c4;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get(f7549z0);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(f7549z0);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view2 = transitionValues2.view;
        if (I(viewGroup2, viewGroup3)) {
            Rect rect2 = (Rect) transitionValues.values.get(f7547x0);
            Rect rect3 = (Rect) transitionValues2.values.get(f7547x0);
            int i5 = rect2.left;
            final int i6 = rect3.left;
            int i7 = rect2.top;
            final int i8 = rect3.top;
            int i9 = rect2.right;
            final int i10 = rect3.right;
            int i11 = rect2.bottom;
            final int i12 = rect3.bottom;
            int i13 = i9 - i5;
            int i14 = i11 - i7;
            int i15 = i10 - i6;
            int i16 = i12 - i8;
            Rect rect4 = (Rect) transitionValues.values.get(f7548y0);
            final Rect rect5 = (Rect) transitionValues2.values.get(f7548y0);
            if ((i13 == 0 || i14 == 0) && (i15 == 0 || i16 == 0)) {
                i2 = 0;
            } else {
                i2 = (i5 == i6 && i7 == i8) ? 0 : 1;
                if (i9 != i10 || i11 != i12) {
                    i2++;
                }
            }
            if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
                i2++;
            }
            if (i2 > 0) {
                if (!this.f7551v0) {
                    view = view2;
                    ViewUtils.g(view, i5, i7, i9, i11);
                    if (i2 == 2) {
                        if (i13 == i15 && i14 == i16) {
                            c4 = ObjectAnimatorUtils.a(view, I0, getPathMotion().getPath(i5, i7, i6, i8));
                        } else {
                            ViewBounds viewBounds = new ViewBounds(view);
                            ObjectAnimator a4 = ObjectAnimatorUtils.a(viewBounds, E0, getPathMotion().getPath(i5, i7, i6, i8));
                            ObjectAnimator a5 = ObjectAnimatorUtils.a(viewBounds, F0, getPathMotion().getPath(i9, i11, i10, i12));
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(a4, a5);
                            animatorSet.addListener(new AnimatorListenerAdapter(viewBounds) { // from class: androidx.transition.ChangeBounds.7

                                /* renamed from: a  reason: collision with root package name */
                                final /* synthetic */ ViewBounds f7559a;
                                private ViewBounds mViewBounds;

                                {
                                    this.f7559a = viewBounds;
                                    this.mViewBounds = viewBounds;
                                }
                            });
                            c4 = animatorSet;
                        }
                    } else if (i5 == i6 && i7 == i8) {
                        c4 = ObjectAnimatorUtils.a(view, G0, getPathMotion().getPath(i9, i11, i10, i12));
                    } else {
                        c4 = ObjectAnimatorUtils.a(view, H0, getPathMotion().getPath(i5, i7, i6, i8));
                    }
                } else {
                    view = view2;
                    ViewUtils.g(view, i5, i7, Math.max(i13, i15) + i5, Math.max(i14, i16) + i7);
                    ObjectAnimator a6 = (i5 == i6 && i7 == i8) ? null : ObjectAnimatorUtils.a(view, I0, getPathMotion().getPath(i5, i7, i6, i8));
                    if (rect4 == null) {
                        i4 = 0;
                        rect = new Rect(0, 0, i13, i14);
                    } else {
                        i4 = 0;
                        rect = rect4;
                    }
                    Rect rect6 = rect5 == null ? new Rect(i4, i4, i15, i16) : rect5;
                    if (rect.equals(rect6)) {
                        objectAnimator = null;
                    } else {
                        ViewCompat.setClipBounds(view, rect);
                        RectEvaluator rectEvaluator = J0;
                        Object[] objArr = new Object[2];
                        objArr[i4] = rect;
                        objArr[1] = rect6;
                        ObjectAnimator ofObject = ObjectAnimator.ofObject(view, "clipBounds", rectEvaluator, objArr);
                        ofObject.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeBounds.8

                            /* renamed from: a  reason: collision with root package name */
                            private boolean f7561a;

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                                this.f7561a = true;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (this.f7561a) {
                                    return;
                                }
                                ViewCompat.setClipBounds(view, rect5);
                                ViewUtils.g(view, i6, i8, i10, i12);
                            }
                        });
                        objectAnimator = ofObject;
                    }
                    c4 = TransitionUtils.c(a6, objectAnimator);
                }
                if (view.getParent() instanceof ViewGroup) {
                    final ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                    ViewGroupUtils.d(viewGroup4, true);
                    addListener(new TransitionListenerAdapter() { // from class: androidx.transition.ChangeBounds.9

                        /* renamed from: a  reason: collision with root package name */
                        boolean f7569a = false;

                        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                        public void onTransitionCancel(@NonNull Transition transition) {
                            ViewGroupUtils.d(viewGroup4, false);
                            this.f7569a = true;
                        }

                        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                        public void onTransitionEnd(@NonNull Transition transition) {
                            if (!this.f7569a) {
                                ViewGroupUtils.d(viewGroup4, false);
                            }
                            transition.removeListener(this);
                        }

                        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                        public void onTransitionPause(@NonNull Transition transition) {
                            ViewGroupUtils.d(viewGroup4, false);
                        }

                        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                        public void onTransitionResume(@NonNull Transition transition) {
                            ViewGroupUtils.d(viewGroup4, true);
                        }
                    });
                }
                return c4;
            }
            return null;
        }
        int intValue = ((Integer) transitionValues.values.get(A0)).intValue();
        int intValue2 = ((Integer) transitionValues.values.get(B0)).intValue();
        int intValue3 = ((Integer) transitionValues2.values.get(A0)).intValue();
        int intValue4 = ((Integer) transitionValues2.values.get(B0)).intValue();
        if (intValue == intValue3 && intValue2 == intValue4) {
            return null;
        }
        viewGroup.getLocationInWindow(this.f7550u0);
        Bitmap createBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
        view2.draw(new Canvas(createBitmap));
        final BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
        final float c5 = ViewUtils.c(view2);
        ViewUtils.h(view2, 0.0f);
        ViewUtils.b(viewGroup).add(bitmapDrawable);
        PathMotion pathMotion = getPathMotion();
        int[] iArr = this.f7550u0;
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, PropertyValuesHolderUtils.a(D0, pathMotion.getPath(intValue - iArr[0], intValue2 - iArr[1], intValue3 - iArr[0], intValue4 - iArr[1])));
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeBounds.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewUtils.b(viewGroup).remove(bitmapDrawable);
                ViewUtils.h(view2, c5);
            }
        });
        return ofPropertyValuesHolder;
    }

    public boolean getResizeClip() {
        return this.f7551v0;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return C0;
    }

    public void setResizeClip(boolean z3) {
        this.f7551v0 = z3;
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7550u0 = new int[2];
        this.f7551v0 = false;
        this.f7552w0 = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f7687d);
        boolean namedBoolean = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        setResizeClip(namedBoolean);
    }
}
