package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DetialGoldenFinger1LayoutBinding.java */
/* loaded from: classes3.dex */
public final class x9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final HorizontalScrollView f26488a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26489b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26490c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26491d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26492e;

    private x9(@NonNull HorizontalScrollView horizontalScrollView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26488a = horizontalScrollView;
        this.f26489b = textView;
        this.f26490c = textView2;
        this.f26491d = textView3;
        this.f26492e = textView4;
    }

    @NonNull
    public static x9 a(@NonNull View view) {
        int i2 = R.id.f17861k1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.f17861k1);
        if (textView != null) {
            i2 = R.id.f17862k2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.f17862k2);
            if (textView2 != null) {
                i2 = R.id.f17863k3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.f17863k3);
                if (textView3 != null) {
                    i2 = R.id.k4;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.k4);
                    if (textView4 != null) {
                        return new x9((HorizontalScrollView) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static x9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_golden_finger1_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public HorizontalScrollView getRoot() {
        return this.f26488a;
    }
}
