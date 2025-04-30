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
/* compiled from: GamedetailItemTipitemBinding.java */
/* loaded from: classes3.dex */
public final class xk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26609a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26610b;

    private xk(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f26609a = linearLayout;
        this.f26610b = textView;
    }

    @NonNull
    public static xk a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tipText);
        if (textView != null) {
            return new xk((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tipText)));
    }

    @NonNull
    public static xk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_tipitem, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26609a;
    }
}
