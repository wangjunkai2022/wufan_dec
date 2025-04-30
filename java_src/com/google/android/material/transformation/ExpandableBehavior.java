package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import b1.b;
import java.util.List;
@Deprecated
/* loaded from: classes2.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f16309b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final int f16310c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f16311d = 2;

    /* renamed from: a  reason: collision with root package name */
    private int f16312a;

    /* loaded from: classes2.dex */
    class a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16313a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f16314b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f16315c;

        a(View view, int i2, b bVar) {
            this.f16313a = view;
            this.f16314b = i2;
            this.f16315c = bVar;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f16313a.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f16312a == this.f16314b) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                b bVar = this.f16315c;
                expandableBehavior.e((View) bVar, this.f16313a, bVar.b(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f16312a = 0;
    }

    private boolean b(boolean z3) {
        if (!z3) {
            return this.f16312a == 1;
        }
        int i2 = this.f16312a;
        return i2 == 0 || i2 == 2;
    }

    @Nullable
    public static <T extends ExpandableBehavior> T d(@NonNull View view, @NonNull Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof ExpandableBehavior) {
                return cls.cast(behavior);
            }
            throw new IllegalArgumentException("The view is not associated with ExpandableBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    @Nullable
    protected b c(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view2 = dependencies.get(i2);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (b) view2;
            }
        }
        return null;
    }

    protected abstract boolean e(View view, View view2, boolean z3, boolean z4);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        b bVar = (b) view2;
        if (b(bVar.b())) {
            this.f16312a = bVar.b() ? 1 : 2;
            return e((View) bVar, view, bVar.b(), true);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i2) {
        b c4;
        if (ViewCompat.isLaidOut(view) || (c4 = c(coordinatorLayout, view)) == null || !b(c4.b())) {
            return false;
        }
        int i4 = c4.b() ? 1 : 2;
        this.f16312a = i4;
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, i4, c4));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16312a = 0;
    }
}
