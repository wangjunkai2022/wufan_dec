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
import com.join.mgps.customview.VipView;
/* compiled from: LiveContrybutionFirstItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ov implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23361a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23362b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23363c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f23364d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23365e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final VipView f23366f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23367g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f23368h;

    private ov(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull VipView vipView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f23361a = relativeLayout;
        this.f23362b = imageView;
        this.f23363c = textView;
        this.f23364d = imageView2;
        this.f23365e = linearLayout;
        this.f23366f = vipView;
        this.f23367g = textView2;
        this.f23368h = simpleDraweeView;
    }

    @NonNull
    public static ov a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.contrybution;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.contrybution);
            if (textView != null) {
                i2 = R.id.imageViewMuberOne;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageViewMuberOne);
                if (imageView2 != null) {
                    i2 = R.id.ll;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll);
                    if (linearLayout != null) {
                        i2 = R.id.svip;
                        VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.svip);
                        if (vipView != null) {
                            i2 = R.id.userName;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                            if (textView2 != null) {
                                i2 = R.id.usericon;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.usericon);
                                if (simpleDraweeView != null) {
                                    return new ov((RelativeLayout) view, imageView, textView, imageView2, linearLayout, vipView, textView2, simpleDraweeView);
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
    public static ov c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ov d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.live_contrybution_first_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23361a;
    }
}
