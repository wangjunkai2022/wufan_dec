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
import com.join.mgps.customview.XListView2;
/* compiled from: ActivityPlugManagerBinding.java */
/* loaded from: classes3.dex */
public final class q1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23786a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f23787b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f23788c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f23789d;

    private q1(@NonNull RelativeLayout relativeLayout, @NonNull j00 j00Var, @NonNull XListView2 xListView2, @NonNull RelativeLayout relativeLayout2) {
        this.f23786a = relativeLayout;
        this.f23787b = j00Var;
        this.f23788c = xListView2;
        this.f23789d = relativeLayout2;
    }

    @NonNull
    public static q1 a(@NonNull View view) {
        int i2 = R.id.actionBar;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionBar);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView);
            if (xListView2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                return new q1(relativeLayout, a4, xListView2, relativeLayout);
            }
            i2 = R.id.listView;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_plug_manager, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23786a;
    }
}
