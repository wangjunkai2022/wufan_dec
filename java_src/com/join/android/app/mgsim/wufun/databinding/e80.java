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
/* compiled from: PayfinishActivirtyBinding.java */
/* loaded from: classes3.dex */
public final class e80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19639a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19640b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19641c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f19642d;

    private e80(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f19639a = linearLayout;
        this.f19640b = imageView;
        this.f19641c = textView;
        this.f19642d = linearLayout2;
    }

    @NonNull
    public static e80 a(@NonNull View view) {
        int i2 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.closed);
        if (imageView != null) {
            i2 = R.id.downButn;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.downButn);
            if (textView != null) {
                i2 = R.id.top;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.top);
                if (linearLayout != null) {
                    return new e80((LinearLayout) view, imageView, textView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static e80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.payfinish_activirty, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19639a;
    }
}
