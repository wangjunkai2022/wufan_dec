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
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: MgForumGroupMemberActivityBinding.java */
/* loaded from: classes3.dex */
public final class by implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18665a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f18666b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f18667c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ForumLoadingView f18668d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final PtrClassicFrameLayout f18669e;

    private by(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull XListView2 xListView2, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f18665a = linearLayout;
        this.f18666b = j00Var;
        this.f18667c = xListView2;
        this.f18668d = forumLoadingView;
        this.f18669e = ptrClassicFrameLayout;
    }

    @NonNull
    public static by a(@NonNull View view) {
        int i2 = R.id.actionBar;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionBar);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.listView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView);
            if (xListView2 != null) {
                i2 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                if (forumLoadingView != null) {
                    i2 = R.id.mPtrFrame;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                    if (ptrClassicFrameLayout != null) {
                        return new by((LinearLayout) view, a4, xListView2, forumLoadingView, ptrClassicFrameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static by c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static by d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_group_member_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18665a;
    }
}
