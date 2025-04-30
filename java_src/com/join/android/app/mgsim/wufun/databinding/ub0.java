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
/* compiled from: SimulatorGridviewItemBinding.java */
/* loaded from: classes3.dex */
public final class ub0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25488a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25489b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25490c;

    private ub0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f25488a = linearLayout;
        this.f25489b = imageView;
        this.f25490c = textView;
    }

    @NonNull
    public static ub0 a(@NonNull View view) {
        int i2 = R.id.imgIconSimulator;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imgIconSimulator);
        if (imageView != null) {
            i2 = R.id.textViewSimulator;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textViewSimulator);
            if (textView != null) {
                return new ub0((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ub0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ub0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.simulator_gridview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25488a;
    }
}
