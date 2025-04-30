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
/* compiled from: DialogModStandardBinding.java */
/* loaded from: classes3.dex */
public final class rc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24332a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24333b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24334c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24335d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24336e;

    private rc(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24332a = constraintLayout;
        this.f24333b = imageView;
        this.f24334c = textView;
        this.f24335d = textView2;
        this.f24336e = textView3;
    }

    @NonNull
    public static rc a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i2 = R.id.launch;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.launch);
            if (textView != null) {
                i2 = R.id.textView102;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView102);
                if (textView2 != null) {
                    i2 = R.id.textView93;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView93);
                    if (textView3 != null) {
                        return new rc((ConstraintLayout) view, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_mod_standard, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24332a;
    }
}
