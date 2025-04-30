package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LodingLayoutBinding.java */
/* loaded from: classes3.dex */
public final class xv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26676a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f26677b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ProgressBar f26678c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26679d;

    private xv(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ProgressBar progressBar, @NonNull TextView textView) {
        this.f26676a = relativeLayout;
        this.f26677b = relativeLayout2;
        this.f26678c = progressBar;
        this.f26679d = textView;
    }

    @NonNull
    public static xv a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = R.id.mg_loading;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.mg_loading);
        if (progressBar != null) {
            i2 = R.id.textView;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
            if (textView != null) {
                return new xv(relativeLayout, relativeLayout, progressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.loding_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26676a;
    }
}
