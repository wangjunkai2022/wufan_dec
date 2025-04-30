package com.join.android.app.common.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CommonDialogLoading.java */
/* loaded from: classes.dex */
public class e extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Context f16925a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f16926b;

    /* renamed from: c  reason: collision with root package name */
    Animation f16927c;

    public e(Context context) {
        super(context, R.style.HKDialogLoading);
        this.f16925a = context;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        requestWindowFeature(-1);
        super.onCreate(bundle);
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.rotate_repeat);
        this.f16927c = loadAnimation;
        loadAnimation.setInterpolator(new LinearInterpolator());
        ImageView imageView = new ImageView(this.f16925a);
        this.f16926b = imageView;
        imageView.setImageResource(R.drawable.loading_ios);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        addContentView(this.f16926b, layoutParams);
        setCanceledOnTouchOutside(false);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            hide();
            return true;
        }
        return false;
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            this.f16926b.startAnimation(this.f16927c);
        } catch (Exception unused) {
        }
    }
}
