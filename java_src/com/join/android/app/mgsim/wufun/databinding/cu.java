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
/* compiled from: LayoutRankingItemBinding.java */
/* loaded from: classes3.dex */
public final class cu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19070a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19071b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19072c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f19073d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19074e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19075f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19076g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19077h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f19078i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19079j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f19080k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ProgressBar f19081l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f19082m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f19083n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f19084o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final LinearLayout f19085p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f19086q;

    private cu(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull LinearLayout linearLayout3, @NonNull TextView textView7) {
        this.f19070a = relativeLayout;
        this.f19071b = textView;
        this.f19072c = imageView;
        this.f19073d = linearLayout;
        this.f19074e = linearLayout2;
        this.f19075f = textView2;
        this.f19076g = textView3;
        this.f19077h = textView4;
        this.f19078i = simpleDraweeView;
        this.f19079j = textView5;
        this.f19080k = textView6;
        this.f19081l = progressBar;
        this.f19082m = progressBar2;
        this.f19083n = relativeLayout2;
        this.f19084o = relativeLayout3;
        this.f19085p = linearLayout3;
        this.f19086q = textView7;
    }

    @NonNull
    public static cu a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.giftPackageSwich;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwich);
            if (imageView != null) {
                i2 = R.id.linearLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                if (linearLayout != null) {
                    i2 = R.id.linearLayout2;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                    if (linearLayout2 != null) {
                        i2 = R.id.loding_info;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                        if (textView2 != null) {
                            i2 = R.id.mgListviewItemAppname;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemAppname);
                            if (textView3 != null) {
                                i2 = R.id.mgListviewItemDescribe;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemDescribe);
                                if (textView4 != null) {
                                    i2 = R.id.mgListviewItemIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.mgListviewItemIcon);
                                    if (simpleDraweeView != null) {
                                        i2 = R.id.mgListviewItemInstall;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                                        if (textView5 != null) {
                                            i2 = R.id.moneyText;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                            if (textView6 != null) {
                                                i2 = R.id.progressBar;
                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                                if (progressBar != null) {
                                                    i2 = R.id.progressBarZip;
                                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                                    if (progressBar2 != null) {
                                                        i2 = R.id.rLayoutRight;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                                        if (relativeLayout != null) {
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) view;
                                                            i2 = R.id.tipsLayout;
                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                            if (linearLayout3 != null) {
                                                                i2 = R.id.tvNumber;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNumber);
                                                                if (textView7 != null) {
                                                                    return new cu(relativeLayout2, textView, imageView, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout3, textView7);
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
    public static cu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_ranking_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19070a;
    }
}
