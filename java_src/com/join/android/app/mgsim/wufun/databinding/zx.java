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
import com.join.mgps.customview.XListView;
/* compiled from: MgForumForumTopicActivityBinding.java */
/* loaded from: classes3.dex */
public final class zx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27340a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f27341b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f27342c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView f27343d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ForumLoadingView f27344e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final FrameLayout f27345f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final jd0 f27346g;

    private zx(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull View view, @NonNull XListView xListView, @NonNull ForumLoadingView forumLoadingView, @NonNull FrameLayout frameLayout, @NonNull jd0 jd0Var) {
        this.f27340a = linearLayout;
        this.f27341b = j00Var;
        this.f27342c = view;
        this.f27343d = xListView;
        this.f27344e = forumLoadingView;
        this.f27345f = frameLayout;
        this.f27346g = jd0Var;
    }

    @NonNull
    public static zx a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.bottom;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.bottom);
            if (findChildViewById2 != null) {
                i2 = R.id.listView;
                XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.listView);
                if (xListView != null) {
                    i2 = R.id.loadingView;
                    ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                    if (forumLoadingView != null) {
                        i2 = R.id.videoContainer;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContainer);
                        if (frameLayout != null) {
                            i2 = R.id.videoLayout;
                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.videoLayout);
                            if (findChildViewById3 != null) {
                                return new zx((LinearLayout) view, a4, findChildViewById2, xListView, forumLoadingView, frameLayout, jd0.a(findChildViewById3));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_topic_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27340a;
    }
}
