package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: RewardBinding.java */
/* loaded from: classes3.dex */
public final class u90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25464a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25465b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25466c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25467d;

    private u90(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f25464a = relativeLayout;
        this.f25465b = imageView;
        this.f25466c = linearLayout;
        this.f25467d = textView;
    }

    @NonNull
    public static u90 a(@NonNull View view) {
        int i2 = R.id.moneyPackage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.moneyPackage);
        if (imageView != null) {
            i2 = R.id.rewardContainer;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rewardContainer);
            if (linearLayout != null) {
                i2 = R.id.txt;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt);
                if (textView != null) {
                    return new u90((RelativeLayout) view, imageView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.reward, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25464a;
    }
}
