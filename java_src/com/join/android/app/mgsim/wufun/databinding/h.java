package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;
/* compiled from: ActivityArenaGamelistFragmentBinding.java */
/* loaded from: classes3.dex */
public final class h implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20613a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f20614b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f20615c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XRecyclerView f20616d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TabPageIndicator f20617e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ViewPager f20618f;

    private h(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull XRecyclerView xRecyclerView, @NonNull TabPageIndicator tabPageIndicator, @NonNull ViewPager viewPager) {
        this.f20613a = linearLayout;
        this.f20614b = relativeLayout;
        this.f20615c = view;
        this.f20616d = xRecyclerView;
        this.f20617e = tabPageIndicator;
        this.f20618f = viewPager;
    }

    @NonNull
    public static h a(@NonNull View view) {
        int i2 = R.id.layout_others_list;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout_others_list);
        if (relativeLayout != null) {
            i2 = R.id.line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
            if (findChildViewById != null) {
                i2 = R.id.listview;
                XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.listview);
                if (xRecyclerView != null) {
                    i2 = R.id.pageIndicator;
                    TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(view, R.id.pageIndicator);
                    if (tabPageIndicator != null) {
                        i2 = R.id.viewPager;
                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                        if (viewPager != null) {
                            return new h((LinearLayout) view, relativeLayout, findChildViewById, xRecyclerView, tabPageIndicator, viewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static h c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_arena_gamelist_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20613a;
    }
}
