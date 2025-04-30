package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: ActivityMyVoucherGameBinding.java */
/* loaded from: classes3.dex */
public final class e1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19553a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f19554b;

    private e1(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f19553a = linearLayout;
        this.f19554b = linearLayout2;
    }

    @NonNull
    public static e1 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        LinearLayout linearLayout = (LinearLayout) view;
        return new e1(linearLayout, linearLayout);
    }

    @NonNull
    public static e1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_my_voucher_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19553a;
    }
}
