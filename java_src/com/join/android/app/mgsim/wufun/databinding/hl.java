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
/* compiled from: GamedetailItemVideoBtBinding.java */
/* loaded from: classes3.dex */
public final class hl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20840a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f20841b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f20842c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f20843d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final StandardVideoView f20844e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f20845f;

    private hl(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull View view2, @NonNull StandardVideoView standardVideoView, @NonNull RelativeLayout relativeLayout2) {
        this.f20840a = relativeLayout;
        this.f20841b = simpleDraweeView;
        this.f20842c = view;
        this.f20843d = view2;
        this.f20844e = standardVideoView;
        this.f20845f = relativeLayout2;
    }

    @NonNull
    public static hl a(@NonNull View view) {
        int i2 = R.id.iv_book_bg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_book_bg);
        if (simpleDraweeView != null) {
            i2 = R.id.nullView;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.nullView);
            if (findChildViewById != null) {
                i2 = R.id.v_mask;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.v_mask);
                if (findChildViewById2 != null) {
                    i2 = R.id.videoPlayer;
                    StandardVideoView standardVideoView = (StandardVideoView) ViewBindings.findChildViewById(view, R.id.videoPlayer);
                    if (standardVideoView != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) view;
                        return new hl(relativeLayout, simpleDraweeView, findChildViewById, findChildViewById2, standardVideoView, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_video_bt, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20840a;
    }
}
