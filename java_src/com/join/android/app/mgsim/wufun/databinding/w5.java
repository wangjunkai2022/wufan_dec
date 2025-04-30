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
/* compiled from: ChoiceItemClassifyTypeBinding.java */
/* loaded from: classes3.dex */
public final class w5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextView f26059a;

    private w5(@NonNull TextView textView) {
        this.f26059a = textView;
    }

    @NonNull
    public static w5 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new w5((TextView) view);
    }

    @NonNull
    public static w5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.choice_item_classify_type, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public TextView getRoot() {
        return this.f26059a;
    }
}
