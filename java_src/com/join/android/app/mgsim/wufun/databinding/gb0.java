package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;
/* compiled from: ShareActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class gb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20370a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20371b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20372c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f20373d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f20374e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f20375f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f20376g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f20377h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f20378i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f20379j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f20380k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f20381l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f20382m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f20383n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final FrameLayout f20384o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final LJWebView f20385p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f20386q;

    private gb0(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull LJWebView lJWebView, @NonNull RelativeLayout relativeLayout3) {
        this.f20370a = relativeLayout;
        this.f20371b = linearLayout;
        this.f20372c = imageView;
        this.f20373d = imageView2;
        this.f20374e = imageView3;
        this.f20375f = linearLayout2;
        this.f20376g = linearLayout3;
        this.f20377h = imageView4;
        this.f20378i = linearLayout4;
        this.f20379j = imageView5;
        this.f20380k = imageView6;
        this.f20381l = textView;
        this.f20382m = relativeLayout2;
        this.f20383n = textView2;
        this.f20384o = frameLayout;
        this.f20385p = lJWebView;
        this.f20386q = relativeLayout3;
    }

    @NonNull
    public static gb0 a(@NonNull View view) {
        int i2 = R.id.back;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.back);
        if (linearLayout != null) {
            i2 = R.id.back_imag;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_imag);
            if (imageView != null) {
                i2 = R.id.backNew;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.backNew);
                if (imageView2 != null) {
                    i2 = R.id.download;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.download);
                    if (imageView3 != null) {
                        i2 = R.id.layout_share;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_share);
                        if (linearLayout2 != null) {
                            i2 = R.id.loding_layout;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_layout);
                            if (linearLayout3 != null) {
                                i2 = R.id.refresh;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.refresh);
                                if (imageView4 != null) {
                                    i2 = R.id.right;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.right);
                                    if (linearLayout4 != null) {
                                        i2 = R.id.search;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.search);
                                        if (imageView5 != null) {
                                            i2 = R.id.shareImg;
                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.shareImg);
                                            if (imageView6 != null) {
                                                i2 = R.id.share_textview;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.share_textview);
                                                if (textView != null) {
                                                    i2 = R.id.title;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.title);
                                                    if (relativeLayout != null) {
                                                        i2 = R.id.title_textview;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                                                        if (textView2 != null) {
                                                            i2 = R.id.video_view;
                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.video_view);
                                                            if (frameLayout != null) {
                                                                i2 = R.id.web;
                                                                LJWebView lJWebView = (LJWebView) ViewBindings.findChildViewById(view, R.id.web);
                                                                if (lJWebView != null) {
                                                                    i2 = R.id.weblayout;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.weblayout);
                                                                    if (relativeLayout2 != null) {
                                                                        return new gb0((RelativeLayout) view, linearLayout, imageView, imageView2, imageView3, linearLayout2, linearLayout3, imageView4, linearLayout4, imageView5, imageView6, textView, relativeLayout, textView2, frameLayout, lJWebView, relativeLayout2);
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
    public static gb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.share_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20370a;
    }
}
