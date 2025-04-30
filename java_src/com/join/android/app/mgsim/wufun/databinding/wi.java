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
/* compiled from: GameDetailSimilarGameItemV1Binding.java */
/* loaded from: classes3.dex */
public final class wi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26192a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26193b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f26194c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f26195d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f26196e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f26197f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f26198g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final FrameLayout f26199h;

    private wi(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull SimpleDraweeView simpleDraweeView4, @NonNull RelativeLayout relativeLayout2, @NonNull FrameLayout frameLayout) {
        this.f26192a = relativeLayout;
        this.f26193b = simpleDraweeView;
        this.f26194c = simpleDraweeView2;
        this.f26195d = imageView;
        this.f26196e = simpleDraweeView3;
        this.f26197f = simpleDraweeView4;
        this.f26198g = relativeLayout2;
        this.f26199h = frameLayout;
    }

    @NonNull
    public static wi a(@NonNull View view) {
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
                                    return new wi((RelativeLayout) view, simpleDraweeView, simpleDraweeView2, imageView, simpleDraweeView3, simpleDraweeView4, relativeLayout, frameLayout);
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
    public static wi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detail_similar_game_item_v1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26192a;
    }
}
