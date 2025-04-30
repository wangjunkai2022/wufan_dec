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
import com.join.mgps.customview.XListView;
/* compiled from: MgForumForumTMemberFragmentBinding.java */
/* loaded from: classes3.dex */
public final class sx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24994a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView f24995b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ForumLoadingView f24996c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f24997d;

    private sx(@NonNull RelativeLayout relativeLayout, @NonNull XListView xListView, @NonNull ForumLoadingView forumLoadingView, @NonNull View view) {
        this.f24994a = relativeLayout;
        this.f24995b = xListView;
        this.f24996c = forumLoadingView;
        this.f24997d = view;
    }

    @NonNull
    public static sx a(@NonNull View view) {
        int i2 = R.id.listView;
        XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.listView);
        if (xListView != null) {
            i2 = R.id.loadingView;
            ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
            if (forumLoadingView != null) {
                i2 = R.id.requestLayout;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.requestLayout);
                if (findChildViewById != null) {
                    return new sx((RelativeLayout) view, xListView, forumLoadingView, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_t_member_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24994a;
    }
}
