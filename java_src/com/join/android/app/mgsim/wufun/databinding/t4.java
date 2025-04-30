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
import com.join.mgps.customview.XListView;
/* compiled from: CategoryCommonFragmentBinding.java */
/* loaded from: classes3.dex */
public final class t4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25086a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView f25087b;

    private t4(@NonNull LinearLayout linearLayout, @NonNull XListView xListView) {
        this.f25086a = linearLayout;
        this.f25087b = xListView;
    }

    @NonNull
    public static t4 a(@NonNull View view) {
        XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.commonListView);
        if (xListView != null) {
            return new t4((LinearLayout) view, xListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.commonListView)));
    }

    @NonNull
    public static t4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.category_common_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25086a;
    }
}
