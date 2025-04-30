package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumPostActivityItemPostMessage1Binding.java */
/* loaded from: classes3.dex */
public final class az implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18326a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StaticLayoutView f18327b;

    private az(@NonNull LinearLayout linearLayout, @NonNull StaticLayoutView staticLayoutView) {
        this.f18326a = linearLayout;
        this.f18327b = staticLayoutView;
    }

    @NonNull
    public static az a(@NonNull View view) {
        StaticLayoutView staticLayoutView = (StaticLayoutView) ViewBindings.findChildViewById(view, R.id.forum_post_message);
        if (staticLayoutView != null) {
            return new az((LinearLayout) view, staticLayoutView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.forum_post_message)));
    }

    @NonNull
    public static az c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static az d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_message1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18326a;
    }
}
