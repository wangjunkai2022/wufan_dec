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
/* compiled from: VipPopLayoutItemBinding.java */
/* loaded from: classes3.dex */
public final class ge0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20434a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20435b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f20436c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20437d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f20438e;

    private ge0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2) {
        this.f20434a = linearLayout;
        this.f20435b = textView;
        this.f20436c = simpleDraweeView;
        this.f20437d = textView2;
        this.f20438e = linearLayout2;
    }

    @NonNull
    public static ge0 a(@NonNull View view) {
        int i2 = R.id.closeNotice;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.closeNotice);
        if (textView != null) {
            i2 = R.id.image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
            if (simpleDraweeView != null) {
                i2 = R.id.message;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                if (textView2 != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    return new ge0(linearLayout, textView, simpleDraweeView, textView2, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ge0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ge0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.vip_pop_layout_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20434a;
    }
}
