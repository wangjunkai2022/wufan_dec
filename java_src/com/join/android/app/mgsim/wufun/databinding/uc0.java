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
/* compiled from: TopbarTitleRightLayoutBinding.java */
/* loaded from: classes3.dex */
public final class uc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25497a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25498b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25499c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25500d;

    private uc0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f25497a = relativeLayout;
        this.f25498b = imageView;
        this.f25499c = textView;
        this.f25500d = textView2;
    }

    @NonNull
    public static uc0 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.textTopRight;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textTopRight);
            if (textView != null) {
                i2 = R.id.title_textview;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                if (textView2 != null) {
                    return new uc0((RelativeLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.topbar_title_right_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25497a;
    }
}
