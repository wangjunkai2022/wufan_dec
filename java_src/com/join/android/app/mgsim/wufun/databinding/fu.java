package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutRankingTitleBinding.java */
/* loaded from: classes3.dex */
public final class fu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20225a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f20226b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20227c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f20228d;

    private fu(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout) {
        this.f20225a = linearLayout;
        this.f20226b = view;
        this.f20227c = textView;
        this.f20228d = relativeLayout;
    }

    @NonNull
    public static fu a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.ranking_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ranking_title);
            if (textView != null) {
                i2 = R.id.ranking_title_right_rl;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.ranking_title_right_rl);
                if (relativeLayout != null) {
                    return new fu((LinearLayout) view, findChildViewById, textView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_ranking_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20225a;
    }
}
