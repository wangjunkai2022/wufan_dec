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
/* compiled from: FindgameClassfyCategoryItemBinding.java */
/* loaded from: classes3.dex */
public final class ff implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20125a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20126b;

    private ff(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f20125a = linearLayout;
        this.f20126b = textView;
    }

    @NonNull
    public static ff a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.mTopCategoryNameTv);
        if (textView != null) {
            return new ff((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.mTopCategoryNameTv)));
    }

    @NonNull
    public static ff c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ff d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.findgame_classfy_category_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20125a;
    }
}
