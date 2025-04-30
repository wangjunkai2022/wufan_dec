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
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemSearchMiniGameVideoListBinding.java */
/* loaded from: classes3.dex */
public final class yr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f27017a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27018b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27019c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f27020d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f27021e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f27022f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f27023g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f27024h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f27025i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f27026j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f27027k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f27028l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f27029m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f27030n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f27031o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f27032p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f27033q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f27034r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f27035s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final MultiStandVideo f27036t;

    private yr(@NonNull CardView cardView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull ProgressBar progressBar3, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout5, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull MultiStandVideo multiStandVideo) {
        this.f27017a = cardView;
        this.f27018b = textView;
        this.f27019c = textView2;
        this.f27020d = imageView;
        this.f27021e = linearLayout;
        this.f27022f = linearLayout2;
        this.f27023g = linearLayout3;
        this.f27024h = linearLayout4;
        this.f27025i = textView3;
        this.f27026j = textView4;
        this.f27027k = textView5;
        this.f27028l = textView6;
        this.f27029m = progressBar;
        this.f27030n = progressBar2;
        this.f27031o = progressBar3;
        this.f27032p = relativeLayout;
        this.f27033q = linearLayout5;
        this.f27034r = textView7;
        this.f27035s = textView8;
        this.f27036t = multiStandVideo;
    }

    @NonNull
    public static yr a(@NonNull View view) {
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
                                                                        i2 = R.id.tv_label;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_label);
                                                                        if (textView7 != null) {
                                                                            i2 = R.id.tv_score;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_score);
                                                                            if (textView8 != null) {
                                                                                i2 = R.id.wf_video;
                                                                                MultiStandVideo multiStandVideo = (MultiStandVideo) ViewBindings.findChildViewById(view, R.id.wf_video);
                                                                                if (multiStandVideo != null) {
                                                                                    return new yr((CardView) view, textView, textView2, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView3, textView4, textView5, textView6, progressBar, progressBar2, progressBar3, relativeLayout, linearLayout5, textView7, textView8, multiStandVideo);
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
    public static yr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_search_mini_game_video_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f27017a;
    }
}
