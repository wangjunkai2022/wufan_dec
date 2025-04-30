package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentCheeseListBinding.java */
/* loaded from: classes3.dex */
public final class zf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f27224a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XRecyclerView f27225b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27226c;

    private zf(@NonNull RelativeLayout relativeLayout, @NonNull XRecyclerView xRecyclerView, @NonNull TextView textView) {
        this.f27224a = relativeLayout;
        this.f27225b = xRecyclerView;
        this.f27226c = textView;
    }

    @NonNull
    public static zf a(@NonNull View view) {
        int i2 = R.id.listView;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.listView);
        if (xRecyclerView != null) {
            i2 = R.id.noData;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noData);
            if (textView != null) {
                return new zf((RelativeLayout) view, xRecyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_cheese_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f27224a;
    }
}
