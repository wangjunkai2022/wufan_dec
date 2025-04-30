package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayout;
/* compiled from: MyGameLayoutBinding.java */
/* loaded from: classes3.dex */
public final class u40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25403a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f25404b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25405c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SlidingTabLayout f25406d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final MViewpagerV4 f25407e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final oc0 f25408f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f25409g;

    private u40(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull SlidingTabLayout slidingTabLayout, @NonNull MViewpagerV4 mViewpagerV4, @NonNull oc0 oc0Var, @NonNull View view2) {
        this.f25403a = relativeLayout;
        this.f25404b = view;
        this.f25405c = linearLayout;
        this.f25406d = slidingTabLayout;
        this.f25407e = mViewpagerV4;
        this.f25408f = oc0Var;
        this.f25409g = view2;
    }

    @NonNull
    public static u40 a(@NonNull View view) {
        int i2 = R.id.lineTop;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineTop);
        if (findChildViewById != null) {
            i2 = R.id.linearLayoutMain;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayoutMain);
            if (linearLayout != null) {
                i2 = R.id.mSlidingTabLayout;
                SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(view, R.id.mSlidingTabLayout);
                if (slidingTabLayout != null) {
                    i2 = R.id.mViewpagerV4;
                    MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(view, R.id.mViewpagerV4);
                    if (mViewpagerV4 != null) {
                        i2 = R.id.title_bar_layout;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                        if (findChildViewById2 != null) {
                            oc0 a4 = oc0.a(findChildViewById2);
                            i2 = R.id.viewBg;
                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.viewBg);
                            if (findChildViewById3 != null) {
                                return new u40((RelativeLayout) view, findChildViewById, linearLayout, slidingTabLayout, mViewpagerV4, a4, findChildViewById3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_game_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25403a;
    }
}
