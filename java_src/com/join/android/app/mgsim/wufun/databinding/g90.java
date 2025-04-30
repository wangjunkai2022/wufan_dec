package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ProgressHudBinding.java */
/* loaded from: classes3.dex */
public final class g90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20360a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20361b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20362c;

    private g90(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f20360a = linearLayout;
        this.f20361b = imageView;
        this.f20362c = textView;
    }

    @NonNull
    public static g90 a(@NonNull View view) {
        int i2 = R.id.image_spinner;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_spinner);
        if (imageView != null) {
            i2 = R.id.text_message;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text_message);
            if (textView != null) {
                return new g90((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.progress_hud, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20360a;
    }
}
