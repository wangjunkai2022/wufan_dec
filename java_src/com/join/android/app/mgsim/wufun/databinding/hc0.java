package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: TabIndicatorBinding.java */
/* loaded from: classes3.dex */
public final class hc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextView f20736a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20737b;

    private hc0(@NonNull TextView textView, @NonNull TextView textView2) {
        this.f20736a = textView;
        this.f20737b = textView2;
    }

    @NonNull
    public static hc0 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new hc0(textView, textView);
    }

    @NonNull
    public static hc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.tab_indicator, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public TextView getRoot() {
        return this.f20736a;
    }
}
