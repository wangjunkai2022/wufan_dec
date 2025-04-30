package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameDetailItemV1Binding.java */
/* loaded from: classes3.dex */
public final class ri implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24430a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24431b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f24432c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24433d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f24434e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f24435f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f24436g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final FrameLayout f24437h;

    private ri(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull SimpleDraweeView simpleDraweeView4, @NonNull RelativeLayout relativeLayout2, @NonNull FrameLayout frameLayout) {
        this.f24430a = relativeLayout;
        this.f24431b = simpleDraweeView;
        this.f24432c = simpleDraweeView2;
        this.f24433d = imageView;
        this.f24434e = simpleDraweeView3;
        this.f24435f = simpleDraweeView4;
        this.f24436g = relativeLayout2;
        this.f24437h = frameLayout;
    }

    @NonNull
    public static ri a(@NonNull View view) {
        int i2 = R.id.bannerView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.bannerView);
        if (simpleDraweeView != null) {
            i2 = R.id.imageViewHPic;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imageViewHPic);
            if (simpleDraweeView2 != null) {
                i2 = R.id.imageViewPlay;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageViewPlay);
                if (imageView != null) {
                    i2 = R.id.imageViewVPic;
                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imageViewVPic);
                    if (simpleDraweeView3 != null) {
                        i2 = R.id.loading;
                        SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.loading);
                        if (simpleDraweeView4 != null) {
                            i2 = R.id.rl_video;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_video);
                            if (relativeLayout != null) {
                                i2 = R.id.videoContner;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContner);
                                if (frameLayout != null) {
                                    return new ri((RelativeLayout) view, simpleDraweeView, simpleDraweeView2, imageView, simpleDraweeView3, simpleDraweeView4, relativeLayout, frameLayout);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ri c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ri d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detail_item_v1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24430a;
    }
}
