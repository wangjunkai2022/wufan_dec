package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.zxing.view.ViewfinderView;
/* compiled from: ZxingCameraBinding.java */
/* loaded from: classes3.dex */
public final class xe0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f26562a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f26563b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SurfaceView f26564c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewfinderView f26565d;

    private xe0(@NonNull FrameLayout frameLayout, @NonNull Button button, @NonNull SurfaceView surfaceView, @NonNull ViewfinderView viewfinderView) {
        this.f26562a = frameLayout;
        this.f26563b = button;
        this.f26564c = surfaceView;
        this.f26565d = viewfinderView;
    }

    @NonNull
    public static xe0 a(@NonNull View view) {
        int i2 = R.id.btn_cancel_scan;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_cancel_scan);
        if (button != null) {
            i2 = R.id.preview_view;
            SurfaceView surfaceView = (SurfaceView) ViewBindings.findChildViewById(view, R.id.preview_view);
            if (surfaceView != null) {
                i2 = R.id.viewfinder_view;
                ViewfinderView viewfinderView = (ViewfinderView) ViewBindings.findChildViewById(view, R.id.viewfinder_view);
                if (viewfinderView != null) {
                    return new xe0((FrameLayout) view, button, surfaceView, viewfinderView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xe0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xe0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.zxing_camera, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f26562a;
    }
}
