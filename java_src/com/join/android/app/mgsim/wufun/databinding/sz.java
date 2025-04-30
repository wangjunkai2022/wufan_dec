package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView;
/* compiled from: MgForumProfileMessageReplyActivityBinding.java */
/* loaded from: classes3.dex */
public final class sz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final KeyboardListenLayout f24999a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final oo f25000b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final j00 f25001c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ForumLoadingView f25002d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final XListView f25003e;

    private sz(@NonNull KeyboardListenLayout keyboardListenLayout, @NonNull oo ooVar, @NonNull j00 j00Var, @NonNull ForumLoadingView forumLoadingView, @NonNull XListView xListView) {
        this.f24999a = keyboardListenLayout;
        this.f25000b = ooVar;
        this.f25001c = j00Var;
        this.f25002d = forumLoadingView;
        this.f25003e = xListView;
    }

    @NonNull
    public static sz a(@NonNull View view) {
        int i2 = R.id.layout_chat_cell_container;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.layout_chat_cell_container);
        if (findChildViewById != null) {
            oo a4 = oo.a(findChildViewById);
            i2 = R.id.layout_forum_posts_title;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.layout_forum_posts_title);
            if (findChildViewById2 != null) {
                j00 a5 = j00.a(findChildViewById2);
                i2 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                if (forumLoadingView != null) {
                    i2 = R.id.mg_forum_profile_message_list;
                    XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.mg_forum_profile_message_list);
                    if (xListView != null) {
                        return new sz((KeyboardListenLayout) view, a4, a5, forumLoadingView, xListView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_message_reply_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public KeyboardListenLayout getRoot() {
        return this.f24999a;
    }
}
