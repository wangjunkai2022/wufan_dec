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
import com.join.mgps.customview.MViewpagerV4;
/* compiled from: FragmentFightLayoutBinding.java */
/* loaded from: classes3.dex */
public final class kg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21849a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21850b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MViewpagerV4 f21851c;

    private kg(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull MViewpagerV4 mViewpagerV4) {
        this.f21849a = linearLayout;
        this.f21850b = linearLayout2;
        this.f21851c = mViewpagerV4;
    }

    @NonNull
    public static kg a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(view, R.id.mViewpagerV4);
        if (mViewpagerV4 != null) {
            return new kg(linearLayout, linearLayout, mViewpagerV4);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.mViewpagerV4)));
    }

    @NonNull
    public static kg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_fight_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21849a;
    }
}
