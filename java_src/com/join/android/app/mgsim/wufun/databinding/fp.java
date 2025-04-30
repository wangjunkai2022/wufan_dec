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
/* compiled from: IntroductionCommentBottomPopwinBinding.java */
/* loaded from: classes3.dex */
public final class fp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20209a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20210b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20211c;

    private fp(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f20209a = linearLayout;
        this.f20210b = textView;
        this.f20211c = textView2;
    }

    @NonNull
    public static fp a(@NonNull View view) {
        int i2 = R.id.tv_pop_open_web;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pop_open_web);
        if (textView != null) {
            i2 = R.id.tv_pop_report;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pop_report);
            if (textView2 != null) {
                return new fp((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.introduction_comment_bottom_popwin, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20209a;
    }
}
