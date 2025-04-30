package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: MgForumProfileFavoritesActivityBinding.java */
/* loaded from: classes3.dex */
public final class mz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22643a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f22644b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f22645c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f22646d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ForumLoadingView f22647e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final PtrClassicFrameLayout f22648f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final FrameLayout f22649g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final jd0 f22650h;

    private mz(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull View view, @NonNull XListView2 xListView2, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull FrameLayout frameLayout, @NonNull jd0 jd0Var) {
        this.f22643a = linearLayout;
        this.f22644b = j00Var;
        this.f22645c = view;
        this.f22646d = xListView2;
        this.f22647e = forumLoadingView;
        this.f22648f = ptrClassicFrameLayout;
        this.f22649g = frameLayout;
        this.f22650h = jd0Var;
    }

    @NonNull
    public static mz a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.bottom;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.bottom);
            if (findChildViewById2 != null) {
                i2 = R.id.forum_posts_list;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.forum_posts_list);
                if (xListView2 != null) {
                    i2 = R.id.loadingView;
                    ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                    if (forumLoadingView != null) {
                        i2 = R.id.mPtrFrame;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                        if (ptrClassicFrameLayout != null) {
                            i2 = R.id.videoContainer;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContainer);
                            if (frameLayout != null) {
                                i2 = R.id.videoLayout;
                                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.videoLayout);
                                if (findChildViewById3 != null) {
                                    return new mz((LinearLayout) view, a4, findChildViewById2, xListView2, forumLoadingView, ptrClassicFrameLayout, frameLayout, jd0.a(findChildViewById3));
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
    public static mz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_favorites_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22643a;
    }
}
