package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutRectBoxBinding.java */
/* loaded from: classes3.dex */
public final class gu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20588a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final EditText f20589b;

    private gu(@NonNull LinearLayout linearLayout, @NonNull EditText editText) {
        this.f20588a = linearLayout;
        this.f20589b = editText;
    }

    @NonNull
    public static gu a(@NonNull View view) {
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_value);
        if (editText != null) {
            return new gu((LinearLayout) view, editText);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.et_value)));
    }

    @NonNull
    public static gu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_rect_box, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20588a;
    }
}
