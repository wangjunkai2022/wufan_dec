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
/* compiled from: ActivityAccountCenterNewBinding.java */
/* loaded from: classes3.dex */
public final class f implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19927a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19928b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f19929c;

    private f(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout) {
        this.f19927a = relativeLayout;
        this.f19928b = imageView;
        this.f19929c = frameLayout;
    }

    @NonNull
    public static f a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.fragmentLayout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragmentLayout);
            if (frameLayout != null) {
                return new f((RelativeLayout) view, imageView, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_account_center_new, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19927a;
    }
}
