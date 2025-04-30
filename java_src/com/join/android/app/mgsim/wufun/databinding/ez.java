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
/* compiled from: MgForumPostActivityItemPostVideo1Binding.java */
/* loaded from: classes3.dex */
public final class ez implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19923a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19924b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f19925c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f19926d;

    private ez(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull FrameLayout frameLayout) {
        this.f19923a = relativeLayout;
        this.f19924b = simpleDraweeView;
        this.f19925c = simpleDraweeView2;
        this.f19926d = frameLayout;
    }

    @NonNull
    public static ez a(@NonNull View view) {
        int i2 = R.id.bannerView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.bannerView);
        if (simpleDraweeView != null) {
            i2 = R.id.loading;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.loading);
            if (simpleDraweeView2 != null) {
                i2 = R.id.videoContner;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContner);
                if (frameLayout != null) {
                    return new ez((RelativeLayout) view, simpleDraweeView, simpleDraweeView2, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ez c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ez d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_video1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19923a;
    }
}
