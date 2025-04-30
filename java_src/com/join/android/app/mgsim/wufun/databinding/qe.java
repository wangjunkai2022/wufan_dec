package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.zxing.android.view.ViewfinderView;
/* compiled from: FaceTransferScanQrCodeActivityBinding.java */
/* loaded from: classes3.dex */
public final class qe implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f23966a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SurfaceView f23967b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f23968c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final pc0 f23969d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ViewfinderView f23970e;

    private qe(@NonNull FrameLayout frameLayout, @NonNull SurfaceView surfaceView, @NonNull FrameLayout frameLayout2, @NonNull pc0 pc0Var, @NonNull ViewfinderView viewfinderView) {
        this.f23966a = frameLayout;
        this.f23967b = surfaceView;
        this.f23968c = frameLayout2;
        this.f23969d = pc0Var;
        this.f23970e = viewfinderView;
    }

    @NonNull
    public static qe a(@NonNull View view) {
        int i2 = R.id.preview_view;
        SurfaceView surfaceView = (SurfaceView) ViewBindings.findChildViewById(view, R.id.preview_view);
        if (surfaceView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i2 = R.id.scan_qr_code_title;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.scan_qr_code_title);
            if (findChildViewById != null) {
                pc0 a4 = pc0.a(findChildViewById);
                i2 = R.id.viewfinder_view;
                ViewfinderView viewfinderView = (ViewfinderView) ViewBindings.findChildViewById(view, R.id.viewfinder_view);
                if (viewfinderView != null) {
                    return new qe(frameLayout, surfaceView, frameLayout, a4, viewfinderView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qe c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qe d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.face_transfer_scan_qr_code_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f23966a;
    }
}
