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
/* compiled from: GamedetailItemBottomEmptyBinding.java */
/* loaded from: classes3.dex */
public final class rj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24438a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24439b;

    private rj(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f24438a = linearLayout;
        this.f24439b = textView;
    }

    @NonNull
    public static rj a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView55);
        if (textView != null) {
            return new rj((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.textView55)));
    }

    @NonNull
    public static rj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_bottom_empty, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24438a;
    }
}
