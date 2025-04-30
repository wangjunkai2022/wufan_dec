package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainBespeakItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class x60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26458a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26459b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f26460c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26461d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26462e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26463f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26464g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26465h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26466i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f26467j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SimpleDraweeView f26468k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f26469l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f26470m;

    private x60(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull SimpleDraweeView simpleDraweeView4, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.f26458a = linearLayout;
        this.f26459b = simpleDraweeView;
        this.f26460c = simpleDraweeView2;
        this.f26461d = textView;
        this.f26462e = textView2;
        this.f26463f = textView3;
        this.f26464g = textView4;
        this.f26465h = textView5;
        this.f26466i = textView6;
        this.f26467j = simpleDraweeView3;
        this.f26468k = simpleDraweeView4;
        this.f26469l = linearLayout2;
        this.f26470m = linearLayout3;
    }

    @NonNull
    public static x60 a(@NonNull View view) {
        int i2 = R.id.appimage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appimage);
        if (simpleDraweeView != null) {
            i2 = R.id.appimage2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appimage2);
            if (simpleDraweeView2 != null) {
                i2 = R.id.appname;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appname);
                if (textView != null) {
                    i2 = R.id.appname2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appname2);
                    if (textView2 != null) {
                        i2 = R.id.bespeakNumber;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.bespeakNumber);
                        if (textView3 != null) {
                            i2 = R.id.bespeakNumber2;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.bespeakNumber2);
                            if (textView4 != null) {
                                i2 = R.id.downloadapp;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.downloadapp);
                                if (textView5 != null) {
                                    i2 = R.id.downloadapp2;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.downloadapp2);
                                    if (textView6 != null) {
                                        i2 = R.id.gameIcon;
                                        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameIcon);
                                        if (simpleDraweeView3 != null) {
                                            i2 = R.id.gameIcon2;
                                            SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameIcon2);
                                            if (simpleDraweeView4 != null) {
                                                i2 = R.id.itemLeft;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.itemLeft);
                                                if (linearLayout != null) {
                                                    i2 = R.id.itemRight;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.itemRight);
                                                    if (linearLayout2 != null) {
                                                        return new x60((LinearLayout) view, simpleDraweeView, simpleDraweeView2, textView, textView2, textView3, textView4, textView5, textView6, simpleDraweeView3, simpleDraweeView4, linearLayout, linearLayout2);
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
    public static x60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_bespeak_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26458a;
    }
}
