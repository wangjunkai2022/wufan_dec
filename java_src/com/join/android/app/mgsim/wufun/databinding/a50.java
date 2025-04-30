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
/* compiled from: MyVoucherItemBinding.java */
/* loaded from: classes3.dex */
public final class a50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18016a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18017b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18018c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18019d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f18020e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18021f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18022g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18023h;

    private a50(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f18016a = linearLayout;
        this.f18017b = textView;
        this.f18018c = textView2;
        this.f18019d = textView3;
        this.f18020e = simpleDraweeView;
        this.f18021f = textView4;
        this.f18022g = textView5;
        this.f18023h = textView6;
    }

    @NonNull
    public static a50 a(@NonNull View view) {
        int i2 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
        if (textView != null) {
            i2 = R.id.gameVoucherConsume;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gameVoucherConsume);
            if (textView2 != null) {
                i2 = R.id.gameVoucherPrice;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gameVoucherPrice);
                if (textView3 != null) {
                    i2 = R.id.mgListviewItemIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.mgListviewItemIcon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.voucherHand;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherHand);
                        if (textView4 != null) {
                            i2 = R.id.voucherIs;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherIs);
                            if (textView5 != null) {
                                i2 = R.id.voucherOut;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherOut);
                                if (textView6 != null) {
                                    return new a50((LinearLayout) view, textView, textView2, textView3, simpleDraweeView, textView4, textView5, textView6);
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
    public static a50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_voucher_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18016a;
    }
}
