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
/* compiled from: ItemFindMiniGameVideoBinding.java */
/* loaded from: classes3.dex */
public final class sp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f24911a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24912b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24913c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24914d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24915e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f24916f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f24917g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f24918h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24919i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f24920j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24921k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f24922l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f24923m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f24924n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f24925o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f24926p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f24927q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f24928r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f24929s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final MultiStandVideo f24930t;

    private sp(@NonNull CardView cardView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull ProgressBar progressBar3, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout5, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull MultiStandVideo multiStandVideo) {
        this.f24911a = cardView;
        this.f24912b = textView;
        this.f24913c = textView2;
        this.f24914d = imageView;
        this.f24915e = linearLayout;
        this.f24916f = linearLayout2;
        this.f24917g = linearLayout3;
        this.f24918h = linearLayout4;
        this.f24919i = textView3;
        this.f24920j = textView4;
        this.f24921k = textView5;
        this.f24922l = textView6;
        this.f24923m = progressBar;
        this.f24924n = progressBar2;
        this.f24925o = progressBar3;
        this.f24926p = relativeLayout;
        this.f24927q = linearLayout5;
        this.f24928r = textView7;
        this.f24929s = textView8;
        this.f24930t = multiStandVideo;
    }

    @NonNull
    public static sp a(@NonNull View view) {
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
                                                                                    return new sp((CardView) view, textView, textView2, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView3, textView4, textView5, textView6, progressBar, progressBar2, progressBar3, relativeLayout, linearLayout5, textView7, textView8, multiStandVideo);
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
    public static sp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_find_mini_game_video, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f24911a;
    }
}
