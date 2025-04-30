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
/* compiled from: ItemModIntroductionTypeBinding.java */
/* loaded from: classes3.dex */
public final class fr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20215a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20216b;

    private fr(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f20215a = linearLayout;
        this.f20216b = textView;
    }

    @NonNull
    public static fr a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
        if (textView != null) {
            return new fr((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_name)));
    }

    @NonNull
    public static fr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_mod_introduction_type, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20215a;
    }
}
