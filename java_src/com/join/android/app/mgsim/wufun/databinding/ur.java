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
/* compiled from: ItemSearchGameListBinding.java */
/* loaded from: classes3.dex */
public final class ur implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f25576a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25577b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25578c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25579d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f25580e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25581f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f25582g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f25583h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25584i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25585j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f25586k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f25587l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f25588m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f25589n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f25590o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f25591p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f25592q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final SimpleDraweeView f25593r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f25594s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f25595t;

    private ur(@NonNull CardView cardView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull ProgressBar progressBar3, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f25576a = cardView;
        this.f25577b = textView;
        this.f25578c = textView2;
        this.f25579d = imageView;
        this.f25580e = view;
        this.f25581f = linearLayout;
        this.f25582g = linearLayout2;
        this.f25583h = linearLayout3;
        this.f25584i = textView3;
        this.f25585j = textView4;
        this.f25586k = textView5;
        this.f25587l = textView6;
        this.f25588m = progressBar;
        this.f25589n = progressBar2;
        this.f25590o = progressBar3;
        this.f25591p = relativeLayout;
        this.f25592q = linearLayout4;
        this.f25593r = simpleDraweeView;
        this.f25594s = textView7;
        this.f25595t = textView8;
    }

    @NonNull
    public static ur a(@NonNull View view) {
        int i2 = R.id.adText;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.adText);
        if (textView != null) {
            i2 = R.id.appSize;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
            if (textView2 != null) {
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
                                i2 = R.id.ll_label;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_label);
                                if (linearLayout3 != null) {
                                    i2 = R.id.loding_info;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                                    if (textView3 != null) {
                                        i2 = R.id.mgListviewItemAppname;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemAppname);
                                        if (textView4 != null) {
                                            i2 = R.id.mgListviewItemDescribe;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemDescribe);
                                            if (textView5 != null) {
                                                i2 = R.id.mgListviewItemInstall;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
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
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.relateLayoutApp);
                                                                    if (linearLayout4 != null) {
                                                                        i2 = R.id.sdv_image;
                                                                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.sdv_image);
                                                                        if (simpleDraweeView != null) {
                                                                            i2 = R.id.tv_label;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_label);
                                                                            if (textView7 != null) {
                                                                                i2 = R.id.tv_score;
                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_score);
                                                                                if (textView8 != null) {
                                                                                    return new ur((CardView) view, textView, textView2, imageView, findChildViewById, linearLayout, linearLayout2, linearLayout3, textView3, textView4, textView5, textView6, progressBar, progressBar2, progressBar3, relativeLayout, linearLayout4, simpleDraweeView, textView7, textView8);
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
    public static ur c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ur d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_search_game_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f25576a;
    }
}
