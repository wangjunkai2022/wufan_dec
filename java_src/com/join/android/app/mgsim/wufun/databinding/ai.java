package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
/* compiled from: FragmentSearchListBinding.java */
/* loaded from: classes3.dex */
public final class ai implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f18181a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f18182b;

    private ai(@NonNull ConstraintLayout constraintLayout, @NonNull XListView2 xListView2) {
        this.f18181a = constraintLayout;
        this.f18182b = xListView2;
    }

    @NonNull
    public static ai a(@NonNull View view) {
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView);
        if (xListView2 != null) {
            return new ai((ConstraintLayout) view, xListView2);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.listView)));
    }

    @NonNull
    public static ai c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ai d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_search_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f18181a;
    }
}
