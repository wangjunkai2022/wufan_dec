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
import com.join.mgps.customview.XListView4NewGame;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: ActivityEverydayNewGameBinding.java */
/* loaded from: classes3.dex */
public final class u implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25345a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final qc0 f25346b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView4NewGame f25347c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ForumLoadingView f25348d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final PtrClassicFrameLayout f25349e;

    private u(@NonNull RelativeLayout relativeLayout, @NonNull qc0 qc0Var, @NonNull XListView4NewGame xListView4NewGame, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f25345a = relativeLayout;
        this.f25346b = qc0Var;
        this.f25347c = xListView4NewGame;
        this.f25348d = forumLoadingView;
        this.f25349e = ptrClassicFrameLayout;
    }

    @NonNull
    public static u a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            qc0 a4 = qc0.a(findChildViewById);
            i2 = R.id.listView;
            XListView4NewGame xListView4NewGame = (XListView4NewGame) ViewBindings.findChildViewById(view, R.id.listView);
            if (xListView4NewGame != null) {
                i2 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                if (forumLoadingView != null) {
                    i2 = R.id.mPtrFrame;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                    if (ptrClassicFrameLayout != null) {
                        return new u((RelativeLayout) view, a4, xListView4NewGame, forumLoadingView, ptrClassicFrameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_everyday_new_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25345a;
    }
}
