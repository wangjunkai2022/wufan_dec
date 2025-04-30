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
import com.join.android.app.component.video.StandardVideoViewJC;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumPostActivityItemPostVideojcBinding.java */
/* loaded from: classes3.dex */
public final class gz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20609a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f20610b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20611c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final StandardVideoViewJC f20612d;

    private gz(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull StandardVideoViewJC standardVideoViewJC) {
        this.f20609a = relativeLayout;
        this.f20610b = simpleDraweeView;
        this.f20611c = imageView;
        this.f20612d = standardVideoViewJC;
    }

    @NonNull
    public static gz a(@NonNull View view) {
        int i2 = R.id.cover;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cover);
        if (simpleDraweeView != null) {
            i2 = R.id.play;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.play);
            if (imageView != null) {
                i2 = R.id.videoPlayer;
                StandardVideoViewJC standardVideoViewJC = (StandardVideoViewJC) ViewBindings.findChildViewById(view, R.id.videoPlayer);
                if (standardVideoViewJC != null) {
                    return new gz((RelativeLayout) view, simpleDraweeView, imageView, standardVideoViewJC);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_videojc, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20609a;
    }
}
