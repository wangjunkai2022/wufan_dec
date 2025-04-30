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
/* compiled from: GamedetialMoreServiceLayoutBinding.java */
/* loaded from: classes3.dex */
public final class gm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20506a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView f20507b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final qc0 f20508c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f20509d;

    private gm(@NonNull LinearLayout linearLayout, @NonNull XListView xListView, @NonNull qc0 qc0Var, @NonNull View view) {
        this.f20506a = linearLayout;
        this.f20507b = xListView;
        this.f20508c = qc0Var;
        this.f20509d = view;
    }

    @NonNull
    public static gm a(@NonNull View view) {
        int i2 = R.id.rankListView;
        XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.rankListView);
        if (xListView != null) {
            i2 = R.id.title_bar_layout;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
            if (findChildViewById != null) {
                qc0 a4 = qc0.a(findChildViewById);
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.viewBg);
                if (findChildViewById2 != null) {
                    return new gm((LinearLayout) view, xListView, a4, findChildViewById2);
                }
                i2 = R.id.viewBg;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_more_service_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20506a;
    }
}
