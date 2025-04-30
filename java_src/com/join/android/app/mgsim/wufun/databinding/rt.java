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
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NestedScrollWebView;
/* compiled from: LayoutIntroductionWebBinding.java */
/* loaded from: classes3.dex */
public final class rt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24513a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppBarLayout f24514b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final NestedScrollWebView f24515c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24516d;

    private rt(@NonNull LinearLayout linearLayout, @NonNull AppBarLayout appBarLayout, @NonNull NestedScrollWebView nestedScrollWebView, @NonNull TextView textView) {
        this.f24513a = linearLayout;
        this.f24514b = appBarLayout;
        this.f24515c = nestedScrollWebView;
        this.f24516d = textView;
    }

    @NonNull
    public static rt a(@NonNull View view) {
        int i2 = R.id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.app_bar);
        if (appBarLayout != null) {
            i2 = R.id.ns_web_view;
            NestedScrollWebView nestedScrollWebView = (NestedScrollWebView) ViewBindings.findChildViewById(view, R.id.ns_web_view);
            if (nestedScrollWebView != null) {
                i2 = R.id.title_textview;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                if (textView != null) {
                    return new rt((LinearLayout) view, appBarLayout, nestedScrollWebView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_introduction_web, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24513a;
    }
}
