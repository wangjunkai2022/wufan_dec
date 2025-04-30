package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.zxing.android.view.ViewfinderView;
/* compiled from: ActivityCaptureBinding.java */
/* loaded from: classes3.dex */
public final class k implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21574a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SurfaceView f21575b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewfinderView f21576c;

    private k(@NonNull RelativeLayout relativeLayout, @NonNull SurfaceView surfaceView, @NonNull ViewfinderView viewfinderView) {
        this.f21574a = relativeLayout;
        this.f21575b = surfaceView;
        this.f21576c = viewfinderView;
    }

    @NonNull
    public static k a(@NonNull View view) {
        int i2 = R.id.surfaceview;
        SurfaceView surfaceView = (SurfaceView) ViewBindings.findChildViewById(view, R.id.surfaceview);
        if (surfaceView != null) {
            i2 = R.id.viewfinderview;
            ViewfinderView viewfinderView = (ViewfinderView) ViewBindings.findChildViewById(view, R.id.viewfinderview);
            if (viewfinderView != null) {
                return new k((RelativeLayout) view, surfaceView, viewfinderView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static k c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_capture, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21574a;
    }
}
