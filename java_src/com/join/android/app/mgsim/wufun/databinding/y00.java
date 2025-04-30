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
/* compiled from: MgForumWelcomeItemPostSubjectBinding.java */
/* loaded from: classes3.dex */
public final class y00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26738a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f26739b;

    private y00(@NonNull LinearLayout linearLayout, @NonNull View view) {
        this.f26738a = linearLayout;
        this.f26739b = view;
    }

    @NonNull
    public static y00 a(@NonNull View view) {
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.forum_post_divider);
        if (findChildViewById != null) {
            return new y00((LinearLayout) view, findChildViewById);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.forum_post_divider)));
    }

    @NonNull
    public static y00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_welcome_item_post_subject, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26738a;
    }
}
