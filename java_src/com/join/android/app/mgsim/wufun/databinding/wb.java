package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogGdtAdVipBinding.java */
/* loaded from: classes3.dex */
public final class wb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26141a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26142b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26143c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f26144d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26145e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26146f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26147g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26148h;

    private wb(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26141a = linearLayout;
        this.f26142b = simpleDraweeView;
        this.f26143c = imageView;
        this.f26144d = relativeLayout;
        this.f26145e = textView;
        this.f26146f = textView2;
        this.f26147g = textView3;
        this.f26148h = textView4;
    }

    @NonNull
    public static wb a(@NonNull View view) {
        int i2 = R.id.icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
        if (simpleDraweeView != null) {
            i2 = R.id.iv_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
            if (imageView != null) {
                i2 = R.id.rl_opt_vip;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_opt_vip);
                if (relativeLayout != null) {
                    i2 = R.id.tv_ad_tip;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_ad_tip);
                    if (textView != null) {
                        i2 = R.id.tv_ad_vip_tip;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_ad_vip_tip);
                        if (textView2 != null) {
                            i2 = R.id.tv_opt_view_ad;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_opt_view_ad);
                            if (textView3 != null) {
                                i2 = R.id.tv_opt_vip;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_opt_vip);
                                if (textView4 != null) {
                                    return new wb((LinearLayout) view, simpleDraweeView, imageView, relativeLayout, textView, textView2, textView3, textView4);
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
    public static wb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_gdt_ad_vip, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26141a;
    }
}
