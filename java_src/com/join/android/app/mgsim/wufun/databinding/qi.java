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
/* compiled from: GameDetailItemBinding.java */
/* loaded from: classes3.dex */
public final class qi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23995a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f23996b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23997c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f23998d;

    private qi(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView2) {
        this.f23995a = relativeLayout;
        this.f23996b = simpleDraweeView;
        this.f23997c = imageView;
        this.f23998d = simpleDraweeView2;
    }

    @NonNull
    public static qi a(@NonNull View view) {
        int i2 = R.id.imageViewHPic;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imageViewHPic);
        if (simpleDraweeView != null) {
            i2 = R.id.imageViewPlay;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageViewPlay);
            if (imageView != null) {
                i2 = R.id.imageViewVPic;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imageViewVPic);
                if (simpleDraweeView2 != null) {
                    return new qi((RelativeLayout) view, simpleDraweeView, imageView, simpleDraweeView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detail_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23995a;
    }
}
