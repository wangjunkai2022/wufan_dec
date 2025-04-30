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
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: ItemSimulatorDownloadViewBinding.java */
/* loaded from: classes3.dex */
public final class cs implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19043a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19044b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final DownloadViewStroke f19045c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19046d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f19047e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f19048f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f19049g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19050h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19051i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19052j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SimpleDraweeView f19053k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f19054l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f19055m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f19056n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f19057o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f19058p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f19059q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f19060r;

    private cs(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull DownloadViewStroke downloadViewStroke, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout3, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull LinearLayout linearLayout4) {
        this.f19043a = relativeLayout;
        this.f19044b = textView;
        this.f19045c = downloadViewStroke;
        this.f19046d = imageView;
        this.f19047e = view;
        this.f19048f = linearLayout;
        this.f19049g = linearLayout2;
        this.f19050h = textView2;
        this.f19051i = textView3;
        this.f19052j = textView4;
        this.f19053k = simpleDraweeView;
        this.f19054l = linearLayout3;
        this.f19055m = progressBar;
        this.f19056n = progressBar2;
        this.f19057o = relativeLayout2;
        this.f19058p = textView5;
        this.f19059q = textView6;
        this.f19060r = linearLayout4;
    }

    @NonNull
    public static cs a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.downloadView;
            DownloadViewStroke downloadViewStroke = (DownloadViewStroke) ViewBindings.findChildViewById(view, R.id.downloadView);
            if (downloadViewStroke != null) {
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
                                                i2 = R.id.openTest;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.openTest);
                                                if (linearLayout3 != null) {
                                                    i2 = R.id.progressBar;
                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                                    if (progressBar != null) {
                                                        i2 = R.id.progressBarZip;
                                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                                        if (progressBar2 != null) {
                                                            RelativeLayout relativeLayout = (RelativeLayout) view;
                                                            i2 = R.id.testTime;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.testTime);
                                                            if (textView5 != null) {
                                                                i2 = R.id.testType;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.testType);
                                                                if (textView6 != null) {
                                                                    i2 = R.id.tipsLayout;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                    if (linearLayout4 != null) {
                                                                        return new cs(relativeLayout, textView, downloadViewStroke, imageView, findChildViewById, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, linearLayout3, progressBar, progressBar2, relativeLayout, textView5, textView6, linearLayout4);
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
    public static cs c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cs d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_simulator_download_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19043a;
    }
}
