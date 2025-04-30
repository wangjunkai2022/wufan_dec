package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGamedetailGiftsItemBinding.java */
/* loaded from: classes3.dex */
public final class k10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21621a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21622b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21623c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21624d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f21625e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21626f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f21627g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21628h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21629i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f21630j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f21631k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f21632l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f21633m;

    private k10(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4, @NonNull ImageView imageView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout2) {
        this.f21621a = relativeLayout;
        this.f21622b = textView;
        this.f21623c = textView2;
        this.f21624d = textView3;
        this.f21625e = simpleDraweeView;
        this.f21626f = textView4;
        this.f21627g = imageView;
        this.f21628h = textView5;
        this.f21629i = textView6;
        this.f21630j = view;
        this.f21631k = linearLayout;
        this.f21632l = linearLayout2;
        this.f21633m = relativeLayout2;
    }

    @NonNull
    public static k10 a(@NonNull View view) {
        int i2 = R.id.getGiftTextView;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.getGiftTextView);
        if (textView != null) {
            i2 = R.id.giftContent;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.giftContent);
            if (textView2 != null) {
                i2 = R.id.giftCount;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.giftCount);
                if (textView3 != null) {
                    i2 = R.id.giftIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.giftIcon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.giftName;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.giftName);
                        if (textView4 != null) {
                            i2 = R.id.giftPackageSwich;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwich);
                            if (imageView != null) {
                                i2 = R.id.giftSurplus;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.giftSurplus);
                                if (textView5 != null) {
                                    i2 = R.id.giftSurplusTitle;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.giftSurplusTitle);
                                    if (textView6 != null) {
                                        i2 = R.id.itemLine;
                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.itemLine);
                                        if (findChildViewById != null) {
                                            i2 = R.id.layoutContent;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutContent);
                                            if (linearLayout != null) {
                                                i2 = R.id.linearLayout;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                                                if (linearLayout2 != null) {
                                                    i2 = R.id.rightButnLayout;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rightButnLayout);
                                                    if (relativeLayout != null) {
                                                        return new k10((RelativeLayout) view, textView, textView2, textView3, simpleDraweeView, textView4, imageView, textView5, textView6, findChildViewById, linearLayout, linearLayout2, relativeLayout);
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
    public static k10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_gifts_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21621a;
    }
}
