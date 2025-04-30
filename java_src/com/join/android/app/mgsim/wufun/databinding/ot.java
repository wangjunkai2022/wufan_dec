package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentGridView;
/* compiled from: LayoutGameMainVipBinding.java */
/* loaded from: classes3.dex */
public final class ot implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23350a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23351b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f23352c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23353d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final WrapContentGridView f23354e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f23355f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23356g;

    private ot(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout, @NonNull TextView textView2, @NonNull WrapContentGridView wrapContentGridView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3) {
        this.f23350a = linearLayout;
        this.f23351b = textView;
        this.f23352c = constraintLayout;
        this.f23353d = textView2;
        this.f23354e = wrapContentGridView;
        this.f23355f = simpleDraweeView;
        this.f23356g = textView3;
    }

    @NonNull
    public static ot a(@NonNull View view) {
        int i2 = R.id.buyVip;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.buyVip);
        if (textView != null) {
            i2 = R.id.rl1;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.rl1);
            if (constraintLayout != null) {
                i2 = R.id.vipDesc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.vipDesc);
                if (textView2 != null) {
                    i2 = R.id.vipFunc;
                    WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(view, R.id.vipFunc);
                    if (wrapContentGridView != null) {
                        i2 = R.id.vipIcon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.vipIcon);
                        if (simpleDraweeView != null) {
                            i2 = R.id.vipTitle;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.vipTitle);
                            if (textView3 != null) {
                                return new ot((LinearLayout) view, textView, constraintLayout, textView2, wrapContentGridView, simpleDraweeView, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ot c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ot d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_game_main_vip, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23350a;
    }
}
