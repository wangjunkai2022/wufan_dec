package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SplashMainLayoutBinding.java */
/* loaded from: classes3.dex */
public final class cc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18852a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f18853b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18854c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f18855d;

    private cc0(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.f18852a = relativeLayout;
        this.f18853b = frameLayout;
        this.f18854c = textView;
        this.f18855d = imageView;
    }

    @NonNull
    public static cc0 a(@NonNull View view) {
        int i2 = R.id.main;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.main);
        if (frameLayout != null) {
            i2 = R.id.skip_view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.skip_view);
            if (textView != null) {
                i2 = R.id.splash_holder;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.splash_holder);
                if (imageView != null) {
                    return new cc0((RelativeLayout) view, frameLayout, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static cc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.splash_main_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18852a;
    }
}
