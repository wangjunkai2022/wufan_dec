package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumSearchItemAllViewMoreBinding.java */
/* loaded from: classes3.dex */
public final class zz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f27354a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f27355b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f27356c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27357d;

    private zz(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull View view, @NonNull TextView textView) {
        this.f27354a = constraintLayout;
        this.f27355b = constraintLayout2;
        this.f27356c = view;
        this.f27357d = textView;
    }

    @NonNull
    public static zz a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i2 = R.id.post_footer_divider;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.post_footer_divider);
        if (findChildViewById != null) {
            i2 = R.id.textView39;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView39);
            if (textView != null) {
                return new zz(constraintLayout, constraintLayout, findChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_search_item_all_view_more, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f27354a;
    }
}
