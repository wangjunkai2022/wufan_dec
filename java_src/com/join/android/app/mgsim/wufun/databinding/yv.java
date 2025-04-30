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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadingImageView;
/* compiled from: LodingLayoutIncludeBinding.java */
/* loaded from: classes3.dex */
public final class yv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27056a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LoadingImageView f27057b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f27058c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27059d;

    private yv(@NonNull LinearLayout linearLayout, @NonNull LoadingImageView loadingImageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f27056a = linearLayout;
        this.f27057b = loadingImageView;
        this.f27058c = linearLayout2;
        this.f27059d = textView;
    }

    @NonNull
    public static yv a(@NonNull View view) {
        int i2 = R.id.loading_view;
        LoadingImageView loadingImageView = (LoadingImageView) ViewBindings.findChildViewById(view, R.id.loading_view);
        if (loadingImageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
            if (textView != null) {
                return new yv(linearLayout, loadingImageView, linearLayout, textView);
            }
            i2 = R.id.textView2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.loding_layout_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27056a;
    }
}
