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
import com.join.mgps.customview.XExpandableListView;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: ActivityForumMyBinding.java */
/* loaded from: classes3.dex */
public final class a0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f17933a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f17934b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XExpandableListView f17935c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ForumLoadingView f17936d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final PtrClassicFrameLayout f17937e;

    private a0(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull XExpandableListView xExpandableListView, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f17933a = linearLayout;
        this.f17934b = j00Var;
        this.f17935c = xExpandableListView;
        this.f17936d = forumLoadingView;
        this.f17937e = ptrClassicFrameLayout;
    }

    @NonNull
    public static a0 a(@NonNull View view) {
        int i2 = R.id.actionBar;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionBar);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.expandableListView;
            XExpandableListView xExpandableListView = (XExpandableListView) ViewBindings.findChildViewById(view, R.id.expandableListView);
            if (xExpandableListView != null) {
                i2 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                if (forumLoadingView != null) {
                    i2 = R.id.mPtrFrame;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                    if (ptrClassicFrameLayout != null) {
                        return new a0((LinearLayout) view, a4, xExpandableListView, forumLoadingView, ptrClassicFrameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static a0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_forum_my, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f17933a;
    }
}
