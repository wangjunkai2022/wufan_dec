package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadViewNormal;
/* compiled from: NowWufunTodaynewGameBinding.java */
/* loaded from: classes3.dex */
public final class m60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22373a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22374b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22375c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22376d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final DownloadViewNormal f22377e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f22378f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22379g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f22380h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ProgressBar f22381i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ProgressBar f22382j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f22383k;

    private m60(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull DownloadViewNormal downloadViewNormal, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull LinearLayout linearLayout4) {
        this.f22373a = linearLayout;
        this.f22374b = simpleDraweeView;
        this.f22375c = textView;
        this.f22376d = textView2;
        this.f22377e = downloadViewNormal;
        this.f22378f = linearLayout2;
        this.f22379g = textView3;
        this.f22380h = linearLayout3;
        this.f22381i = progressBar;
        this.f22382j = progressBar2;
        this.f22383k = linearLayout4;
    }

    @NonNull
    public static m60 a(@NonNull View view) {
        int i2 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.appName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
            if (textView != null) {
                i2 = R.id.appSize;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
                if (textView2 != null) {
                    i2 = R.id.downloadView;
                    DownloadViewNormal downloadViewNormal = (DownloadViewNormal) ViewBindings.findChildViewById(view, R.id.downloadView);
                    if (downloadViewNormal != null) {
                        i2 = R.id.linearLayout2;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                        if (linearLayout != null) {
                            i2 = R.id.loding_info;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                            if (textView3 != null) {
                                i2 = R.id.main;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                                if (linearLayout2 != null) {
                                    i2 = R.id.progressBar;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                    if (progressBar != null) {
                                        i2 = R.id.progressBarZip;
                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                        if (progressBar2 != null) {
                                            i2 = R.id.tipsLayout;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                            if (linearLayout3 != null) {
                                                return new m60((LinearLayout) view, simpleDraweeView, textView, textView2, downloadViewNormal, linearLayout, textView3, linearLayout2, progressBar, progressBar2, linearLayout3);
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
    public static m60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.now_wufun_todaynew_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22373a;
    }
}
