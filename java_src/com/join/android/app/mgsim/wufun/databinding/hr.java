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
/* compiled from: ItemPapaDownloadListBinding.java */
/* loaded from: classes3.dex */
public final class hr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20880a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20881b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20882c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f20883d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f20884e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f20885f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20886g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20887h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20888i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f20889j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f20890k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f20891l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f20892m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f20893n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f20894o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f20895p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f20896q;

    private hr(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull LinearLayout linearLayout3) {
        this.f20880a = relativeLayout;
        this.f20881b = textView;
        this.f20882c = imageView;
        this.f20883d = view;
        this.f20884e = linearLayout;
        this.f20885f = linearLayout2;
        this.f20886g = textView2;
        this.f20887h = textView3;
        this.f20888i = textView4;
        this.f20889j = simpleDraweeView;
        this.f20890k = textView5;
        this.f20891l = textView6;
        this.f20892m = progressBar;
        this.f20893n = progressBar2;
        this.f20894o = relativeLayout2;
        this.f20895p = relativeLayout3;
        this.f20896q = linearLayout3;
    }

    @NonNull
    public static hr a(@NonNull View view) {
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
                                                                    return new hr(relativeLayout2, textView, imageView, findChildViewById, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout3);
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
    public static hr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_papa_download_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20880a;
    }
}
