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
/* compiled from: SearchautoAppListviewItemBinding.java */
/* loaded from: classes3.dex */
public final class za0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f27177a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27178b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f27179c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f27180d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f27181e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f27182f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f27183g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f27184h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f27185i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f27186j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f27187k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f27188l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f27189m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f27190n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f27191o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f27192p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f27193q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f27194r;

    private za0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView7, @NonNull LinearLayout linearLayout3) {
        this.f27177a = relativeLayout;
        this.f27178b = textView;
        this.f27179c = imageView;
        this.f27180d = view;
        this.f27181e = linearLayout;
        this.f27182f = linearLayout2;
        this.f27183g = textView2;
        this.f27184h = textView3;
        this.f27185i = textView4;
        this.f27186j = simpleDraweeView;
        this.f27187k = textView5;
        this.f27188l = textView6;
        this.f27189m = progressBar;
        this.f27190n = progressBar2;
        this.f27191o = relativeLayout2;
        this.f27192p = relativeLayout3;
        this.f27193q = textView7;
        this.f27194r = linearLayout3;
    }

    @NonNull
    public static za0 a(@NonNull View view) {
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
                                                                i2 = R.id.tipSText;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tipSText);
                                                                if (textView7 != null) {
                                                                    i2 = R.id.tipsLayout;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                    if (linearLayout3 != null) {
                                                                        return new za0(relativeLayout2, textView, imageView, findChildViewById, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, progressBar, progressBar2, relativeLayout, relativeLayout2, textView7, linearLayout3);
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
    public static za0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static za0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.searchauto_app_listview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f27177a;
    }
}
