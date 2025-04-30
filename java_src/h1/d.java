package h1;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
/* compiled from: SlideInBottomAnimation.java */
/* loaded from: classes3.dex */
public class d implements b {
    @Override // h1.b
    public Animator[] a(View view) {
        return new Animator[]{ObjectAnimator.ofFloat(view, "translationY", view.getMeasuredHeight(), 0.0f)};
    }
}
