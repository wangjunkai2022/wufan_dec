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
/* compiled from: ItemSimulatorFooterViewBinding.java */
/* loaded from: classes3.dex */
public final class es implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19892a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f19893b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19894c;

    private es(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView) {
        this.f19892a = linearLayout;
        this.f19893b = view;
        this.f19894c = textView;
    }

    @NonNull
    public static es a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text);
            if (textView != null) {
                return new es((LinearLayout) view, findChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static es c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static es d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_simulator_footer_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19892a;
    }
}
