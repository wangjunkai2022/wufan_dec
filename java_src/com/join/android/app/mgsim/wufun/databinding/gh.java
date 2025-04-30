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
/* compiled from: FragmentMyGameItemFooterBinding.java */
/* loaded from: classes3.dex */
public final class gh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f20452a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20453b;

    private gh(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView) {
        this.f20452a = constraintLayout;
        this.f20453b = textView;
    }

    @NonNull
    public static gh a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            return new gh((ConstraintLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.count)));
    }

    @NonNull
    public static gh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_my_game_item_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f20452a;
    }
}
