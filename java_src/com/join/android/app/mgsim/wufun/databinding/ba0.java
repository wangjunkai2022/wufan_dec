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
/* compiled from: SampleListDetailItemBinding.java */
/* loaded from: classes3.dex */
public final class ba0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18461a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18462b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18463c;

    private ba0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f18461a = linearLayout;
        this.f18462b = imageView;
        this.f18463c = textView;
    }

    @NonNull
    public static ba0 a(@NonNull View view) {
        int i2 = R.id.photo;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.photo);
        if (imageView != null) {
            i2 = R.id.url;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.url);
            if (textView != null) {
                return new ba0((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ba0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ba0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.sample_list_detail_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18461a;
    }
}
