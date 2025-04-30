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
import com.join.mgps.customview.InterceptEventViewPager;
import com.join.mgps.customview.TabPageIndicator;
/* compiled from: ActivityPapaStandaloneV2Binding.java */
/* loaded from: classes3.dex */
public final class l1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21988a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f21989b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TabPageIndicator f21990c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final qc0 f21991d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final InterceptEventViewPager f21992e;

    private l1(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TabPageIndicator tabPageIndicator, @NonNull qc0 qc0Var, @NonNull InterceptEventViewPager interceptEventViewPager) {
        this.f21988a = linearLayout;
        this.f21989b = view;
        this.f21990c = tabPageIndicator;
        this.f21991d = qc0Var;
        this.f21992e = interceptEventViewPager;
    }

    @NonNull
    public static l1 a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.pageIndicator;
            TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(view, R.id.pageIndicator);
            if (tabPageIndicator != null) {
                i2 = R.id.title_bar_layout;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                if (findChildViewById2 != null) {
                    qc0 a4 = qc0.a(findChildViewById2);
                    i2 = R.id.viewPager;
                    InterceptEventViewPager interceptEventViewPager = (InterceptEventViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                    if (interceptEventViewPager != null) {
                        return new l1((LinearLayout) view, findChildViewById, tabPageIndicator, a4, interceptEventViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static l1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_papa_standalone_v2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21988a;
    }
}
