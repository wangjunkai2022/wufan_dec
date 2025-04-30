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
/* compiled from: FragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class xg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26584a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26585b;

    private xg(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f26584a = linearLayout;
        this.f26585b = textView;
    }

    @NonNull
    public static xg a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textview);
        if (textView != null) {
            return new xg((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.textview)));
    }

    @NonNull
    public static xg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26584a;
    }
}
