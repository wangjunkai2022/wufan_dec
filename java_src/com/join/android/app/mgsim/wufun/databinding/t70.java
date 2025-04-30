package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainVideoBannerLayoutBinding.java */
/* loaded from: classes3.dex */
public final class t70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25113a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25114b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25115c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f25116d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f25117e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f25118f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25119g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f25120h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25121i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f25122j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f25123k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final FrameLayout f25124l;

    private t70(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull TextView textView4, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout3, @NonNull FrameLayout frameLayout) {
        this.f25113a = linearLayout;
        this.f25114b = textView;
        this.f25115c = textView2;
        this.f25116d = linearLayout2;
        this.f25117e = simpleDraweeView;
        this.f25118f = simpleDraweeView2;
        this.f25119g = textView3;
        this.f25120h = simpleDraweeView3;
        this.f25121i = textView4;
        this.f25122j = relativeLayout;
        this.f25123k = linearLayout3;
        this.f25124l = frameLayout;
    }

    @NonNull
    public static t70 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.appname;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appname);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i2 = R.id.bannerView;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.bannerView);
                if (simpleDraweeView != null) {
                    i2 = R.id.gameIcon;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameIcon);
                    if (simpleDraweeView2 != null) {
                        i2 = R.id.itemInstall;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.itemInstall);
                        if (textView3 != null) {
                            i2 = R.id.loading;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.loading);
                            if (simpleDraweeView3 != null) {
                                i2 = R.id.moneyText;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                if (textView4 != null) {
                                    i2 = R.id.rLayoutRight;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                    if (relativeLayout != null) {
                                        i2 = R.id.tipsLayout;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.videoContner;
                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContner);
                                            if (frameLayout != null) {
                                                return new t70(linearLayout, textView, textView2, linearLayout, simpleDraweeView, simpleDraweeView2, textView3, simpleDraweeView3, textView4, relativeLayout, linearLayout2, frameLayout);
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
    public static t70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_video_banner_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25113a;
    }
}
