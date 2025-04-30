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
/* compiled from: EmulatorListviewDownloadingCenterHistoryBinding.java */
/* loaded from: classes3.dex */
public final class he implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20746a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20747b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20748c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20749d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f20750e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f20751f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f20752g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f20753h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f20754i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f20755j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f20756k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f20757l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f20758m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f20759n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f20760o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f20761p;

    private he(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView3, @NonNull LinearLayout linearLayout6, @NonNull TextView textView4, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout) {
        this.f20746a = linearLayout;
        this.f20747b = linearLayout2;
        this.f20748c = textView;
        this.f20749d = textView2;
        this.f20750e = linearLayout3;
        this.f20751f = imageView;
        this.f20752g = simpleDraweeView;
        this.f20753h = view;
        this.f20754i = linearLayout4;
        this.f20755j = linearLayout5;
        this.f20756k = textView3;
        this.f20757l = linearLayout6;
        this.f20758m = textView4;
        this.f20759n = progressBar;
        this.f20760o = progressBar2;
        this.f20761p = relativeLayout;
    }

    @NonNull
    public static he a(@NonNull View view) {
        int i2 = R.id.addtoDesk;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.addtoDesk);
        if (linearLayout != null) {
            i2 = R.id.appSize;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
            if (textView != null) {
                i2 = R.id.btnOp;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btnOp);
                if (textView2 != null) {
                    i2 = R.id.dellGame;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.dellGame);
                    if (linearLayout2 != null) {
                        i2 = R.id.giftPackageSwitch;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwitch);
                        if (imageView != null) {
                            i2 = R.id.img;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
                            if (simpleDraweeView != null) {
                                i2 = R.id.line;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                                if (findChildViewById != null) {
                                    LinearLayout linearLayout3 = (LinearLayout) view;
                                    i2 = R.id.listview_download;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.listview_download);
                                    if (linearLayout4 != null) {
                                        i2 = R.id.loding_info;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                                        if (textView3 != null) {
                                            i2 = R.id.more_layout;
                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.more_layout);
                                            if (linearLayout5 != null) {
                                                i2 = R.id.name;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                                if (textView4 != null) {
                                                    i2 = R.id.progressBar;
                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                                    if (progressBar != null) {
                                                        i2 = R.id.progressBarZip;
                                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                                        if (progressBar2 != null) {
                                                            i2 = R.id.rLayoutRight;
                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                                            if (relativeLayout != null) {
                                                                return new he(linearLayout3, linearLayout, textView, textView2, linearLayout2, imageView, simpleDraweeView, findChildViewById, linearLayout3, linearLayout4, textView3, linearLayout5, textView4, progressBar, progressBar2, relativeLayout);
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
    public static he c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static he d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.emulator_listview_downloading_center_history, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20746a;
    }
}
