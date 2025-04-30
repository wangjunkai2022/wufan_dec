package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityAccountCenterDetialNewBinding.java */
/* loaded from: classes3.dex */
public final class e implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CoordinatorLayout f19532a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppBarLayout f19533b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CoordinatorLayout f19534c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f19535d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19536e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f19537f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f19538g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f19539h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19540i;

    private e(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull CoordinatorLayout coordinatorLayout2, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView2) {
        this.f19532a = coordinatorLayout;
        this.f19533b = appBarLayout;
        this.f19534c = coordinatorLayout2;
        this.f19535d = recyclerView;
        this.f19536e = textView;
        this.f19537f = linearLayout;
        this.f19538g = simpleDraweeView;
        this.f19539h = simpleDraweeView2;
        this.f19540i = textView2;
    }

    @NonNull
    public static e a(@NonNull View view) {
        int i2 = R.id.appBarLayout2;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appBarLayout2);
        if (appBarLayout != null) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view;
            i2 = R.id.recycleView;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycleView);
            if (recyclerView != null) {
                i2 = R.id.tipName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tipName);
                if (textView != null) {
                    i2 = R.id.tipsLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                    if (linearLayout != null) {
                        i2 = R.id.titleImg;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.titleImg);
                        if (simpleDraweeView != null) {
                            i2 = R.id.userIcon;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
                            if (simpleDraweeView2 != null) {
                                i2 = R.id.userName;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                                if (textView2 != null) {
                                    return new e(coordinatorLayout, appBarLayout, coordinatorLayout, recyclerView, textView, linearLayout, simpleDraweeView, simpleDraweeView2, textView2);
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
    public static e c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_account_center_detial_new, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CoordinatorLayout getRoot() {
        return this.f19532a;
    }
}
