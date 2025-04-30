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
/* compiled from: ActivityForumMyPostBinding.java */
/* loaded from: classes3.dex */
public final class b0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18335a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ForumLoadingView f18336b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f18337c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f18338d;

    private b0(@NonNull LinearLayout linearLayout, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XListView2 xListView2) {
        this.f18335a = linearLayout;
        this.f18336b = forumLoadingView;
        this.f18337c = ptrClassicFrameLayout;
        this.f18338d = xListView2;
    }

    @NonNull
    public static b0 a(@NonNull View view) {
        int i2 = R.id.loadingView;
        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
        if (forumLoadingView != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.mg_forum_profile_comment_list;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.mg_forum_profile_comment_list);
                if (xListView2 != null) {
                    return new b0((LinearLayout) view, forumLoadingView, ptrClassicFrameLayout, xListView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static b0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_forum_my_post, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18335a;
    }
}
