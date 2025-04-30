package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
/* compiled from: MgForumAllFragmentBinding.java */
/* loaded from: classes3.dex */
public final class gx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20599a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f20600b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ForumLoadingView f20601c;

    private gx(@NonNull RelativeLayout relativeLayout, @NonNull XListView2 xListView2, @NonNull ForumLoadingView forumLoadingView) {
        this.f20599a = relativeLayout;
        this.f20600b = xListView2;
        this.f20601c = forumLoadingView;
    }

    @NonNull
    public static gx a(@NonNull View view) {
        int i2 = R.id.forum_posts_list;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.forum_posts_list);
        if (xListView2 != null) {
            i2 = R.id.loadingView;
            ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
            if (forumLoadingView != null) {
                return new gx((RelativeLayout) view, xListView2, forumLoadingView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_all_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20599a;
    }
}
