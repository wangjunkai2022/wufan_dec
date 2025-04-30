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
/* compiled from: AppListviewItem2Binding.java */
/* loaded from: classes3.dex */
public final class c3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18761a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18762b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18763c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f18764d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f18765e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18766f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18767g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18768h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18769i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18770j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SimpleDraweeView f18771k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18772l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f18773m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f18774n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f18775o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f18776p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f18777q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f18778r;

    private c3(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull LinearLayout linearLayout3) {
        this.f18761a = relativeLayout;
        this.f18762b = textView;
        this.f18763c = textView2;
        this.f18764d = imageView;
        this.f18765e = view;
        this.f18766f = linearLayout;
        this.f18767g = linearLayout2;
        this.f18768h = textView3;
        this.f18769i = textView4;
        this.f18770j = textView5;
        this.f18771k = simpleDraweeView;
        this.f18772l = textView6;
        this.f18773m = textView7;
        this.f18774n = progressBar;
        this.f18775o = progressBar2;
        this.f18776p = relativeLayout2;
        this.f18777q = relativeLayout3;
        this.f18778r = linearLayout3;
    }

    @NonNull
    public static c3 a(@NonNull View view) {
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
                                i2 = R.id.loding_info;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                                if (textView3 != null) {
                                    i2 = R.id.mgListviewItemAppname;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemAppname);
                                    if (textView4 != null) {
                                        i2 = R.id.mgListviewItemDescribe;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemDescribe);
                                        if (textView5 != null) {
                                            i2 = R.id.mgListviewItemIcon;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.mgListviewItemIcon);
                                            if (simpleDraweeView != null) {
                                                i2 = R.id.mgListviewItemInstall;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                                                if (textView6 != null) {
                                                    i2 = R.id.moneyText;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                    if (textView7 != null) {
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
                                                                        return new c3(relativeLayout2, textView, textView2, imageView, findChildViewById, linearLayout, linearLayout2, textView3, textView4, textView5, simpleDraweeView, textView6, textView7, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout3);
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
    public static c3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.app_listview_item2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18761a;
    }
}
