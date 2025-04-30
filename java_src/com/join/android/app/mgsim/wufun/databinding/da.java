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
/* compiled from: DetialNullItemBinding.java */
/* loaded from: classes3.dex */
public final class da implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19271a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19272b;

    private da(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f19271a = linearLayout;
        this.f19272b = textView;
    }

    @NonNull
    public static da a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.itemNul);
        if (textView != null) {
            return new da((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.itemNul)));
    }

    @NonNull
    public static da c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static da d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_null_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19271a;
    }
}
