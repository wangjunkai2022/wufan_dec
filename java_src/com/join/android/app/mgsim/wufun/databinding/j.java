package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityBuildQrCodeBinding.java */
/* loaded from: classes3.dex */
public final class j implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21298a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f21299b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewStub f21300c;

    private j(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ViewStub viewStub) {
        this.f21298a = relativeLayout;
        this.f21299b = relativeLayout2;
        this.f21300c = viewStub;
    }

    @NonNull
    public static j a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.qr_code_vstub);
        if (viewStub != null) {
            return new j(relativeLayout, relativeLayout, viewStub);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.qr_code_vstub)));
    }

    @NonNull
    public static j c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_build_qr_code, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21298a;
    }
}
