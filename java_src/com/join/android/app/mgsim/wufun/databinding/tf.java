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
/* compiled from: ForumStrategyTagGridBinding.java */
/* loaded from: classes3.dex */
public final class tf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25226a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25227b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f25228c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f25229d;

    private tf(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull LinearLayout linearLayout3) {
        this.f25226a = linearLayout;
        this.f25227b = linearLayout2;
        this.f25228c = view;
        this.f25229d = linearLayout3;
    }

    @NonNull
    public static tf a(@NonNull View view) {
        int i2 = R.id.group;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.group);
        if (linearLayout != null) {
            i2 = R.id.line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
            if (findChildViewById != null) {
                LinearLayout linearLayout2 = (LinearLayout) view;
                return new tf(linearLayout2, linearLayout, findChildViewById, linearLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.forum_strategy_tag_grid, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25226a;
    }
}
