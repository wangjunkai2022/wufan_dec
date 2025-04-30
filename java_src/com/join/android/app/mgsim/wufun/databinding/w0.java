package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: ActivityListviewBinding.java */
/* loaded from: classes3.dex */
public final class w0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25982a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25983b;

    private w0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f25982a = linearLayout;
        this.f25983b = linearLayout2;
    }

    @NonNull
    public static w0 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        LinearLayout linearLayout = (LinearLayout) view;
        return new w0(linearLayout, linearLayout);
    }

    @NonNull
    public static w0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_listview, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25982a;
    }
}
