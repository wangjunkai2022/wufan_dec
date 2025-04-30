package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemAppDownFinishBinding.java */
/* loaded from: classes3.dex */
public final class ip implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21220a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21221b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21222c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21223d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f21224e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21225f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f21226g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f21227h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21228i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f21229j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ProgressBar f21230k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ProgressBar f21231l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f21232m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f21233n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f21234o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f21235p;

    private ip(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull LinearLayout linearLayout2, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f21220a = relativeLayout;
        this.f21221b = textView;
        this.f21222c = imageView;
        this.f21223d = textView2;
        this.f21224e = simpleDraweeView;
        this.f21225f = textView3;
        this.f21226g = imageView2;
        this.f21227h = linearLayout;
        this.f21228i = textView4;
        this.f21229j = linearLayout2;
        this.f21230k = progressBar;
        this.f21231l = progressBar2;
        this.f21232m = textView5;
        this.f21233n = textView6;
        this.f21234o = textView7;
        this.f21235p = textView8;
    }

    @NonNull
    public static ip a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.cancle;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancle);
            if (imageView != null) {
                i2 = R.id.goMygame;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.goMygame);
                if (textView2 != null) {
                    i2 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.info;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.info);
                        if (textView3 != null) {
                            i2 = R.id.iv_star;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_star);
                            if (imageView2 != null) {
                                i2 = R.id.linearLayout2;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                                if (linearLayout != null) {
                                    i2 = R.id.lodingInfo;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.lodingInfo);
                                    if (textView4 != null) {
                                        i2 = R.id.main;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.progressBar;
                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                            if (progressBar != null) {
                                                i2 = R.id.progressBarZip;
                                                ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                                if (progressBar2 != null) {
                                                    i2 = R.id.tipsLayout;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                    if (textView5 != null) {
                                                        i2 = R.id.title;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                        if (textView6 != null) {
                                                            i2 = R.id.tv_ok;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_ok);
                                                            if (textView7 != null) {
                                                                i2 = R.id.tv_score;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_score);
                                                                if (textView8 != null) {
                                                                    return new ip((RelativeLayout) view, textView, imageView, textView2, simpleDraweeView, textView3, imageView2, linearLayout, textView4, linearLayout2, progressBar, progressBar2, textView5, textView6, textView7, textView8);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
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
    public static ip c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ip d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_app_down_finish, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21220a;
    }
}
