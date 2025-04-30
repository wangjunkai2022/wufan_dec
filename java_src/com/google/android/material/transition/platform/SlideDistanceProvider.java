package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class SlideDistanceProvider implements t {

    /* renamed from: c  reason: collision with root package name */
    private static final int f16542c = -1;

    /* renamed from: a  reason: collision with root package name */
    private int f16543a;
    @Px

    /* renamed from: b  reason: collision with root package name */
    private int f16544b = -1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface GravityFlag {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16545a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16546b;

        a(View view, float f4) {
            this.f16545a = view;
            this.f16546b = f4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16545a.setTranslationX(this.f16546b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16547a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f16548b;

        b(View view, float f4) {
            this.f16547a = view;
            this.f16548b = f4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16547a.setTranslationY(this.f16548b);
        }
    }

    public SlideDistanceProvider(int i2) {
        this.f16543a = i2;
    }

    private static Animator c(View view, View view2, int i2, @Px int i4) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i2 != 3) {
            if (i2 != 5) {
                if (i2 != 48) {
                    if (i2 != 80) {
                        if (i2 == 8388611) {
                            return e(view2, j(view) ? i4 + translationX : translationX - i4, translationX, translationX);
                        } else if (i2 == 8388613) {
                            return e(view2, j(view) ? translationX - i4 : i4 + translationX, translationX, translationX);
                        } else {
                            throw new IllegalArgumentException("Invalid slide direction: " + i2);
                        }
                    }
                    return f(view2, i4 + translationY, translationY, translationY);
                }
                return f(view2, translationY - i4, translationY, translationY);
            }
            return e(view2, translationX - i4, translationX, translationX);
        }
        return e(view2, i4 + translationX, translationX, translationX);
    }

    private static Animator d(View view, View view2, int i2, @Px int i4) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i2 != 3) {
            if (i2 != 5) {
                if (i2 != 48) {
                    if (i2 != 80) {
                        if (i2 == 8388611) {
                            return e(view2, translationX, j(view) ? translationX - i4 : i4 + translationX, translationX);
                        } else if (i2 == 8388613) {
                            return e(view2, translationX, j(view) ? i4 + translationX : translationX - i4, translationX);
                        } else {
                            throw new IllegalArgumentException("Invalid slide direction: " + i2);
                        }
                    }
                    return f(view2, translationY, translationY - i4, translationY);
                }
                return f(view2, translationY, i4 + translationY, translationY);
            }
            return e(view2, translationX, i4 + translationX, translationX);
        }
        return e(view2, translationX, translationX - i4, translationX);
    }

    private static Animator e(View view, float f4, float f5, float f6) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, f4, f5));
        ofPropertyValuesHolder.addListener(new a(view, f6));
        return ofPropertyValuesHolder;
    }

    private static Animator f(View view, float f4, float f5, float f6) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, f4, f5));
        ofPropertyValuesHolder.addListener(new b(view, f6));
        return ofPropertyValuesHolder;
    }

    private int h(Context context) {
        int i2 = this.f16544b;
        return i2 != -1 ? i2 : context.getResources().getDimensionPixelSize(R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    private static boolean j(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    @Override // com.google.android.material.transition.platform.t
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return d(viewGroup, view, this.f16543a, h(view.getContext()));
    }

    @Override // com.google.android.material.transition.platform.t
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return c(viewGroup, view, this.f16543a, h(view.getContext()));
    }

    @Px
    public int g() {
        return this.f16544b;
    }

    public int i() {
        return this.f16543a;
    }

    public void k(@Px int i2) {
        if (i2 >= 0) {
            this.f16544b = i2;
            return;
        }
        throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
    }

    public void l(int i2) {
        this.f16543a = i2;
    }
}
