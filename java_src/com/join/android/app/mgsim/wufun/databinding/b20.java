package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
/* compiled from: MgManageFragmentBinding.java */
/* loaded from: classes3.dex */
public final class b20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18362a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView f18363b;

    private b20(@NonNull RelativeLayout relativeLayout, @NonNull XListView xListView) {
        this.f18362a = relativeLayout;
        this.f18363b = xListView;
    }

    @NonNull
    public static b20 a(@NonNull View view) {
        XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.manageListView);
        if (xListView != null) {
            return new b20((RelativeLayout) view, xListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.manageListView)));
    }

    @NonNull
    public static b20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_manage_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18362a;
    }
}
