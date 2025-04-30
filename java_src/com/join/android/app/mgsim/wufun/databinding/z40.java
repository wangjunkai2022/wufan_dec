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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyVoucherGameItemBinding.java */
/* loaded from: classes3.dex */
public final class z40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27111a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f27112b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f27113c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f27114d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f27115e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27116f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f27117g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f27118h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f27119i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f27120j;

    private z40(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.f27111a = linearLayout;
        this.f27112b = linearLayout2;
        this.f27113c = relativeLayout;
        this.f27114d = linearLayout3;
        this.f27115e = textView;
        this.f27116f = textView2;
        this.f27117g = textView3;
        this.f27118h = textView4;
        this.f27119i = imageView;
        this.f27120j = imageView2;
    }

    @NonNull
    public static z40 a(@NonNull View view) {
        int i2 = R.id.layoutLeft;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutLeft);
        if (linearLayout != null) {
            i2 = R.id.layoutRight;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layoutRight);
            if (relativeLayout != null) {
                i2 = R.id.layoutVoucherLeft;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutVoucherLeft);
                if (linearLayout2 != null) {
                    i2 = R.id.voucherDate;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.voucherDate);
                    if (textView != null) {
                        i2 = R.id.voucherName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherName);
                        if (textView2 != null) {
                            i2 = R.id.voucherNo;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherNo);
                            if (textView3 != null) {
                                i2 = R.id.voucherPrice;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherPrice);
                                if (textView4 != null) {
                                    i2 = R.id.voucherStateButtom;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.voucherStateButtom);
                                    if (imageView != null) {
                                        i2 = R.id.voucherStateTop;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.voucherStateTop);
                                        if (imageView2 != null) {
                                            return new z40((LinearLayout) view, linearLayout, relativeLayout, linearLayout2, textView, textView2, textView3, textView4, imageView, imageView2);
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
    public static z40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_voucher_game_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27111a;
    }
}
