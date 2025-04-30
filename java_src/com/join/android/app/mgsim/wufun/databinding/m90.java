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
/* compiled from: RankingListviewItemBinding.java */
/* loaded from: classes3.dex */
public final class m90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22405a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22406b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22407c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22408d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f22409e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f22410f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f22411g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f22412h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22413i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22414j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22415k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final SimpleDraweeView f22416l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f22417m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f22418n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f22419o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ProgressBar f22420p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f22421q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final RelativeLayout f22422r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final LinearLayout f22423s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f22424t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final RelativeLayout f22425u;

    private m90(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull View view2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout4, @NonNull TextView textView7, @NonNull RelativeLayout relativeLayout3) {
        this.f22405a = linearLayout;
        this.f22406b = textView;
        this.f22407c = imageView;
        this.f22408d = imageView2;
        this.f22409e = view;
        this.f22410f = view2;
        this.f22411g = linearLayout2;
        this.f22412h = linearLayout3;
        this.f22413i = textView2;
        this.f22414j = textView3;
        this.f22415k = textView4;
        this.f22416l = simpleDraweeView;
        this.f22417m = textView5;
        this.f22418n = textView6;
        this.f22419o = progressBar;
        this.f22420p = progressBar2;
        this.f22421q = relativeLayout;
        this.f22422r = relativeLayout2;
        this.f22423s = linearLayout4;
        this.f22424t = textView7;
        this.f22425u = relativeLayout3;
    }

    @NonNull
    public static m90 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.giftPackageSwich;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwich);
            if (imageView != null) {
                i2 = R.id.ivNumber;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivNumber);
                if (imageView2 != null) {
                    i2 = R.id.line;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                    if (findChildViewById != null) {
                        i2 = R.id.lineTop;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.lineTop);
                        if (findChildViewById2 != null) {
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
                                                                        i2 = R.id.relateLayoutApp;
                                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relateLayoutApp);
                                                                        if (relativeLayout2 != null) {
                                                                            i2 = R.id.tipsLayout;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                            if (linearLayout3 != null) {
                                                                                i2 = R.id.tvNumber;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNumber);
                                                                                if (textView7 != null) {
                                                                                    i2 = R.id.tvNumberRl;
                                                                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.tvNumberRl);
                                                                                    if (relativeLayout3 != null) {
                                                                                        return new m90((LinearLayout) view, textView, imageView, imageView2, findChildViewById, findChildViewById2, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout3, textView7, relativeLayout3);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.ranking_listview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22405a;
    }
}
