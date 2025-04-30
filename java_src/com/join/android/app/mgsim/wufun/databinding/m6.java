package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ClassifyListRecyLayoutBinding.java */
/* loaded from: classes3.dex */
public final class m6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22371a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XRecyclerView f22372b;

    private m6(@NonNull RelativeLayout relativeLayout, @NonNull XRecyclerView xRecyclerView) {
        this.f22371a = relativeLayout;
        this.f22372b = xRecyclerView;
    }

    @NonNull
    public static m6 a(@NonNull View view) {
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.classifyListView);
        if (xRecyclerView != null) {
            return new m6((RelativeLayout) view, xRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.classifyListView)));
    }

    @NonNull
    public static m6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.classify_list_recy_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22371a;
    }
}
