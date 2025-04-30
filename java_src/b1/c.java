package b1;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* compiled from: ExpandableWidgetHelper.java */
/* loaded from: classes2.dex */
public final class c {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f8198a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8199b = false;
    @IdRes

    /* renamed from: c  reason: collision with root package name */
    private int f8200c = 0;

    public c(b bVar) {
        this.f8198a = (View) bVar;
    }

    private void a() {
        ViewParent parent = this.f8198a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f8198a);
        }
    }

    @IdRes
    public int b() {
        return this.f8200c;
    }

    public boolean c() {
        return this.f8199b;
    }

    public void d(@NonNull Bundle bundle) {
        this.f8199b = bundle.getBoolean("expanded", false);
        this.f8200c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f8199b) {
            a();
        }
    }

    @NonNull
    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f8199b);
        bundle.putInt("expandedComponentIdHint", this.f8200c);
        return bundle;
    }

    public boolean f(boolean z3) {
        if (this.f8199b != z3) {
            this.f8199b = z3;
            a();
            return true;
        }
        return false;
    }

    public void g(@IdRes int i2) {
        this.f8200c = i2;
    }
}
