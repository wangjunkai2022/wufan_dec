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
/* compiled from: MgForumSearchItemFavoriteTopAreaBinding.java */
/* loaded from: classes3.dex */
public final class b00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f18339a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18340b;

    private b00(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView) {
        this.f18339a = constraintLayout;
        this.f18340b = textView;
    }

    @NonNull
    public static b00 a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
        if (textView != null) {
            return new b00((ConstraintLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.title)));
    }

    @NonNull
    public static b00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_search_item_favorite_top_area, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f18339a;
    }
}
