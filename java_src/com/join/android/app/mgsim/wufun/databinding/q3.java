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
/* compiled from: BaiduAdBannerHomeLayoutBinding.java */
/* loaded from: classes3.dex */
public final class q3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23817a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23818b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f23819c;

    private q3(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull View view) {
        this.f23817a = linearLayout;
        this.f23818b = linearLayout2;
        this.f23819c = view;
    }

    @NonNull
    public static q3 a(@NonNull View view) {
        int i2 = R.id.bannerHome;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bannerHome);
        if (linearLayout != null) {
            i2 = R.id.post_footer_divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.post_footer_divider);
            if (findChildViewById != null) {
                return new q3((LinearLayout) view, linearLayout, findChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.baidu_ad_banner_home_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23817a;
    }
}
