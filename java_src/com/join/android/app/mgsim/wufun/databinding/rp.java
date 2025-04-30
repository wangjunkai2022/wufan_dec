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
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemFindMiniGameBinding.java */
/* loaded from: classes3.dex */
public final class rp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f24464a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24465b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24466c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24467d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24468e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f24469f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f24470g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f24471h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24472i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f24473j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24474k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f24475l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f24476m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f24477n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f24478o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f24479p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f24480q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final SimpleDraweeView f24481r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f24482s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f24483t;

    private rp(@NonNull CardView cardView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull ProgressBar progressBar3, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout5, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f24464a = cardView;
        this.f24465b = textView;
        this.f24466c = textView2;
        this.f24467d = imageView;
        this.f24468e = linearLayout;
        this.f24469f = linearLayout2;
        this.f24470g = linearLayout3;
        this.f24471h = linearLayout4;
        this.f24472i = textView3;
        this.f24473j = textView4;
        this.f24474k = textView5;
        this.f24475l = textView6;
        this.f24476m = progressBar;
        this.f24477n = progressBar2;
        this.f24478o = progressBar3;
        this.f24479p = relativeLayout;
        this.f24480q = linearLayout5;
        this.f24481r = simpleDraweeView;
        this.f24482s = textView7;
        this.f24483t = textView8;
    }

    @NonNull
    public static rp a(@NonNull View view) {
        int i2 = R.id.adText;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.adText);
        if (textView != null) {
            i2 = R.id.appSize;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
            if (textView2 != null) {
                i2 = R.id.giftPackageSwich;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwich);
                if (imageView != null) {
                    i2 = R.id.linearLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                    if (linearLayout != null) {
                        i2 = R.id.linearLayout2;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                        if (linearLayout2 != null) {
                            i2 = R.id.ll_bottom_container;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_bottom_container);
                            if (linearLayout3 != null) {
                                i2 = R.id.ll_label;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_label);
                                if (linearLayout4 != null) {
                                    i2 = R.id.loding_info;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                                    if (textView3 != null) {
                                        i2 = R.id.mgListviewItemAppname;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemAppname);
                                        if (textView4 != null) {
                                            i2 = R.id.mgListviewItemInstall;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                                            if (textView5 != null) {
                                                i2 = R.id.moneyText;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                if (textView6 != null) {
                                                    i2 = R.id.pb_loading;
                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
                                                    if (progressBar != null) {
                                                        i2 = R.id.progressBar;
                                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                                        if (progressBar2 != null) {
                                                            i2 = R.id.progressBarZip;
                                                            ProgressBar progressBar3 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                                            if (progressBar3 != null) {
                                                                i2 = R.id.rLayoutRight;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                                                if (relativeLayout != null) {
                                                                    i2 = R.id.relateLayoutApp;
                                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.relateLayoutApp);
                                                                    if (linearLayout5 != null) {
                                                                        i2 = R.id.sdv_image;
                                                                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.sdv_image);
                                                                        if (simpleDraweeView != null) {
                                                                            i2 = R.id.tv_label;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_label);
                                                                            if (textView7 != null) {
                                                                                i2 = R.id.tv_score;
                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_score);
                                                                                if (textView8 != null) {
                                                                                    return new rp((CardView) view, textView, textView2, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView3, textView4, textView5, textView6, progressBar, progressBar2, progressBar3, relativeLayout, linearLayout5, simpleDraweeView, textView7, textView8);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_find_mini_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f24464a;
    }
}
