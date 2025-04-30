package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumPostActivityItemPostVideoBinding.java */
/* loaded from: classes3.dex */
public final class fz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20254a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20255b;

    private fz(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.f20254a = linearLayout;
        this.f20255b = imageView;
    }

    @NonNull
    public static fz a(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
        if (imageView != null) {
            return new fz((LinearLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.img)));
    }

    @NonNull
    public static fz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_video, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20254a;
    }
}
