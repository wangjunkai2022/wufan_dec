package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ImageDetailPagerBinding.java */
/* loaded from: classes3.dex */
public final class io implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f21216a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21217b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21218c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final MultiTouchViewPager f21219d;

    private io(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull MultiTouchViewPager multiTouchViewPager) {
        this.f21216a = frameLayout;
        this.f21217b = textView;
        this.f21218c = textView2;
        this.f21219d = multiTouchViewPager;
    }

    @NonNull
    public static io a(@NonNull View view) {
        int i2 = R.id.bottomLayout;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.bottomLayout);
        if (textView != null) {
            i2 = R.id.indicator;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.indicator);
            if (textView2 != null) {
                i2 = R.id.pager;
                MultiTouchViewPager multiTouchViewPager = (MultiTouchViewPager) ViewBindings.findChildViewById(view, R.id.pager);
                if (multiTouchViewPager != null) {
                    return new io((FrameLayout) view, textView, textView2, multiTouchViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static io c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static io d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.image_detail_pager, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f21216a;
    }
}
