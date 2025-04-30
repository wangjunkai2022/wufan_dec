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
/* compiled from: ItemModGameRecommendShrinkBinding.java */
/* loaded from: classes3.dex */
public final class dr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19487a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19488b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19489c;

    private dr(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f19487a = linearLayout;
        this.f19488b = simpleDraweeView;
        this.f19489c = textView;
    }

    @NonNull
    public static dr a(@NonNull View view) {
        int i2 = R.id.ivGameIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivGameIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.tvGameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameName);
            if (textView != null) {
                return new dr((LinearLayout) view, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static dr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_mod_game_recommend_shrink, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19487a;
    }
}
