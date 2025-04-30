package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemStandaloneLine20ViewBinding.java */
/* loaded from: classes3.dex */
public final class os implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23348a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f23349b;

    private os(@NonNull LinearLayout linearLayout, @NonNull View view) {
        this.f23348a = linearLayout;
        this.f23349b = view;
    }

    @NonNull
    public static os a(@NonNull View view) {
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineV);
        if (findChildViewById != null) {
            return new os((LinearLayout) view, findChildViewById);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.lineV)));
    }

    @NonNull
    public static os c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static os d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_standalone_line_20_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23348a;
    }
}
