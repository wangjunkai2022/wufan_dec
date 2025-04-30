package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetialBtCouponItemBinding.java */
/* loaded from: classes3.dex */
public final class rl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24442a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24443b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24444c;

    private rl(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f24442a = constraintLayout;
        this.f24443b = textView;
        this.f24444c = textView2;
    }

    @NonNull
    public static rl a(@NonNull View view) {
        int i2 = R.id.info;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.info);
        if (textView != null) {
            i2 = R.id.more;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.more);
            if (textView2 != null) {
                return new rl((ConstraintLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_bt_coupon_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24442a;
    }
}
