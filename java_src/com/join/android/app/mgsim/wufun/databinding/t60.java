package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapaCouponItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class t60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25100a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CheckBox f25101b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25102c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25103d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25104e;

    private t60(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f25100a = linearLayout;
        this.f25101b = checkBox;
        this.f25102c = textView;
        this.f25103d = textView2;
        this.f25104e = textView3;
    }

    @NonNull
    public static t60 a(@NonNull View view) {
        int i2 = R.id.checkBox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkBox);
        if (checkBox != null) {
            i2 = R.id.couponName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.couponName);
            if (textView != null) {
                i2 = R.id.expireDate;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.expireDate);
                if (textView2 != null) {
                    i2 = R.id.money;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.money);
                    if (textView3 != null) {
                        return new t60((LinearLayout) view, checkBox, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static t60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papa_coupon_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25100a;
    }
}
