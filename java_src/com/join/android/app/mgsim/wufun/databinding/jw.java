package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LuckdrawRuleLayoutItemBinding.java */
/* loaded from: classes3.dex */
public final class jw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21558a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21559b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f21560c;

    private jw(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f21558a = linearLayout;
        this.f21559b = textView;
        this.f21560c = linearLayout2;
    }

    @NonNull
    public static jw a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.describe);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            return new jw(linearLayout, textView, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.describe)));
    }

    @NonNull
    public static jw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.luckdraw_rule_layout_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21558a;
    }
}
