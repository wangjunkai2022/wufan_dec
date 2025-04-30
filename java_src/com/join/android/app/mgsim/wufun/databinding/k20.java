package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgmainOtherlayoutBinding.java */
/* loaded from: classes3.dex */
public final class k20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21647a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f21648b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f21649c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f21650d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f21651e;

    private k20(@NonNull RelativeLayout relativeLayout, @NonNull j00 j00Var, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout2, @NonNull FrameLayout frameLayout) {
        this.f21647a = relativeLayout;
        this.f21648b = j00Var;
        this.f21649c = simpleDraweeView;
        this.f21650d = relativeLayout2;
        this.f21651e = frameLayout;
    }

    @NonNull
    public static k20 a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.coinFloatad;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.coinFloatad);
            if (simpleDraweeView != null) {
                i2 = R.id.mainTop;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.mainTop);
                if (relativeLayout != null) {
                    i2 = R.id.mg_mian_fragmentlayout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mg_mian_fragmentlayout);
                    if (frameLayout != null) {
                        return new k20((RelativeLayout) view, a4, simpleDraweeView, relativeLayout, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static k20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgmain_otherlayout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21647a;
    }
}
