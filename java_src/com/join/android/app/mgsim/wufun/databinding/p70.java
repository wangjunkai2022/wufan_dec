package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainModeFiveBinding.java */
/* loaded from: classes3.dex */
public final class p70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23498a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23499b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23500c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f23501d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f23502e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f23503f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f23504g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f23505h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f23506i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23507j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f23508k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f23509l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f23510m;

    private p70(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull SimpleDraweeView simpleDraweeView4, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout3) {
        this.f23498a = linearLayout;
        this.f23499b = textView;
        this.f23500c = textView2;
        this.f23501d = simpleDraweeView;
        this.f23502e = relativeLayout;
        this.f23503f = linearLayout2;
        this.f23504g = simpleDraweeView2;
        this.f23505h = simpleDraweeView3;
        this.f23506i = simpleDraweeView4;
        this.f23507j = textView3;
        this.f23508k = textView4;
        this.f23509l = relativeLayout2;
        this.f23510m = linearLayout3;
    }

    @NonNull
    public static p70 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.appname;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appname);
            if (textView2 != null) {
                i2 = R.id.gameIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameIcon);
                if (simpleDraweeView != null) {
                    i2 = R.id.gameLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.gameLayout);
                    if (relativeLayout != null) {
                        i2 = R.id.gamebroadcastTop;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gamebroadcastTop);
                        if (linearLayout != null) {
                            i2 = R.id.gamebroadcastTopImage1;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastTopImage1);
                            if (simpleDraweeView2 != null) {
                                i2 = R.id.gamebroadcastTopImage2;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastTopImage2);
                                if (simpleDraweeView3 != null) {
                                    i2 = R.id.gamebroadcastTopImage3;
                                    SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastTopImage3);
                                    if (simpleDraweeView4 != null) {
                                        i2 = R.id.itemInstall;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.itemInstall);
                                        if (textView3 != null) {
                                            i2 = R.id.moneyText;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                            if (textView4 != null) {
                                                i2 = R.id.rLayoutRight;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                                if (relativeLayout2 != null) {
                                                    i2 = R.id.tipsLayout;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                    if (linearLayout2 != null) {
                                                        return new p70((LinearLayout) view, textView, textView2, simpleDraweeView, relativeLayout, linearLayout, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, textView3, textView4, relativeLayout2, linearLayout2);
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
    public static p70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_mode_five, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23498a;
    }
}
