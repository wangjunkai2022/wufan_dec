package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
@Deprecated
/* loaded from: classes2.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private AnimatorSet f16317e;

    /* loaded from: classes2.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f16317e = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    public boolean e(View view, View view2, boolean z3, boolean z4) {
        AnimatorSet animatorSet = this.f16317e;
        boolean z5 = animatorSet != null;
        if (z5) {
            animatorSet.cancel();
        }
        AnimatorSet g4 = g(view, view2, z3, z5);
        this.f16317e = g4;
        g4.addListener(new a());
        this.f16317e.start();
        if (!z4) {
            this.f16317e.end();
        }
        return true;
    }

    @NonNull
    protected abstract AnimatorSet g(View view, View view2, boolean z3, boolean z4);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
