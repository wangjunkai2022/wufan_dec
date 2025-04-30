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
/* compiled from: DetialTagItemModlethreeLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ha implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20714a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20715b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20716c;

    private ha(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f20714a = linearLayout;
        this.f20715b = linearLayout2;
        this.f20716c = textView;
    }

    @NonNull
    public static ha a(@NonNull View view) {
        int i2 = R.id.itemBack;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.itemBack);
        if (linearLayout != null) {
            i2 = R.id.tipText;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tipText);
            if (textView != null) {
                return new ha((LinearLayout) view, linearLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ha c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ha d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_tag_item_modlethree_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20714a;
    }
}
