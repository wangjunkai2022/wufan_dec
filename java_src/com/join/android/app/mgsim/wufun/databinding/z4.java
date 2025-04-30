package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: ChioceItemChoiceBottomBinding.java */
/* loaded from: classes3.dex */
public final class z4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f27110a;

    private z4(@NonNull View view) {
        this.f27110a = view;
    }

    @NonNull
    public static z4 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new z4(view);
    }

    @NonNull
    public static z4 b(@NonNull LayoutInflater layoutInflater) {
        return c(layoutInflater, null, false);
    }

    @NonNull
    public static z4 c(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_choice_bottom, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f27110a;
    }
}
