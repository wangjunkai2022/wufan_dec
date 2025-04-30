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
/* compiled from: ItemSearchRecommendTitleBinding.java */
/* loaded from: classes3.dex */
public final class zr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f27314a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27315b;

    private zr(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView) {
        this.f27314a = constraintLayout;
        this.f27315b = textView;
    }

    @NonNull
    public static zr a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
        if (textView != null) {
            return new zr((ConstraintLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.name)));
    }

    @NonNull
    public static zr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_search_recommend_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f27314a;
    }
}
