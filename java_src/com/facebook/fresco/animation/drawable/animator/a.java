package com.facebook.fresco.animation.drawable.animator;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
/* compiled from: AnimatedDrawable2ValueAnimatorHelper.java */
@TargetApi(11)
/* loaded from: classes2.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedDrawable2ValueAnimatorHelper.java */
    /* renamed from: com.facebook.fresco.animation.drawable.animator.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0073a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.fresco.animation.drawable.a f12314a;

        C0073a(com.facebook.fresco.animation.drawable.a aVar) {
            this.f12314a = aVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        @TargetApi(11)
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f12314a.setLevel(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    private a() {
    }

    public static ValueAnimator.AnimatorUpdateListener a(com.facebook.fresco.animation.drawable.a aVar) {
        return new C0073a(aVar);
    }

    public static ValueAnimator b(com.facebook.fresco.animation.drawable.a aVar) {
        int g4 = aVar.g();
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, (int) aVar.h());
        valueAnimator.setDuration(aVar.h());
        if (g4 == 0) {
            g4 = -1;
        }
        valueAnimator.setRepeatCount(g4);
        valueAnimator.setRepeatMode(1);
        valueAnimator.setInterpolator(null);
        valueAnimator.addUpdateListener(a(aVar));
        return valueAnimator;
    }

    public static ValueAnimator c(com.facebook.fresco.animation.drawable.a aVar, int i2) {
        ValueAnimator b4 = b(aVar);
        if (b4 == null) {
            return null;
        }
        b4.setRepeatCount((int) Math.max(i2 / aVar.h(), 1L));
        return b4;
    }
}
