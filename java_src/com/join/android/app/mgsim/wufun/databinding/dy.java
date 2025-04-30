package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumGroupMemberSectionTitleBinding.java */
/* loaded from: classes3.dex */
public final class dy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19526a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19527b;

    private dy(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f19526a = linearLayout;
        this.f19527b = textView;
    }

    @NonNull
    public static dy a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
        if (textView != null) {
            return new dy((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.title)));
    }

    @NonNull
    public static dy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_group_member_section_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19526a;
    }
}
