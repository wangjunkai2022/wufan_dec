package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.annotation.AnimRes;
import androidx.annotation.NonNull;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.fragment.R;
import androidx.fragment.app.FragmentTransition;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentAnim {
    private FragmentAnim() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull final Fragment fragment, @NonNull AnimationOrAnimator animationOrAnimator, @NonNull final FragmentTransition.Callback callback) {
        final View view = fragment.mView;
        final ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        final CancellationSignal cancellationSignal = new CancellationSignal();
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.FragmentAnim.1
            @Override // androidx.core.os.CancellationSignal.OnCancelListener
            public void onCancel() {
                if (Fragment.this.getAnimatingAway() != null) {
                    View animatingAway = Fragment.this.getAnimatingAway();
                    Fragment.this.setAnimatingAway(null);
                    animatingAway.clearAnimation();
                }
                Fragment.this.setAnimator(null);
            }
        });
        callback.onStart(fragment, cancellationSignal);
        if (animationOrAnimator.animation != null) {
            EndViewTransitionAnimation endViewTransitionAnimation = new EndViewTransitionAnimation(animationOrAnimator.animation, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.FragmentAnim.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.FragmentAnim.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (fragment.getAnimatingAway() != null) {
                                fragment.setAnimatingAway(null);
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                callback.onComplete(fragment, cancellationSignal);
                            }
                        }
                    });
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            fragment.mView.startAnimation(endViewTransitionAnimation);
            return;
        }
        Animator animator = animationOrAnimator.animator;
        fragment.setAnimator(animator);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.FragmentAnim.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator animator3 = fragment.getAnimator();
                fragment.setAnimator(null);
                if (animator3 == null || viewGroup.indexOfChild(view) >= 0) {
                    return;
                }
                callback.onComplete(fragment, cancellationSignal);
            }
        });
        animator.setTarget(fragment.mView);
        animator.start();
    }

    private static int b(Fragment fragment, boolean z3, boolean z4) {
        if (z4) {
            if (z3) {
                return fragment.getPopEnterAnim();
            }
            return fragment.getPopExitAnim();
        } else if (z3) {
            return fragment.getEnterAnim();
        } else {
            return fragment.getExitAnim();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimationOrAnimator c(@NonNull Context context, @NonNull Fragment fragment, boolean z3, boolean z4) {
        int nextTransition = fragment.getNextTransition();
        int b4 = b(fragment, z3, z4);
        boolean z5 = false;
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            int i2 = R.id.visible_removing_fragment_view_tag;
            if (viewGroup.getTag(i2) != null) {
                fragment.mContainer.setTag(i2, null);
            }
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z3, b4);
            if (onCreateAnimation != null) {
                return new AnimationOrAnimator(onCreateAnimation);
            }
            Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z3, b4);
            if (onCreateAnimator != null) {
                return new AnimationOrAnimator(onCreateAnimator);
            }
            if (b4 == 0 && nextTransition != 0) {
                b4 = d(nextTransition, z3);
            }
            if (b4 != 0) {
                boolean equals = "anim".equals(context.getResources().getResourceTypeName(b4));
                if (equals) {
                    try {
                        Animation loadAnimation = AnimationUtils.loadAnimation(context, b4);
                        if (loadAnimation != null) {
                            return new AnimationOrAnimator(loadAnimation);
                        }
                        z5 = true;
                    } catch (Resources.NotFoundException e4) {
                        throw e4;
                    } catch (RuntimeException unused) {
                    }
                }
                if (!z5) {
                    try {
                        Animator loadAnimator = AnimatorInflater.loadAnimator(context, b4);
                        if (loadAnimator != null) {
                            return new AnimationOrAnimator(loadAnimator);
                        }
                    } catch (RuntimeException e5) {
                        if (!equals) {
                            Animation loadAnimation2 = AnimationUtils.loadAnimation(context, b4);
                            if (loadAnimation2 != null) {
                                return new AnimationOrAnimator(loadAnimation2);
                            }
                        } else {
                            throw e5;
                        }
                    }
                }
            }
            return null;
        }
        return null;
    }

    @AnimRes
    private static int d(int i2, boolean z3) {
        if (i2 == 4097) {
            return z3 ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
        } else if (i2 == 4099) {
            return z3 ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
        } else if (i2 != 8194) {
            return -1;
        } else {
            return z3 ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AnimationOrAnimator {
        public final Animation animation;
        public final Animator animator;

        AnimationOrAnimator(Animation animation) {
            this.animation = animation;
            this.animator = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        AnimationOrAnimator(Animator animator) {
            this.animation = null;
            this.animator = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class EndViewTransitionAnimation extends AnimationSet implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final ViewGroup f5849a;

        /* renamed from: b  reason: collision with root package name */
        private final View f5850b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f5851c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f5852d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f5853e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public EndViewTransitionAnimation(@NonNull Animation animation, @NonNull ViewGroup viewGroup, @NonNull View view) {
            super(false);
            this.f5853e = true;
            this.f5849a = viewGroup;
            this.f5850b = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j4, @NonNull Transformation transformation) {
            this.f5853e = true;
            if (this.f5851c) {
                return !this.f5852d;
            }
            if (!super.getTransformation(j4, transformation)) {
                this.f5851c = true;
                OneShotPreDrawListener.add(this.f5849a, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f5851c && this.f5853e) {
                this.f5853e = false;
                this.f5849a.post(this);
                return;
            }
            this.f5849a.endViewTransition(this.f5850b);
            this.f5852d = true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j4, @NonNull Transformation transformation, float f4) {
            this.f5853e = true;
            if (this.f5851c) {
                return !this.f5852d;
            }
            if (!super.getTransformation(j4, transformation, f4)) {
                this.f5851c = true;
                OneShotPreDrawListener.add(this.f5849a, this);
            }
            return true;
        }
    }
}
