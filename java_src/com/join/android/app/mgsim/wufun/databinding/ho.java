package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import me.relex.photodraweeview.PhotoDraweeView;
/* compiled from: ImageDetailFragmentBinding.java */
/* loaded from: classes3.dex */
public final class ho implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f20868a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final PhotoDraweeView f20869b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ProgressBar f20870c;

    private ho(@NonNull FrameLayout frameLayout, @NonNull PhotoDraweeView photoDraweeView, @NonNull ProgressBar progressBar) {
        this.f20868a = frameLayout;
        this.f20869b = photoDraweeView;
        this.f20870c = progressBar;
    }

    @NonNull
    public static ho a(@NonNull View view) {
        int i2 = R.id.image;
        PhotoDraweeView photoDraweeView = (PhotoDraweeView) ViewBindings.findChildViewById(view, R.id.image);
        if (photoDraweeView != null) {
            i2 = R.id.loading;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.loading);
            if (progressBar != null) {
                return new ho((FrameLayout) view, photoDraweeView, progressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ho c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ho d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.image_detail_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f20868a;
    }
}
