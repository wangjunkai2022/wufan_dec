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
/* compiled from: ItemTagViewBinding.java */
/* loaded from: classes3.dex */
public final class vs implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25915a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25916b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25917c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25918d;

    private vs(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f25915a = linearLayout;
        this.f25916b = imageView;
        this.f25917c = linearLayout2;
        this.f25918d = textView;
    }

    @NonNull
    public static vs a(@NonNull View view) {
        int i2 = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (imageView != null) {
            i2 = R.id.ll_root;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_root);
            if (linearLayout != null) {
                i2 = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView != null) {
                    return new vs((LinearLayout) view, imageView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vs c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vs d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_tag_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25915a;
    }
}
