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
/* compiled from: DetialGoldenFingerLayoutBinding.java */
/* loaded from: classes3.dex */
public final class y9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f26857a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26858b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26859c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f26860d;

    private y9(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull View view) {
        this.f26857a = constraintLayout;
        this.f26858b = imageView;
        this.f26859c = textView;
        this.f26860d = view;
    }

    @NonNull
    public static y9 a(@NonNull View view) {
        int i2 = R.id.imageView46;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView46);
        if (imageView != null) {
            i2 = R.id.text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text);
            if (textView != null) {
                i2 = R.id.view4;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.view4);
                if (findChildViewById != null) {
                    return new y9((ConstraintLayout) view, imageView, textView, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static y9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_golden_finger_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f26857a;
    }
}
