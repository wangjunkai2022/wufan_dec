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
/* compiled from: ChoiceItemClassifyAllBinding.java */
/* loaded from: classes3.dex */
public final class u5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25410a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25411b;

    private u5(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f25410a = linearLayout;
        this.f25411b = textView;
    }

    @NonNull
    public static u5 a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            return new u5((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.count)));
    }

    @NonNull
    public static u5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.choice_item_classify_all, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25410a;
    }
}
