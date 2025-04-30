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
/* compiled from: VipCenterVipcardLayoutBinding.java */
/* loaded from: classes3.dex */
public final class fe0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20120a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20121b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f20122c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20123d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20124e;

    private fe0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f20120a = linearLayout;
        this.f20121b = textView;
        this.f20122c = simpleDraweeView;
        this.f20123d = textView2;
        this.f20124e = textView3;
    }

    @NonNull
    public static fe0 a(@NonNull View view) {
        int i2 = R.id.detail;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.detail);
        if (textView != null) {
            i2 = R.id.iv_user_avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_user_avatar);
            if (simpleDraweeView != null) {
                i2 = R.id.time;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                if (textView2 != null) {
                    i2 = R.id.userName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                    if (textView3 != null) {
                        return new fe0((LinearLayout) view, textView, simpleDraweeView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fe0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fe0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.vip_center_vipcard_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20120a;
    }
}
