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
/* compiled from: TopbarLeftTitleBinding.java */
/* loaded from: classes3.dex */
public final class pc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23591a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23592b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f23593c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f23594d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23595e;

    private pc0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.f23591a = relativeLayout;
        this.f23592b = imageView;
        this.f23593c = view;
        this.f23594d = imageView2;
        this.f23595e = textView;
    }

    @NonNull
    public static pc0 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
            if (findChildViewById != null) {
                i2 = R.id.setting;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.setting);
                if (imageView2 != null) {
                    i2 = R.id.title_textview;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                    if (textView != null) {
                        return new pc0((RelativeLayout) view, imageView, findChildViewById, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.topbar_left_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23591a;
    }
}
