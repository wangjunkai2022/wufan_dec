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
/* compiled from: CropSelectorBinding.java */
/* loaded from: classes3.dex */
public final class s8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24741a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24742b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24743c;

    private s8(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f24741a = linearLayout;
        this.f24742b = imageView;
        this.f24743c = textView;
    }

    @NonNull
    public static s8 a(@NonNull View view) {
        int i2 = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (imageView != null) {
            i2 = R.id.tv_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
            if (textView != null) {
                return new s8((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static s8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.crop_selector, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24741a;
    }
}
