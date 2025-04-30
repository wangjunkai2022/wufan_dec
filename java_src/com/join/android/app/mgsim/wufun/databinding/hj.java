package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
/* compiled from: GameInformationLayoutv2Binding.java */
/* loaded from: classes3.dex */
public final class hj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20802a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f20803b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20804c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f20805d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20806e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20807f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f20808g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f20809h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f20810i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f20811j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f20812k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f20813l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RecyclerView f20814m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f20815n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f20816o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f20817p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f20818q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f20819r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final CustomerDownloadView f20820s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f20821t;

    private hj(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView3, @NonNull Button button, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull RecyclerView recyclerView, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull ImageView imageView4, @NonNull TextView textView6, @NonNull CustomerDownloadView customerDownloadView, @NonNull TextView textView7) {
        this.f20802a = relativeLayout;
        this.f20803b = simpleDraweeView;
        this.f20804c = imageView;
        this.f20805d = relativeLayout2;
        this.f20806e = textView;
        this.f20807f = textView2;
        this.f20808g = imageView2;
        this.f20809h = linearLayout;
        this.f20810i = imageView3;
        this.f20811j = button;
        this.f20812k = linearLayout2;
        this.f20813l = textView3;
        this.f20814m = recyclerView;
        this.f20815n = relativeLayout3;
        this.f20816o = textView4;
        this.f20817p = textView5;
        this.f20818q = imageView4;
        this.f20819r = textView6;
        this.f20820s = customerDownloadView;
        this.f20821t = textView7;
    }

    @NonNull
    public static hj a(@NonNull View view) {
        int i2 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.appImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.appImage);
            if (imageView != null) {
                i2 = R.id.applayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.applayout);
                if (relativeLayout != null) {
                    i2 = R.id.appname;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appname);
                    if (textView != null) {
                        i2 = R.id.appsize;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appsize);
                        if (textView2 != null) {
                            i2 = R.id.backImage;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
                            if (imageView2 != null) {
                                i2 = R.id.bottom_lay;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_lay);
                                if (linearLayout != null) {
                                    i2 = R.id.comment;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment);
                                    if (imageView3 != null) {
                                        i2 = R.id.downloadImage;
                                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.downloadImage);
                                        if (button != null) {
                                            i2 = R.id.layout_share;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_share);
                                            if (linearLayout2 != null) {
                                                i2 = R.id.moneyText2;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText2);
                                                if (textView3 != null) {
                                                    i2 = R.id.recyclerView;
                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                                                    if (recyclerView != null) {
                                                        i2 = R.id.relativeLayout;
                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout);
                                                        if (relativeLayout2 != null) {
                                                            i2 = R.id.rightTextButn;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.rightTextButn);
                                                            if (textView4 != null) {
                                                                i2 = R.id.roundMessage;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.roundMessage);
                                                                if (textView5 != null) {
                                                                    i2 = R.id.shareImg;
                                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.shareImg);
                                                                    if (imageView4 != null) {
                                                                        i2 = R.id.share_textview;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.share_textview);
                                                                        if (textView6 != null) {
                                                                            i2 = R.id.title_normal_download_cdv;
                                                                            CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(view, R.id.title_normal_download_cdv);
                                                                            if (customerDownloadView != null) {
                                                                                i2 = R.id.titleText;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                                                                if (textView7 != null) {
                                                                                    return new hj((RelativeLayout) view, simpleDraweeView, imageView, relativeLayout, textView, textView2, imageView2, linearLayout, imageView3, button, linearLayout2, textView3, recyclerView, relativeLayout2, textView4, textView5, imageView4, textView6, customerDownloadView, textView7);
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
    public static hj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_information_layoutv2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20802a;
    }
}
