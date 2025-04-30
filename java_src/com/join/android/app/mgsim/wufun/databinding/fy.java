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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumIndexHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import ru.noties.scrollable.ScrollableLayout;
/* compiled from: MgForumIndexFragmentBinding.java */
/* loaded from: classes3.dex */
public final class fy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20244a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20245b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final j00 f20246c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ForumIndexHeaderView f20247d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f20248e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ForumLoadingView f20249f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final PtrClassicFrameLayout f20250g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ScrollableLayout f20251h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SlidingTabLayout4 f20252i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ViewPager f20253j;

    private fy(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull j00 j00Var, @NonNull ForumIndexHeaderView forumIndexHeaderView, @NonNull RelativeLayout relativeLayout2, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull ScrollableLayout scrollableLayout, @NonNull SlidingTabLayout4 slidingTabLayout4, @NonNull ViewPager viewPager) {
        this.f20244a = relativeLayout;
        this.f20245b = textView;
        this.f20246c = j00Var;
        this.f20247d = forumIndexHeaderView;
        this.f20248e = relativeLayout2;
        this.f20249f = forumLoadingView;
        this.f20250g = ptrClassicFrameLayout;
        this.f20251h = scrollableLayout;
        this.f20252i = slidingTabLayout4;
        this.f20253j = viewPager;
    }

    @NonNull
    public static fy a(@NonNull View view) {
        int i2 = R.id.aboutWF;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.aboutWF);
        if (textView != null) {
            i2 = R.id.actionPlaceHolder;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionPlaceHolder);
            if (findChildViewById != null) {
                j00 a4 = j00.a(findChildViewById);
                i2 = R.id.headerView;
                ForumIndexHeaderView forumIndexHeaderView = (ForumIndexHeaderView) ViewBindings.findChildViewById(view, R.id.headerView);
                if (forumIndexHeaderView != null) {
                    i2 = R.id.layout_others;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout_others);
                    if (relativeLayout != null) {
                        i2 = R.id.loadingView;
                        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                        if (forumLoadingView != null) {
                            i2 = R.id.mPtrFrame;
                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                            if (ptrClassicFrameLayout != null) {
                                i2 = R.id.scrollableLayout;
                                ScrollableLayout scrollableLayout = (ScrollableLayout) ViewBindings.findChildViewById(view, R.id.scrollableLayout);
                                if (scrollableLayout != null) {
                                    i2 = R.id.tabsLayout;
                                    SlidingTabLayout4 slidingTabLayout4 = (SlidingTabLayout4) ViewBindings.findChildViewById(view, R.id.tabsLayout);
                                    if (slidingTabLayout4 != null) {
                                        i2 = R.id.viewPager;
                                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                                        if (viewPager != null) {
                                            return new fy((RelativeLayout) view, textView, a4, forumIndexHeaderView, relativeLayout, forumLoadingView, ptrClassicFrameLayout, scrollableLayout, slidingTabLayout4, viewPager);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_index_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20244a;
    }
}
