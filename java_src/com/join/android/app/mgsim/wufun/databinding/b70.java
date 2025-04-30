package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainBroadcastSptopLayoutBinding.java */
/* loaded from: classes3.dex */
public final class b70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18411a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f18412b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18413c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f18414d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f18415e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18416f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f18417g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18418h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f18419i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18420j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f18421k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f18422l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final FrameLayout f18423m;

    private b70(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull TextView textView4, @NonNull RelativeLayout relativeLayout4, @NonNull RelativeLayout relativeLayout5, @NonNull FrameLayout frameLayout) {
        this.f18411a = relativeLayout;
        this.f18412b = relativeLayout2;
        this.f18413c = textView;
        this.f18414d = relativeLayout3;
        this.f18415e = simpleDraweeView;
        this.f18416f = textView2;
        this.f18417g = simpleDraweeView2;
        this.f18418h = textView3;
        this.f18419i = simpleDraweeView3;
        this.f18420j = textView4;
        this.f18421k = relativeLayout4;
        this.f18422l = relativeLayout5;
        this.f18423m = frameLayout;
    }

    @NonNull
    public static b70 a(@NonNull View view) {
        int i2 = R.id.aaa;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.aaa);
        if (relativeLayout != null) {
            i2 = R.id.appname;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appname);
            if (textView != null) {
                RelativeLayout relativeLayout2 = (RelativeLayout) view;
                i2 = R.id.bannerView;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.bannerView);
                if (simpleDraweeView != null) {
                    i2 = R.id.describe;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.describe);
                    if (textView2 != null) {
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
                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                        if (relativeLayout3 != null) {
                                            i2 = R.id.topImage;
                                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.topImage);
                                            if (relativeLayout4 != null) {
                                                i2 = R.id.videoContner;
                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContner);
                                                if (frameLayout != null) {
                                                    return new b70(relativeLayout2, relativeLayout, textView, relativeLayout2, simpleDraweeView, textView2, simpleDraweeView2, textView3, simpleDraweeView3, textView4, relativeLayout3, relativeLayout4, frameLayout);
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
    public static b70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_broadcast_sptop_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18411a;
    }
}
