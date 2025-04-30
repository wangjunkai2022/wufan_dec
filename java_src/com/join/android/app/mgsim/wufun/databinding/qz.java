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
/* compiled from: MgForumProfileMessageActivityBinding.java */
/* loaded from: classes3.dex */
public final class qz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24111a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ForumLoadingView f24112b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f24113c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f24114d;

    private qz(@NonNull LinearLayout linearLayout, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XListView2 xListView2) {
        this.f24111a = linearLayout;
        this.f24112b = forumLoadingView;
        this.f24113c = ptrClassicFrameLayout;
        this.f24114d = xListView2;
    }

    @NonNull
    public static qz a(@NonNull View view) {
        int i2 = R.id.loadingView;
        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
        if (forumLoadingView != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.mg_forum_profile_message_list;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.mg_forum_profile_message_list);
                if (xListView2 != null) {
                    return new qz((LinearLayout) view, forumLoadingView, ptrClassicFrameLayout, xListView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_message_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24111a;
    }
}
