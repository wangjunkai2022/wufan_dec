package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
import m.framework.ui.widget.slidingmenu.SlidingMenu;
/* compiled from: SlidingmenumainBinding.java */
/* loaded from: classes3.dex */
public final class yb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final SlidingMenu f26874a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SlidingMenu f26875b;

    private yb0(@NonNull SlidingMenu slidingMenu, @NonNull SlidingMenu slidingMenu2) {
        this.f26874a = slidingMenu;
        this.f26875b = slidingMenu2;
    }

    @NonNull
    public static yb0 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        SlidingMenu slidingMenu = (SlidingMenu) view;
        return new yb0(slidingMenu, slidingMenu);
    }

    @NonNull
    public static yb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.slidingmenumain, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public SlidingMenu getRoot() {
        return this.f26874a;
    }
}
