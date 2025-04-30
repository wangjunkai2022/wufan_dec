package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: BlankBinding.java */
/* loaded from: classes3.dex */
public final class y3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ViewStub f26773a;

    private y3(@NonNull ViewStub viewStub) {
        this.f26773a = viewStub;
    }

    @NonNull
    public static y3 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new y3((ViewStub) view);
    }

    @NonNull
    public static y3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.blank, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ViewStub getRoot() {
        return this.f26773a;
    }
}
