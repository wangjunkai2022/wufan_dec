package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CustomerNotitficationLayoutBinding.java */
/* loaded from: classes3.dex */
public final class w8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26087a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26088b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ProgressBar f26089c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26090d;

    private w8(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull TextView textView) {
        this.f26087a = relativeLayout;
        this.f26088b = imageView;
        this.f26089c = progressBar;
        this.f26090d = textView;
    }

    @NonNull
    public static w8 a(@NonNull View view) {
        int i2 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
        if (imageView != null) {
            i2 = R.id.pb_progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_progress);
            if (progressBar != null) {
                i2 = R.id.title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView != null) {
                    return new w8((RelativeLayout) view, imageView, progressBar, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.customer_notitfication_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26087a;
    }
}
