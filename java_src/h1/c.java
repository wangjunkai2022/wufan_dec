package h1;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
/* compiled from: ScaleInAnimation.java */
/* loaded from: classes3.dex */
public class c implements b {

    /* renamed from: b  reason: collision with root package name */
    private static final float f65689b = 0.5f;

    /* renamed from: a  reason: collision with root package name */
    private final float f65690a;

    public c() {
        this(0.5f);
    }

    @Override // h1.b
    public Animator[] a(View view) {
        return new ObjectAnimator[]{ObjectAnimator.ofFloat(view, "scaleX", this.f65690a, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", this.f65690a, 1.0f)};
    }

    public c(float f4) {
        this.f65690a = f4;
    }
}
