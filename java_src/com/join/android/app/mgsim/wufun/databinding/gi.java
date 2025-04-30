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
import com.join.mgps.customview.XListView2;
/* compiled from: GameBuildBinding.java */
/* loaded from: classes3.dex */
public final class gi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20454a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f20455b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f20456c;

    private gi(@NonNull LinearLayout linearLayout, @NonNull XListView2 xListView2, @NonNull LinearLayout linearLayout2) {
        this.f20454a = linearLayout;
        this.f20455b = xListView2;
        this.f20456c = linearLayout2;
    }

    @NonNull
    public static gi a(@NonNull View view) {
        int i2 = R.id.listview;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
        if (xListView2 != null) {
            i2 = R.id.tv_nodata;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tv_nodata);
            if (linearLayout != null) {
                return new gi((LinearLayout) view, xListView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_build, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20454a;
    }
}
