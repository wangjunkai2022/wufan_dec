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
/* compiled from: AppListviewItem1Binding.java */
/* loaded from: classes3.dex */
public final class b3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18364a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18365b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18366c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f18367d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f18368e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18369f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18370g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18371h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18372i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18373j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SimpleDraweeView f18374k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18375l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f18376m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f18377n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f18378o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f18379p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f18380q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f18381r;

    private b3(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull LinearLayout linearLayout3) {
        this.f18364a = relativeLayout;
        this.f18365b = textView;
        this.f18366c = textView2;
        this.f18367d = imageView;
        this.f18368e = view;
        this.f18369f = linearLayout;
        this.f18370g = linearLayout2;
        this.f18371h = textView3;
        this.f18372i = textView4;
        this.f18373j = textView5;
        this.f18374k = simpleDraweeView;
        this.f18375l = textView6;
        this.f18376m = textView7;
        this.f18377n = progressBar;
        this.f18378o = progressBar2;
        this.f18379p = relativeLayout2;
        this.f18380q = relativeLayout3;
        this.f18381r = linearLayout3;
    }

    @NonNull
    public static b3 a(@NonNull View view) {
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
                                                                        return new b3(relativeLayout2, textView, textView2, imageView, findChildViewById, linearLayout, linearLayout2, textView3, textView4, textView5, simpleDraweeView, textView6, textView7, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout3);
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
    public static b3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.app_listview_item1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18364a;
    }
}
