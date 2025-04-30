package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGameDetailImagesBinding.java */
/* loaded from: classes3.dex */
public final class eq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19881a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19882b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f19883c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19884d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f19885e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19886f;

    private eq(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull ImageView imageView2) {
        this.f19881a = relativeLayout;
        this.f19882b = simpleDraweeView;
        this.f19883c = simpleDraweeView2;
        this.f19884d = imageView;
        this.f19885e = simpleDraweeView3;
        this.f19886f = imageView2;
    }

    @NonNull
    public static eq a(@NonNull View view) {
        int i2 = R.id.image_blur;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image_blur);
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
                        i2 = R.id.iv_border;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_border);
                        if (imageView2 != null) {
                            return new eq((RelativeLayout) view, simpleDraweeView, simpleDraweeView2, imageView, simpleDraweeView3, imageView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static eq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static eq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_detail_images, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19881a;
    }
}
