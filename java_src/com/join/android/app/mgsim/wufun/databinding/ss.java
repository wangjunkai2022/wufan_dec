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
/* compiled from: ItemStandaloneVerticalViewBinding.java */
/* loaded from: classes3.dex */
public final class ss implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24956a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24957b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24958c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f24959d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24960e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f24961f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24962g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24963h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24964i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f24965j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24966k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f24967l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f24968m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f24969n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f24970o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f24971p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f24972q;

    private ss(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull LinearLayout linearLayout3) {
        this.f24956a = relativeLayout;
        this.f24957b = textView;
        this.f24958c = imageView;
        this.f24959d = view;
        this.f24960e = linearLayout;
        this.f24961f = linearLayout2;
        this.f24962g = textView2;
        this.f24963h = textView3;
        this.f24964i = textView4;
        this.f24965j = simpleDraweeView;
        this.f24966k = textView5;
        this.f24967l = textView6;
        this.f24968m = progressBar;
        this.f24969n = progressBar2;
        this.f24970o = relativeLayout2;
        this.f24971p = relativeLayout3;
        this.f24972q = linearLayout3;
    }

    @NonNull
    public static ss a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.giftPackageSwich;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwich);
            if (imageView != null) {
                i2 = R.id.line;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                if (findChildViewById != null) {
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
                                                                    return new ss(relativeLayout2, textView, imageView, findChildViewById, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout3);
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
    public static ss c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ss d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_standalone_vertical_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24956a;
    }
}
