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
/* compiled from: MgForumProfileCommentActivityBinding.java */
/* loaded from: classes3.dex */
public final class lz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22245a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ForumLoadingView f22246b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f22247c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f22248d;

    private lz(@NonNull LinearLayout linearLayout, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XListView2 xListView2) {
        this.f22245a = linearLayout;
        this.f22246b = forumLoadingView;
        this.f22247c = ptrClassicFrameLayout;
        this.f22248d = xListView2;
    }

    @NonNull
    public static lz a(@NonNull View view) {
        int i2 = R.id.loadingView;
        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
        if (forumLoadingView != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.mg_forum_profile_comment_list;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.mg_forum_profile_comment_list);
                if (xListView2 != null) {
                    return new lz((LinearLayout) view, forumLoadingView, ptrClassicFrameLayout, xListView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_comment_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22245a;
    }
}
