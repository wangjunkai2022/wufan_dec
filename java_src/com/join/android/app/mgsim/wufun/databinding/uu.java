package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutTagGameDetailProfileBinding.java */
/* loaded from: classes3.dex */
public final class uu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25602a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25603b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25604c;

    private uu(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f25602a = constraintLayout;
        this.f25603b = imageView;
        this.f25604c = textView;
    }

    @NonNull
    public static uu a(@NonNull View view) {
        int i2 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
        if (imageView != null) {
            i2 = R.id.name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView != null) {
                return new uu((ConstraintLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_tag_game_detail_profile, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25602a;
    }
}
