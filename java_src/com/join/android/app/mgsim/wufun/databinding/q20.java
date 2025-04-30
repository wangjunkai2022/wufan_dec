package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: MgpapaHomeUnderlineBinding.java */
/* loaded from: classes3.dex */
public final class q20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f23815a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f23816b;

    private q20(@NonNull View view, @NonNull View view2) {
        this.f23815a = view;
        this.f23816b = view2;
    }

    @NonNull
    public static q20 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new q20(view, view);
    }

    @NonNull
    public static q20 b(@NonNull LayoutInflater layoutInflater) {
        return c(layoutInflater, null, false);
    }

    @NonNull
    public static q20 c(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_home_underline, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f23815a;
    }
}
