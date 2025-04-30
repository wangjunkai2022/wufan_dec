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
import com.join.mgps.customview.WrapContentGridView;
/* compiled from: ForumPostsActivityFunctions1Binding.java */
/* loaded from: classes3.dex */
public final class of implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23257a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final WrapContentGridView f23258b;

    private of(@NonNull LinearLayout linearLayout, @NonNull WrapContentGridView wrapContentGridView) {
        this.f23257a = linearLayout;
        this.f23258b = wrapContentGridView;
    }

    @NonNull
    public static of a(@NonNull View view) {
        WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(view, R.id.gridView);
        if (wrapContentGridView != null) {
            return new of((LinearLayout) view, wrapContentGridView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.gridView)));
    }

    @NonNull
    public static of c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static of d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.forum_posts_activity_functions1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23257a;
    }
}
