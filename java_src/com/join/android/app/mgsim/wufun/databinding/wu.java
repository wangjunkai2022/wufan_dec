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
/* compiled from: LayoutVoucherGameItemBinding.java */
/* loaded from: classes3.dex */
public final class wu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26266a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26267b;

    private wu(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f26266a = linearLayout;
        this.f26267b = linearLayout2;
    }

    @NonNull
    public static wu a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        LinearLayout linearLayout = (LinearLayout) view;
        return new wu(linearLayout, linearLayout);
    }

    @NonNull
    public static wu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_voucher_game_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26266a;
    }
}
