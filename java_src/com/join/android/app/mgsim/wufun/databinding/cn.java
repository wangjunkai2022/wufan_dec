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
/* compiled from: GameolNoopentestListviewItemBinding.java */
/* loaded from: classes3.dex */
public final class cn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19002a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19003b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19004c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f19005d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19006e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f19007f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19008g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19009h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f19010i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19011j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f19012k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f19013l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f19014m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f19015n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f19016o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f19017p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f19018q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f19019r;

    private cn(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f19002a = relativeLayout;
        this.f19003b = textView;
        this.f19004c = imageView;
        this.f19005d = view;
        this.f19006e = linearLayout;
        this.f19007f = linearLayout2;
        this.f19008g = textView2;
        this.f19009h = textView3;
        this.f19010i = simpleDraweeView;
        this.f19011j = textView4;
        this.f19012k = textView5;
        this.f19013l = textView6;
        this.f19014m = progressBar;
        this.f19015n = progressBar2;
        this.f19016o = relativeLayout2;
        this.f19017p = relativeLayout3;
        this.f19018q = textView7;
        this.f19019r = textView8;
    }

    @NonNull
    public static cn a(@NonNull View view) {
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
                                    i2 = R.id.mgListviewItemIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.mgListviewItemIcon);
                                    if (simpleDraweeView != null) {
                                        i2 = R.id.mgListviewItemInstall;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                                        if (textView4 != null) {
                                            i2 = R.id.moneyText;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                            if (textView5 != null) {
                                                i2 = R.id.privilege;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.privilege);
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
                                                                i2 = R.id.statues;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.statues);
                                                                if (textView7 != null) {
                                                                    i2 = R.id.testTime;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.testTime);
                                                                    if (textView8 != null) {
                                                                        return new cn(relativeLayout2, textView, imageView, findChildViewById, linearLayout, linearLayout2, textView2, textView3, simpleDraweeView, textView4, textView5, textView6, progressBar, progressBar2, relativeLayout, relativeLayout2, textView7, textView8);
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
    public static cn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameol_noopentest_listview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19002a;
    }
}
