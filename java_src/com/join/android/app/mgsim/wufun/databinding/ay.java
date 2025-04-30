package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumGroupHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import ru.noties.scrollable.ScrollableLayout;
/* compiled from: MgForumGroupActivityBinding.java */
/* loaded from: classes3.dex */
public final class ay implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18315a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f18316b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f18317c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f18318d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ForumGroupHeaderView f18319e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ForumLoadingView f18320f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final PtrClassicFrameLayout f18321g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f18322h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ScrollableLayout f18323i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SlidingTabLayout4 f18324j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ViewPager f18325k;

    private ay(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull View view, @NonNull Button button, @NonNull ForumGroupHeaderView forumGroupHeaderView, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull RelativeLayout relativeLayout, @NonNull ScrollableLayout scrollableLayout, @NonNull SlidingTabLayout4 slidingTabLayout4, @NonNull ViewPager viewPager) {
        this.f18315a = linearLayout;
        this.f18316b = j00Var;
        this.f18317c = view;
        this.f18318d = button;
        this.f18319e = forumGroupHeaderView;
        this.f18320f = forumLoadingView;
        this.f18321g = ptrClassicFrameLayout;
        this.f18322h = relativeLayout;
        this.f18323i = scrollableLayout;
        this.f18324j = slidingTabLayout4;
        this.f18325k = viewPager;
    }

    @NonNull
    public static ay a(@NonNull View view) {
        int i2 = R.id.actionBar;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionBar);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.bottom;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.bottom);
            if (findChildViewById2 != null) {
                i2 = R.id.btnSendPosts;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnSendPosts);
                if (button != null) {
                    i2 = R.id.headerView;
                    ForumGroupHeaderView forumGroupHeaderView = (ForumGroupHeaderView) ViewBindings.findChildViewById(view, R.id.headerView);
                    if (forumGroupHeaderView != null) {
                        i2 = R.id.loadingView;
                        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                        if (forumLoadingView != null) {
                            i2 = R.id.mPtrFrame;
                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                            if (ptrClassicFrameLayout != null) {
                                i2 = R.id.rlOrderBy;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlOrderBy);
                                if (relativeLayout != null) {
                                    i2 = R.id.scrollableLayout;
                                    ScrollableLayout scrollableLayout = (ScrollableLayout) ViewBindings.findChildViewById(view, R.id.scrollableLayout);
                                    if (scrollableLayout != null) {
                                        i2 = R.id.tabsLayout;
                                        SlidingTabLayout4 slidingTabLayout4 = (SlidingTabLayout4) ViewBindings.findChildViewById(view, R.id.tabsLayout);
                                        if (slidingTabLayout4 != null) {
                                            i2 = R.id.viewPager;
                                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                                            if (viewPager != null) {
                                                return new ay((LinearLayout) view, a4, findChildViewById2, button, forumGroupHeaderView, forumLoadingView, ptrClassicFrameLayout, relativeLayout, scrollableLayout, slidingTabLayout4, viewPager);
                                            }
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
    public static ay c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ay d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_group_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18315a;
    }
}
