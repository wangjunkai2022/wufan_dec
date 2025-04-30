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
/* compiled from: PapabiGonglueLayoutBinding.java */
/* loaded from: classes3.dex */
public final class v60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25759a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25760b;

    private v60(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.f25759a = linearLayout;
        this.f25760b = imageView;
    }

    @NonNull
    public static v60 a(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
        if (imageView != null) {
            return new v60((LinearLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.lodingBackImage)));
    }

    @NonNull
    public static v60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papabi_gonglue_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25759a;
    }
}
