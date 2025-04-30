package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetailItemOneTouchSkillListItemBinding.java */
/* loaded from: classes3.dex */
public final class rk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24440a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24441b;

    private rk(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView) {
        this.f24440a = constraintLayout;
        this.f24441b = textView;
    }

    @NonNull
    public static rk a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
        if (textView != null) {
            return new rk((ConstraintLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.name)));
    }

    @NonNull
    public static rk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_one_touch_skill_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24440a;
    }
}
