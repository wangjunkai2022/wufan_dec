package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;
/* compiled from: LiveContrybutionSecondthreeItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class pv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23740a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23741b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23742c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final VipView f23743d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f23744e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23745f;

    private pv(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull VipView vipView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2) {
        this.f23740a = relativeLayout;
        this.f23741b = textView;
        this.f23742c = imageView;
        this.f23743d = vipView;
        this.f23744e = simpleDraweeView;
        this.f23745f = textView2;
    }

    @NonNull
    public static pv a(@NonNull View view) {
        int i2 = R.id.contribution;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.contribution);
        if (textView != null) {
            i2 = R.id.numberImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.numberImage);
            if (imageView != null) {
                i2 = R.id.svip;
                VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.svip);
                if (vipView != null) {
                    i2 = R.id.userIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.userName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                        if (textView2 != null) {
                            return new pv((RelativeLayout) view, textView, imageView, vipView, simpleDraweeView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.live_contrybution_secondthree_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23740a;
    }
}
