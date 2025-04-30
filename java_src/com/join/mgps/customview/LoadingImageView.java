package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class LoadingImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private AnimationDrawable f45755a;

    public LoadingImageView(Context context) {
        super(context);
        this.f45755a = (AnimationDrawable) getBackground();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AnimationDrawable animationDrawable = this.f45755a;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimationDrawable animationDrawable = this.f45755a;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    public LoadingImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45755a = (AnimationDrawable) getBackground();
    }

    public LoadingImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45755a = (AnimationDrawable) getBackground();
    }
}
