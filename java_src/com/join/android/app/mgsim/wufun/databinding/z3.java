package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: BrvahQuickViewLoadMoreBinding.java */
/* loaded from: classes3.dex */
public final class z3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f27103a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f27104b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f27105c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f27106d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ProgressBar f27107e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27108f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f27109g;

    private z3(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f27103a = frameLayout;
        this.f27104b = frameLayout2;
        this.f27105c = frameLayout3;
        this.f27106d = linearLayout;
        this.f27107e = progressBar;
        this.f27108f = textView;
        this.f27109g = textView2;
    }

    @NonNull
    public static z3 a(@NonNull View view) {
        int i2 = R.id.load_more_load_end_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.load_more_load_end_view);
        if (frameLayout != null) {
            i2 = R.id.load_more_load_fail_view;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.load_more_load_fail_view);
            if (frameLayout2 != null) {
                i2 = R.id.load_more_loading_view;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.load_more_loading_view);
                if (linearLayout != null) {
                    i2 = R.id.loading_progress;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.loading_progress);
                    if (progressBar != null) {
                        i2 = R.id.loading_text;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.loading_text);
                        if (textView != null) {
                            i2 = R.id.tv_prompt;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_prompt);
                            if (textView2 != null) {
                                return new z3((FrameLayout) view, frameLayout, frameLayout2, linearLayout, progressBar, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static z3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.brvah_quick_view_load_more, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f27103a;
    }
}
