package h1;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
/* compiled from: AlphaInAnimation.java */
/* loaded from: classes3.dex */
public class a implements b {

    /* renamed from: b  reason: collision with root package name */
    private static final float f65687b = 0.0f;

    /* renamed from: a  reason: collision with root package name */
    private final float f65688a;

    public a() {
        this(0.0f);
    }

    @Override // h1.b
    public Animator[] a(View view) {
        return new Animator[]{ObjectAnimator.ofFloat(view, "alpha", this.f65688a, 1.0f)};
    }

    public a(float f4) {
        this.f65688a = f4;
    }
}
