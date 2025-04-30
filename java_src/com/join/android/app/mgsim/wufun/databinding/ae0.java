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
/* compiled from: VipCenterHlistviewLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ae0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18144a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HListView f18145b;

    private ae0(@NonNull LinearLayout linearLayout, @NonNull HListView hListView) {
        this.f18144a = linearLayout;
        this.f18145b = hListView;
    }

    @NonNull
    public static ae0 a(@NonNull View view) {
        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.listview);
        if (hListView != null) {
            return new ae0((LinearLayout) view, hListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.listview)));
    }

    @NonNull
    public static ae0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ae0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.vip_center_hlistview_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18144a;
    }
}
