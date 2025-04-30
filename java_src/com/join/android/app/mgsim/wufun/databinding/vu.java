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
/* compiled from: LayoutVoucherGameDetailBinding.java */
/* loaded from: classes3.dex */
public final class vu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25923a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25924b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25925c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25926d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25927e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25928f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25929g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25930h;

    private vu(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f25923a = linearLayout;
        this.f25924b = linearLayout2;
        this.f25925c = linearLayout3;
        this.f25926d = textView;
        this.f25927e = textView2;
        this.f25928f = textView3;
        this.f25929g = textView4;
        this.f25930h = textView5;
    }

    @NonNull
    public static vu a(@NonNull View view) {
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
                                return new vu(linearLayout2, linearLayout, linearLayout2, textView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_voucher_game_detail, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25923a;
    }
}
