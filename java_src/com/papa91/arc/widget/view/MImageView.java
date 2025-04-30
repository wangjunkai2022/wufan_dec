package com.papa91.arc.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.facebook.drawee.view.SimpleDraweeView;
import com.papa91.arc.widget.IAnimation;
/* loaded from: classes4.dex */
public class MImageView extends SimpleDraweeView implements IAnimation {
    public MImageView(Context context) {
        this(context, null);
    }

    @Override // com.papa91.arc.widget.IAnimation
    public void hide(boolean z3, long j4) {
        if (z3) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(j4);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.papa91.arc.widget.view.MImageView.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    MImageView.this.setVisibility(8);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            startAnimation(alphaAnimation);
            return;
        }
        setVisibility(8);
    }

    @Override // com.papa91.arc.widget.IAnimation
    public void show(boolean z3, long j4) {
        if (z3) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(j4);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.papa91.arc.widget.view.MImageView.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    MImageView.this.setVisibility(0);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            startAnimation(alphaAnimation);
            return;
        }
        setVisibility(0);
    }

    public MImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.papa91.arc.widget.IAnimation
    public void hide(boolean z3) {
        hide(z3, 180L);
    }

    @Override // com.papa91.arc.widget.IAnimation
    public void show(boolean z3) {
        show(z3, 180L);
    }
}
