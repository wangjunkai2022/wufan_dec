package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: UploadDialogItemBinding.java */
/* loaded from: classes3.dex */
public final class dd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f19329a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19330b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19331c;

    private dd0(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f19329a = frameLayout;
        this.f19330b = imageView;
        this.f19331c = textView;
    }

    @NonNull
    public static dd0 a(@NonNull View view) {
        int i2 = R.id.img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
        if (imageView != null) {
            i2 = R.id.name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView != null) {
                return new dd0((FrameLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static dd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.upload_dialog_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f19329a;
    }
}
