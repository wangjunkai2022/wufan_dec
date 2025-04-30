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
import com.join.mgps.customview.SlidingTabForumLayout;
/* compiled from: MgForumForumActivityItemTabBinding.java */
/* loaded from: classes3.dex */
public final class nx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23010a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SlidingTabForumLayout f23011b;

    private nx(@NonNull LinearLayout linearLayout, @NonNull SlidingTabForumLayout slidingTabForumLayout) {
        this.f23010a = linearLayout;
        this.f23011b = slidingTabForumLayout;
    }

    @NonNull
    public static nx a(@NonNull View view) {
        SlidingTabForumLayout slidingTabForumLayout = (SlidingTabForumLayout) ViewBindings.findChildViewById(view, R.id.tabs);
        if (slidingTabForumLayout != null) {
            return new nx((LinearLayout) view, slidingTabForumLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tabs)));
    }

    @NonNull
    public static nx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_activity_item_tab, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23010a;
    }
}
