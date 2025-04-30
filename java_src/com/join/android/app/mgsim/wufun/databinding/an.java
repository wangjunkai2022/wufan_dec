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
/* compiled from: GameolFirstListviewItemBinding.java */
/* loaded from: classes3.dex */
public final class an implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18256a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18257b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18258c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f18259d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18260e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18261f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18262g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18263h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18264i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f18265j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f18266k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18267l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f18268m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f18269n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f18270o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f18271p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f18272q;

    private an(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3) {
        this.f18256a = relativeLayout;
        this.f18257b = textView;
        this.f18258c = imageView;
        this.f18259d = view;
        this.f18260e = linearLayout;
        this.f18261f = linearLayout2;
        this.f18262g = textView2;
        this.f18263h = textView3;
        this.f18264i = textView4;
        this.f18265j = simpleDraweeView;
        this.f18266k = textView5;
        this.f18267l = textView6;
        this.f18268m = textView7;
        this.f18269n = progressBar;
        this.f18270o = progressBar2;
        this.f18271p = relativeLayout2;
        this.f18272q = relativeLayout3;
    }

    @NonNull
    public static an a(@NonNull View view) {
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
                                                    i2 = R.id.privilege;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.privilege);
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
                                                                    return new an(relativeLayout2, textView, imageView, findChildViewById, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, textView7, progressBar, progressBar2, relativeLayout, relativeLayout2);
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
    public static an c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static an d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameol_first_listview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18256a;
    }
}
