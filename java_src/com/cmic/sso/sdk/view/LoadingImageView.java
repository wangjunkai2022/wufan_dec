package com.cmic.sso.sdk.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
/* loaded from: classes2.dex */
public class LoadingImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Animation f11002a;

    /* renamed from: b  reason: collision with root package name */
    private LinearInterpolator f11003b;

    public LoadingImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f11002a = null;
        this.f11003b = null;
        a();
    }

    protected void a() {
        this.f11002a = AnimationUtils.loadAnimation(getContext(), b.c(getContext(), "umcsdk_anim_loading"));
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        this.f11003b = linearInterpolator;
        this.f11002a.setInterpolator(linearInterpolator);
    }

    public LoadingImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11002a = null;
        this.f11003b = null;
        a();
    }

    public LoadingImageView(Context context) {
        super(context);
        this.f11002a = null;
        this.f11003b = null;
        a();
    }
}
