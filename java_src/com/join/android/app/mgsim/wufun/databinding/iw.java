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
/* compiled from: LuckdrawPrizeLayoutItemBinding.java */
/* loaded from: classes3.dex */
public final class iw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21265a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f21266b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f21267c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21268d;

    private iw(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f21265a = linearLayout;
        this.f21266b = simpleDraweeView;
        this.f21267c = linearLayout2;
        this.f21268d = textView;
    }

    @NonNull
    public static iw a(@NonNull View view) {
        int i2 = R.id.icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
        if (simpleDraweeView != null) {
            i2 = R.id.main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
            if (linearLayout != null) {
                i2 = R.id.name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView != null) {
                    return new iw((LinearLayout) view, simpleDraweeView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static iw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static iw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.luckdraw_prize_layout_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21265a;
    }
}
