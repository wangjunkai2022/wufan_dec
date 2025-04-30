package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DetialTagItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ga implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20363a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20364b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20365c;

    private ga(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f20363a = linearLayout;
        this.f20364b = linearLayout2;
        this.f20365c = textView;
    }

    @NonNull
    public static ga a(@NonNull View view) {
        int i2 = R.id.itemBack;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.itemBack);
        if (linearLayout != null) {
            i2 = R.id.tipText;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tipText);
            if (textView != null) {
                return new ga((LinearLayout) view, linearLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ga c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ga d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_tag_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20363a;
    }
}
