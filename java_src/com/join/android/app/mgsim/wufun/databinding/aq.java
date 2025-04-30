package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGameDetailBtTagBinding.java */
/* loaded from: classes3.dex */
public final class aq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18278a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18279b;

    private aq(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f18278a = linearLayout;
        this.f18279b = linearLayout2;
    }

    @NonNull
    public static aq a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btTaglayout);
        if (linearLayout != null) {
            return new aq((LinearLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.btTaglayout)));
    }

    @NonNull
    public static aq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static aq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_detail_bt_tag, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18278a;
    }
}
