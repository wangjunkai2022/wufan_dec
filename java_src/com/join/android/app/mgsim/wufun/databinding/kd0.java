package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: VideoLayoutEmptyControlWufunBinding.java */
/* loaded from: classes3.dex */
public final class kd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21816a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21817b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f21818c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f21819d;

    private kd0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3) {
        this.f21816a = relativeLayout;
        this.f21817b = imageView;
        this.f21818c = relativeLayout2;
        this.f21819d = relativeLayout3;
    }

    @NonNull
    public static kd0 a(@NonNull View view) {
        int i2 = R.id.mute;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.mute);
        if (imageView != null) {
            i2 = R.id.surface_container;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.surface_container);
            if (relativeLayout != null) {
                i2 = R.id.thumb;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.thumb);
                if (relativeLayout2 != null) {
                    return new kd0((RelativeLayout) view, imageView, relativeLayout, relativeLayout2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.video_layout_empty_control_wufun, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21816a;
    }
}
