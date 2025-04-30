package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
/* compiled from: ActivityForumPostsTagSelectBinding.java */
/* loaded from: classes3.dex */
public final class c0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18678a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f18679b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f18680c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ForumLoadingView f18681d;

    private c0(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull XListView2 xListView2, @NonNull ForumLoadingView forumLoadingView) {
        this.f18678a = linearLayout;
        this.f18679b = j00Var;
        this.f18680c = xListView2;
        this.f18681d = forumLoadingView;
    }

    @NonNull
    public static c0 a(@NonNull View view) {
        int i2 = R.id.actionBar;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionBar);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView);
            if (xListView2 != null) {
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                if (forumLoadingView != null) {
                    return new c0((LinearLayout) view, a4, xListView2, forumLoadingView);
                }
                i2 = R.id.loadingView;
            } else {
                i2 = R.id.listView;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static c0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_forum_posts_tag_select, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18678a;
    }
}
