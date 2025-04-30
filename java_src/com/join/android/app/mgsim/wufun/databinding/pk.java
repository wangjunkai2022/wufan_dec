package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetailItemMiniGameVideoVBinding.java */
/* loaded from: classes3.dex */
public final class pk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23683a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f23684b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f23685c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final StandardVideoView f23686d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f23687e;

    private pk(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull StandardVideoView standardVideoView, @NonNull RelativeLayout relativeLayout2) {
        this.f23683a = relativeLayout;
        this.f23684b = simpleDraweeView;
        this.f23685c = view;
        this.f23686d = standardVideoView;
        this.f23687e = relativeLayout2;
    }

    @NonNull
    public static pk a(@NonNull View view) {
        int i2 = R.id.iv_book_bg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_book_bg);
        if (simpleDraweeView != null) {
            i2 = R.id.nullView;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.nullView);
            if (findChildViewById != null) {
                i2 = R.id.videoPlayer;
                StandardVideoView standardVideoView = (StandardVideoView) ViewBindings.findChildViewById(view, R.id.videoPlayer);
                if (standardVideoView != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    return new pk(relativeLayout, simpleDraweeView, findChildViewById, standardVideoView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_mini_game_video_v, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23683a;
    }
}
