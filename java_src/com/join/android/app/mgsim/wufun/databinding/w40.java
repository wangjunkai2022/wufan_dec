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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyNoVoucherItemBinding.java */
/* loaded from: classes3.dex */
public final class w40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26051a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26052b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26053c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26054d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26055e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26056f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26057g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26058h;

    private w40(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f26051a = linearLayout;
        this.f26052b = linearLayout2;
        this.f26053c = linearLayout3;
        this.f26054d = textView;
        this.f26055e = textView2;
        this.f26056f = textView3;
        this.f26057g = textView4;
        this.f26058h = textView5;
    }

    @NonNull
    public static w40 a(@NonNull View view) {
        int i2 = R.id.gameVoucherRight;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gameVoucherRight);
        if (linearLayout != null) {
            LinearLayout linearLayout2 = (LinearLayout) view;
            i2 = R.id.voucherContent;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.voucherContent);
            if (textView != null) {
                i2 = R.id.voucherGameGet;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherGameGet);
                if (textView2 != null) {
                    i2 = R.id.voucherGameNumber;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherGameNumber);
                    if (textView3 != null) {
                        i2 = R.id.voucherName;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherName);
                        if (textView4 != null) {
                            i2 = R.id.voucherPrice;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.voucherPrice);
                            if (textView5 != null) {
                                return new w40(linearLayout2, linearLayout, linearLayout2, textView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_no_voucher_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26051a;
    }
}
