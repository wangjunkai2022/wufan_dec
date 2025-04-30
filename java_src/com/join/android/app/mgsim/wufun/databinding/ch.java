package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentModIntroductionBinding.java */
/* loaded from: classes3.dex */
public final class ch implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18909a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18910b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f18911c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18912d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ViewPager f18913e;

    private ch(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull ViewPager viewPager) {
        this.f18909a = relativeLayout;
        this.f18910b = linearLayout;
        this.f18911c = recyclerView;
        this.f18912d = textView;
        this.f18913e = viewPager;
    }

    @NonNull
    public static ch a(@NonNull View view) {
        int i2 = R.id.ll_head;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_head);
        if (linearLayout != null) {
            i2 = R.id.rv_list_type;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list_type);
            if (recyclerView != null) {
                i2 = R.id.tv_draft;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_draft);
                if (textView != null) {
                    i2 = R.id.view_pager;
                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                    if (viewPager != null) {
                        return new ch((RelativeLayout) view, linearLayout, recyclerView, textView, viewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ch c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ch d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_mod_introduction, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18909a;
    }
}
