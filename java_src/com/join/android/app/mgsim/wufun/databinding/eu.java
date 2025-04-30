package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutRankingMoreBinding.java */
/* loaded from: classes3.dex */
public final class eu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19898a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f19899b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f19900c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19901d;

    private eu(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.f19898a = relativeLayout;
        this.f19899b = view;
        this.f19900c = relativeLayout2;
        this.f19901d = textView;
    }

    @NonNull
    public static eu a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ranking_more);
            if (textView != null) {
                return new eu(relativeLayout, findChildViewById, relativeLayout, textView);
            }
            i2 = R.id.ranking_more;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static eu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static eu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_ranking_more, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19898a;
    }
}
