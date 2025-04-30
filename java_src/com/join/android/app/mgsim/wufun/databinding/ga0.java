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
/* compiled from: ScreenshortListFragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ga0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20366a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XRecyclerView f20367b;

    private ga0(@NonNull RelativeLayout relativeLayout, @NonNull XRecyclerView xRecyclerView) {
        this.f20366a = relativeLayout;
        this.f20367b = xRecyclerView;
    }

    @NonNull
    public static ga0 a(@NonNull View view) {
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recycleView);
        if (xRecyclerView != null) {
            return new ga0((RelativeLayout) view, xRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recycleView)));
    }

    @NonNull
    public static ga0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ga0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.screenshort_list_fragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20366a;
    }
}
