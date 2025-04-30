package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: PullToRefreshHeaderHorizontalBinding.java */
/* loaded from: classes3.dex */
public final class h90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f20710a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f20711b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20712c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f20713d;

    private h90(@NonNull View view, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ProgressBar progressBar) {
        this.f20710a = view;
        this.f20711b = frameLayout;
        this.f20712c = imageView;
        this.f20713d = progressBar;
    }

    @NonNull
    public static h90 a(@NonNull View view) {
        int i2 = R.id.fl_inner;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_inner);
        if (frameLayout != null) {
            i2 = R.id.pull_to_refresh_image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.pull_to_refresh_image);
            if (imageView != null) {
                i2 = R.id.pull_to_refresh_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pull_to_refresh_progress);
                if (progressBar != null) {
                    return new h90(view, frameLayout, imageView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static h90 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.pull_to_refresh_header_horizontal, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f20710a;
    }
}
