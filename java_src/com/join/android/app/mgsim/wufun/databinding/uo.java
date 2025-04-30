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
/* compiled from: InformationTopItemBinding.java */
/* loaded from: classes3.dex */
public final class uo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25557a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25558b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25559c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25560d;

    private uo(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3) {
        this.f25557a = linearLayout;
        this.f25558b = imageView;
        this.f25559c = imageView2;
        this.f25560d = imageView3;
    }

    @NonNull
    public static uo a(@NonNull View view) {
        int i2 = R.id.imageBottom;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageBottom);
        if (imageView != null) {
            i2 = R.id.imageLeft;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageLeft);
            if (imageView2 != null) {
                i2 = R.id.imageTop;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageTop);
                if (imageView3 != null) {
                    return new uo((LinearLayout) view, imageView, imageView2, imageView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.information_top_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25557a;
    }
}
