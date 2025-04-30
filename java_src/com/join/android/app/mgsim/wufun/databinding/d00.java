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
import com.join.mgps.customview.EllipseTextView;
/* compiled from: MgForumSearchItemPostMessageBinding.java */
/* loaded from: classes3.dex */
public final class d00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19143a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final EllipseTextView f19144b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f19145c;

    private d00(@NonNull LinearLayout linearLayout, @NonNull EllipseTextView ellipseTextView, @NonNull LinearLayout linearLayout2) {
        this.f19143a = linearLayout;
        this.f19144b = ellipseTextView;
        this.f19145c = linearLayout2;
    }

    @NonNull
    public static d00 a(@NonNull View view) {
        EllipseTextView ellipseTextView = (EllipseTextView) ViewBindings.findChildViewById(view, R.id.forum_post_message);
        if (ellipseTextView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            return new d00(linearLayout, ellipseTextView, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.forum_post_message)));
    }

    @NonNull
    public static d00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_search_item_post_message, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19143a;
    }
}
