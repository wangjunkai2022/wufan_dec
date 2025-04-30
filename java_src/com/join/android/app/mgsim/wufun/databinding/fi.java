package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FullscreenActivityBinding.java */
/* loaded from: classes3.dex */
public final class fi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20157a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StandardVideoView f20158b;

    private fi(@NonNull RelativeLayout relativeLayout, @NonNull StandardVideoView standardVideoView) {
        this.f20157a = relativeLayout;
        this.f20158b = standardVideoView;
    }

    @NonNull
    public static fi a(@NonNull View view) {
        StandardVideoView standardVideoView = (StandardVideoView) ViewBindings.findChildViewById(view, R.id.videoPlayer);
        if (standardVideoView != null) {
            return new fi((RelativeLayout) view, standardVideoView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.videoPlayer)));
    }

    @NonNull
    public static fi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fullscreen_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20157a;
    }
}
