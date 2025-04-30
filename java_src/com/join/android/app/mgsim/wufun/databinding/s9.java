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
import it.sephiroth.android.library.widget.HListView;
/* compiled from: DetialCheckPointLayoutBinding.java */
/* loaded from: classes3.dex */
public final class s9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24747a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HListView f24748b;

    private s9(@NonNull LinearLayout linearLayout, @NonNull HListView hListView) {
        this.f24747a = linearLayout;
        this.f24748b = hListView;
    }

    @NonNull
    public static s9 a(@NonNull View view) {
        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.favoriteList);
        if (hListView != null) {
            return new s9((LinearLayout) view, hListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.favoriteList)));
    }

    @NonNull
    public static s9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_check_point_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24747a;
    }
}
