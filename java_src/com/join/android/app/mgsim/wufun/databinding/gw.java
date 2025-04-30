package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LuckaddressFilterBottomOperateBinding.java */
/* loaded from: classes3.dex */
public final class gw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20594a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final NumberPicker f20595b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final NumberPicker f20596c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final NumberPicker f20597d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20598e;

    private gw(@NonNull LinearLayout linearLayout, @NonNull NumberPicker numberPicker, @NonNull NumberPicker numberPicker2, @NonNull NumberPicker numberPicker3, @NonNull TextView textView) {
        this.f20594a = linearLayout;
        this.f20595b = numberPicker;
        this.f20596c = numberPicker2;
        this.f20597d = numberPicker3;
        this.f20598e = textView;
    }

    @NonNull
    public static gw a(@NonNull View view) {
        int i2 = R.id.city_wheel;
        NumberPicker numberPicker = (NumberPicker) ViewBindings.findChildViewById(view, R.id.city_wheel);
        if (numberPicker != null) {
            i2 = R.id.district_wheel;
            NumberPicker numberPicker2 = (NumberPicker) ViewBindings.findChildViewById(view, R.id.district_wheel);
            if (numberPicker2 != null) {
                i2 = R.id.province_wheel;
                NumberPicker numberPicker3 = (NumberPicker) ViewBindings.findChildViewById(view, R.id.province_wheel);
                if (numberPicker3 != null) {
                    i2 = R.id.setting;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.setting);
                    if (textView != null) {
                        return new gw((LinearLayout) view, numberPicker, numberPicker2, numberPicker3, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.luckaddress_filter_bottom_operate, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20594a;
    }
}
