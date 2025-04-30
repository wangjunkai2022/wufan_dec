package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DiscoverLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ld implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22105a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22106b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22107c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f22108d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f22109e;

    private ld(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout2) {
        this.f22105a = relativeLayout;
        this.f22106b = imageView;
        this.f22107c = imageView2;
        this.f22108d = frameLayout;
        this.f22109e = relativeLayout2;
    }

    @NonNull
    public static ld a(@NonNull View view) {
        int i2 = R.id.btnBack;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btnBack);
        if (imageView != null) {
            i2 = R.id.download_bg;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.download_bg);
            if (imageView2 != null) {
                i2 = R.id.frameLayout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.frameLayout);
                if (frameLayout != null) {
                    i2 = R.id.layoutBack;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layoutBack);
                    if (relativeLayout != null) {
                        return new ld((RelativeLayout) view, imageView, imageView2, frameLayout, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ld c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ld d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.discover_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22105a;
    }
}
