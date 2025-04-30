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
/* compiled from: SearchListFragmentBinding.java */
/* loaded from: classes3.dex */
public final class ta0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25153a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25154b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f25155c;

    private ta0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull XListView2 xListView2) {
        this.f25153a = linearLayout;
        this.f25154b = linearLayout2;
        this.f25155c = xListView2;
    }

    @NonNull
    public static ta0 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.searchListView);
        if (xListView2 != null) {
            return new ta0(linearLayout, linearLayout, xListView2);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.searchListView)));
    }

    @NonNull
    public static ta0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ta0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_list_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25153a;
    }
}
