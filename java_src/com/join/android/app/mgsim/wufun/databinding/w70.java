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
/* compiled from: PapapayCenterLeftTitleBinding.java */
/* loaded from: classes3.dex */
public final class w70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26083a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26084b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26085c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26086d;

    private w70(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.f26083a = relativeLayout;
        this.f26084b = textView;
        this.f26085c = imageView;
        this.f26086d = textView2;
    }

    @NonNull
    public static w70 a(@NonNull View view) {
        int i2 = R.id.aboutPabi;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.aboutPabi);
        if (textView != null) {
            i2 = R.id.back_image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
            if (imageView != null) {
                i2 = R.id.title_textview;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                if (textView2 != null) {
                    return new w70((RelativeLayout) view, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papapay_center_left_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26083a;
    }
}
