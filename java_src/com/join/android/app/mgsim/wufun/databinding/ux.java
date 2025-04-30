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
/* compiled from: MgForumForumTMemberItemHeaderBinding.java */
/* loaded from: classes3.dex */
public final class ux implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25610a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f25611b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25612c;

    private ux(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView) {
        this.f25610a = linearLayout;
        this.f25611b = view;
        this.f25612c = textView;
    }

    @NonNull
    public static ux a(@NonNull View view) {
        int i2 = R.id.dividerTop;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.dividerTop);
        if (findChildViewById != null) {
            i2 = R.id.sectionTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.sectionTitle);
            if (textView != null) {
                return new ux((LinearLayout) view, findChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ux c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ux d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_t_member_item_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25610a;
    }
}
