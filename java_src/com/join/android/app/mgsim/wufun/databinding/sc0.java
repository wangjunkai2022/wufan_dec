package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: TopbarTitleCenterLayoutBinding.java */
/* loaded from: classes3.dex */
public final class sc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24813a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24814b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f24815c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24816d;

    private sc0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull TextView textView) {
        this.f24813a = relativeLayout;
        this.f24814b = imageView;
        this.f24815c = view;
        this.f24816d = textView;
    }

    @NonNull
    public static sc0 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
            if (findChildViewById != null) {
                i2 = R.id.title_textview;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                if (textView != null) {
                    return new sc0((RelativeLayout) view, imageView, findChildViewById, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.topbar_title_center_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24813a;
    }
}
