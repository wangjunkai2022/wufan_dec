package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: TestbLayoutBinding.java */
/* loaded from: classes3.dex */
public final class jc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21441a;

    private jc0(@NonNull RelativeLayout relativeLayout) {
        this.f21441a = relativeLayout;
    }

    @NonNull
    public static jc0 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new jc0((RelativeLayout) view);
    }

    @NonNull
    public static jc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.testb_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21441a;
    }
}
