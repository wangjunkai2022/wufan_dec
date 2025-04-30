package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LuckPrizeBaseFilterBottomOperateBinding.java */
/* loaded from: classes3.dex */
public final class fw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20236a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20237b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f20238c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f20239d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final XRecyclerView f20240e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20241f;

    private fw(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull XRecyclerView xRecyclerView, @NonNull TextView textView) {
        this.f20236a = linearLayout;
        this.f20237b = imageView;
        this.f20238c = linearLayout2;
        this.f20239d = linearLayout3;
        this.f20240e = xRecyclerView;
        this.f20241f = textView;
    }

    @NonNull
    public static fw a(@NonNull View view) {
        int i2 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.closed);
        if (imageView != null) {
            i2 = R.id.historyTitle;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.historyTitle);
            if (linearLayout != null) {
                i2 = R.id.nullHistory;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.nullHistory);
                if (linearLayout2 != null) {
                    i2 = R.id.recyclerView;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                    if (xRecyclerView != null) {
                        i2 = R.id.title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView != null) {
                            return new fw((LinearLayout) view, imageView, linearLayout, linearLayout2, xRecyclerView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.luck_prize_base_filter_bottom_operate, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20236a;
    }
}
