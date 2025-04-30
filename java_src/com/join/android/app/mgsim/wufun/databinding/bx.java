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
/* compiled from: MgFItemPostVideoBinding.java */
/* loaded from: classes3.dex */
public final class bx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18661a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f18662b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f18663c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f18664d;

    private bx(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull FrameLayout frameLayout) {
        this.f18661a = relativeLayout;
        this.f18662b = simpleDraweeView;
        this.f18663c = simpleDraweeView2;
        this.f18664d = frameLayout;
    }

    @NonNull
    public static bx a(@NonNull View view) {
        int i2 = R.id.bannerView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.bannerView);
        if (simpleDraweeView != null) {
            i2 = R.id.loading;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.loading);
            if (simpleDraweeView2 != null) {
                i2 = R.id.videoContner;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContner);
                if (frameLayout != null) {
                    return new bx((RelativeLayout) view, simpleDraweeView, simpleDraweeView2, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_f_item_post_video, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18661a;
    }
}
