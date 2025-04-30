package com.papa91.arc.widget;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes4.dex */
public class LoadingImageView extends ImageView {
    private AnimationDrawable mAnimationDrawable;

    public LoadingImageView(Context context) {
        super(context);
        this.mAnimationDrawable = (AnimationDrawable) getBackground();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AnimationDrawable animationDrawable = this.mAnimationDrawable;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimationDrawable animationDrawable = this.mAnimationDrawable;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    public LoadingImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAnimationDrawable = (AnimationDrawable) getBackground();
    }

    public LoadingImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mAnimationDrawable = (AnimationDrawable) getBackground();
    }
}
