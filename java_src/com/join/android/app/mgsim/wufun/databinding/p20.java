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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgpapaHomeRecommendItemBinding.java */
/* loaded from: classes3.dex */
public final class p20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23447a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f23448b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f23449c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f23450d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23451e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23452f;

    private p20(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23447a = linearLayout;
        this.f23448b = frameLayout;
        this.f23449c = simpleDraweeView;
        this.f23450d = progressBar;
        this.f23451e = textView;
        this.f23452f = textView2;
    }

    @NonNull
    public static p20 a(@NonNull View view) {
        int i2 = R.id.flBtn;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.flBtn);
        if (frameLayout != null) {
            i2 = R.id.ivGameIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivGameIcon);
            if (simpleDraweeView != null) {
                i2 = R.id.loading_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.loading_progress);
                if (progressBar != null) {
                    i2 = R.id.tvBtn;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvBtn);
                    if (textView != null) {
                        i2 = R.id.tvGameName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameName);
                        if (textView2 != null) {
                            return new p20((LinearLayout) view, frameLayout, simpleDraweeView, progressBar, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static p20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_home_recommend_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23447a;
    }
}
