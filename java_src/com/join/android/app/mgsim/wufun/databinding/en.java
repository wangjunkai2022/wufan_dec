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
/* compiled from: GameolTopTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class en implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19848a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19849b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f19850c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19851d;

    private en(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull TextView textView) {
        this.f19848a = linearLayout;
        this.f19849b = imageView;
        this.f19850c = view;
        this.f19851d = textView;
    }

    @NonNull
    public static en a(@NonNull View view) {
        int i2 = R.id.adImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.adImage);
        if (imageView != null) {
            i2 = R.id.line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
            if (findChildViewById != null) {
                i2 = R.id.titleText;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                if (textView != null) {
                    return new en((LinearLayout) view, imageView, findChildViewById, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static en c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static en d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameol_top_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19848a;
    }
}
