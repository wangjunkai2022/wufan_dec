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
/* compiled from: AlertHeadViewBinding.java */
/* loaded from: classes3.dex */
public final class y2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26767a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26768b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26769c;

    private y2(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f26767a = linearLayout;
        this.f26768b = imageView;
        this.f26769c = textView;
    }

    @NonNull
    public static y2 a(@NonNull View view) {
        int i2 = R.id.iv_dialog_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_dialog_icon);
        if (imageView != null) {
            i2 = R.id.tv_dialog_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dialog_title);
            if (textView != null) {
                return new y2((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static y2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.alert_head_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26767a;
    }
}
