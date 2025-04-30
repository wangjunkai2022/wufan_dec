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
/* compiled from: SerchtagItemLayout1Binding.java */
/* loaded from: classes3.dex */
public final class bb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextView f18475a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18476b;

    private bb0(@NonNull TextView textView, @NonNull TextView textView2) {
        this.f18475a = textView;
        this.f18476b = textView2;
    }

    @NonNull
    public static bb0 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new bb0(textView, textView);
    }

    @NonNull
    public static bb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.serchtag_item_layout1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public TextView getRoot() {
        return this.f18475a;
    }
}
