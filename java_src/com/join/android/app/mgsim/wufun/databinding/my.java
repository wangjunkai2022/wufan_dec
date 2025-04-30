package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView4ForumPost;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: MgForumPostActivityBinding.java */
/* loaded from: classes3.dex */
public final class my implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final KeyboardListenLayout f22634a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f22635b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f22636c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final oo f22637d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ForumLoadingView f22638e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final PtrClassicFrameLayout f22639f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final XListView4ForumPost f22640g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final FrameLayout f22641h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final jd0 f22642i;

    private my(@NonNull KeyboardListenLayout keyboardListenLayout, @NonNull j00 j00Var, @NonNull View view, @NonNull oo ooVar, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XListView4ForumPost xListView4ForumPost, @NonNull FrameLayout frameLayout, @NonNull jd0 jd0Var) {
        this.f22634a = keyboardListenLayout;
        this.f22635b = j00Var;
        this.f22636c = view;
        this.f22637d = ooVar;
        this.f22638e = forumLoadingView;
        this.f22639f = ptrClassicFrameLayout;
        this.f22640g = xListView4ForumPost;
        this.f22641h = frameLayout;
        this.f22642i = jd0Var;
    }

    @NonNull
    public static my a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.bottom;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.bottom);
            if (findChildViewById2 != null) {
                i2 = R.id.layout_chat_cell_container;
                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.layout_chat_cell_container);
                if (findChildViewById3 != null) {
                    oo a5 = oo.a(findChildViewById3);
                    i2 = R.id.loadingView;
                    ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                    if (forumLoadingView != null) {
                        i2 = R.id.mPtrFrame;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                        if (ptrClassicFrameLayout != null) {
                            i2 = R.id.mg_forum_post_comment_list;
                            XListView4ForumPost xListView4ForumPost = (XListView4ForumPost) ViewBindings.findChildViewById(view, R.id.mg_forum_post_comment_list);
                            if (xListView4ForumPost != null) {
                                i2 = R.id.videoContainer;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContainer);
                                if (frameLayout != null) {
                                    i2 = R.id.videoLayout;
                                    View findChildViewById4 = ViewBindings.findChildViewById(view, R.id.videoLayout);
                                    if (findChildViewById4 != null) {
                                        return new my((KeyboardListenLayout) view, a4, findChildViewById2, a5, forumLoadingView, ptrClassicFrameLayout, xListView4ForumPost, frameLayout, jd0.a(findChildViewById4));
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
    public static my c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static my d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public KeyboardListenLayout getRoot() {
        return this.f22634a;
    }
}
