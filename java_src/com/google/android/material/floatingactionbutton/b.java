package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import com.google.android.material.animation.h;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseMotionStrategy.java */
/* loaded from: classes2.dex */
public abstract class b implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14935a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final ExtendedFloatingActionButton f14936b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<Animator.AnimatorListener> f14937c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.a f14938d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private h f14939e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private h f14940f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseMotionStrategy.java */
    /* loaded from: classes2.dex */
    public class a extends Property<ExtendedFloatingActionButton, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(com.google.android.material.animation.a.a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.f14881p0.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f14936b.f14881p0.getDefaultColor()))));
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f4) {
            int colorForState = extendedFloatingActionButton.f14881p0.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f14936b.f14881p0.getDefaultColor());
            ColorStateList valueOf = ColorStateList.valueOf(Color.argb((int) (com.google.android.material.animation.a.a(0.0f, Color.alpha(colorForState) / 255.0f, f4.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f4.floatValue() == 1.0f) {
                extendedFloatingActionButton.V(extendedFloatingActionButton.f14881p0);
            } else {
                extendedFloatingActionButton.V(valueOf);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton, com.google.android.material.floatingactionbutton.a aVar) {
        this.f14936b = extendedFloatingActionButton;
        this.f14935a = extendedFloatingActionButton.getContext();
        this.f14938d = aVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final h a() {
        h hVar = this.f14940f;
        if (hVar != null) {
            return hVar;
        }
        if (this.f14939e == null) {
            this.f14939e = h.d(this.f14935a, g());
        }
        return (h) Preconditions.checkNotNull(this.f14939e);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @Nullable
    public h c() {
        return this.f14940f;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void e(@NonNull Animator.AnimatorListener animatorListener) {
        this.f14937c.remove(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @CallSuper
    public void f() {
        this.f14938d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void h(@NonNull Animator.AnimatorListener animatorListener) {
        this.f14937c.add(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @CallSuper
    public void i() {
        this.f14938d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void j(@Nullable h hVar) {
        this.f14940f = hVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public AnimatorSet k() {
        return o(a());
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @NonNull
    public final List<Animator.AnimatorListener> l() {
        return this.f14937c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public AnimatorSet o(@NonNull h hVar) {
        ArrayList arrayList = new ArrayList();
        if (hVar.j("opacity")) {
            arrayList.add(hVar.f("opacity", this.f14936b, View.ALPHA));
        }
        if (hVar.j("scale")) {
            arrayList.add(hVar.f("scale", this.f14936b, View.SCALE_Y));
            arrayList.add(hVar.f("scale", this.f14936b, View.SCALE_X));
        }
        if (hVar.j("width")) {
            arrayList.add(hVar.f("width", this.f14936b, ExtendedFloatingActionButton.f14875u0));
        }
        if (hVar.j("height")) {
            arrayList.add(hVar.f("height", this.f14936b, ExtendedFloatingActionButton.f14876v0));
        }
        if (hVar.j("paddingStart")) {
            arrayList.add(hVar.f("paddingStart", this.f14936b, ExtendedFloatingActionButton.f14877w0));
        }
        if (hVar.j("paddingEnd")) {
            arrayList.add(hVar.f("paddingEnd", this.f14936b, ExtendedFloatingActionButton.f14878x0));
        }
        if (hVar.j("labelOpacity")) {
            arrayList.add(hVar.f("labelOpacity", this.f14936b, new a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.animation.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @CallSuper
    public void onAnimationStart(Animator animator) {
        this.f14938d.c(animator);
    }
}
