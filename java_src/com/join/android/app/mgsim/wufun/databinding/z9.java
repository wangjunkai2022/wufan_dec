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
/* compiled from: DetialHandSharkItemBinding.java */
/* loaded from: classes3.dex */
public final class z9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27164a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f27165b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f27166c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f27167d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f27168e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27169f;

    private z9(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f27164a = linearLayout;
        this.f27165b = linearLayout2;
        this.f27166c = imageView;
        this.f27167d = imageView2;
        this.f27168e = textView;
        this.f27169f = textView2;
    }

    @NonNull
    public static z9 a(@NonNull View view) {
        int i2 = R.id.handSharkLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.handSharkLayout);
        if (linearLayout != null) {
            i2 = R.id.imageView42;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView42);
            if (imageView != null) {
                i2 = R.id.imageView43;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView43);
                if (imageView2 != null) {
                    i2 = R.id.suntitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.suntitle);
                    if (textView != null) {
                        i2 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView2 != null) {
                            return new z9((LinearLayout) view, linearLayout, imageView, imageView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static z9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_hand_shark_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27164a;
    }
}
