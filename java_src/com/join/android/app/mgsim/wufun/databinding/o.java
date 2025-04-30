package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: ActivityCommentSelfListV2Binding.java */
/* loaded from: classes3.dex */
public final class o implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23031a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f23032b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f23033c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ForumLoadingView f23034d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final PtrClassicFrameLayout f23035e;

    private o(@NonNull RelativeLayout relativeLayout, @NonNull j00 j00Var, @NonNull XListView2 xListView2, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f23031a = relativeLayout;
        this.f23032b = j00Var;
        this.f23033c = xListView2;
        this.f23034d = forumLoadingView;
        this.f23035e = ptrClassicFrameLayout;
    }

    @NonNull
    public static o a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
            if (xListView2 != null) {
                i2 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                if (forumLoadingView != null) {
                    i2 = R.id.mPtrFrame;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                    if (ptrClassicFrameLayout != null) {
                        return new o((RelativeLayout) view, a4, xListView2, forumLoadingView, ptrClassicFrameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static o c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_comment_self_list_v2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23031a;
    }
}
