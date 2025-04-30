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
/* compiled from: ItemMemberFunViewBinding.java */
/* loaded from: classes3.dex */
public final class zq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27310a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f27311b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f27312c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27313d;

    private zq(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f27310a = linearLayout;
        this.f27311b = simpleDraweeView;
        this.f27312c = linearLayout2;
        this.f27313d = textView;
    }

    @NonNull
    public static zq a(@NonNull View view) {
        int i2 = R.id.itemMemberFunIv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.itemMemberFunIv);
        if (simpleDraweeView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.itemMemberFunTx);
            if (textView != null) {
                return new zq(linearLayout, simpleDraweeView, linearLayout, textView);
            }
            i2 = R.id.itemMemberFunTx;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_member_fun_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27310a;
    }
}
