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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogStickAdBinding.java */
/* loaded from: classes3.dex */
public final class hd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20738a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20739b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20740c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f20741d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20742e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20743f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20744g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20745h;

    private hd(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f20738a = linearLayout;
        this.f20739b = imageView;
        this.f20740c = imageView2;
        this.f20741d = relativeLayout;
        this.f20742e = textView;
        this.f20743f = textView2;
        this.f20744g = textView3;
        this.f20745h = textView4;
    }

    @NonNull
    public static hd a(@NonNull View view) {
        int i2 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
        if (imageView != null) {
            i2 = R.id.iv_close;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
            if (imageView2 != null) {
                i2 = R.id.rl_opt_view_ad;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_opt_view_ad);
                if (relativeLayout != null) {
                    i2 = R.id.tv_ad_tip;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_ad_tip);
                    if (textView != null) {
                        i2 = R.id.tv_opt_view;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_opt_view);
                        if (textView2 != null) {
                            i2 = R.id.tv_opt_vip;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_opt_vip);
                            if (textView3 != null) {
                                i2 = R.id.tv_view_ad_label;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_view_ad_label);
                                if (textView4 != null) {
                                    return new hd((LinearLayout) view, imageView, imageView2, relativeLayout, textView, textView2, textView3, textView4);
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
    public static hd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_stick_ad, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20738a;
    }
}
