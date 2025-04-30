package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle;
import com.join.kotlin.ui.cloudarchive.adapter.MyPagerAdapter;
/* compiled from: ModgameCloudArchiveFragmentBinding.java */
/* loaded from: classes3.dex */
public abstract class z30 extends ViewDataBinding {
    @NonNull
    public final SlidingTabLayout E;
    @NonNull
    public final RelativeLayout F;
    @NonNull
    public final ViewPager G;
    @Bindable
    protected ModGameCloudViewModle H;
    @Bindable
    protected MyPagerAdapter I;

    /* JADX INFO: Access modifiers changed from: protected */
    public z30(Object obj, View view, int i2, SlidingTabLayout slidingTabLayout, RelativeLayout relativeLayout, ViewPager viewPager) {
        super(obj, view, i2);
        this.E = slidingTabLayout;
        this.F = relativeLayout;
        this.G = viewPager;
    }

    public static z30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static z30 a1(@NonNull View view, @Nullable Object obj) {
        return (z30) ViewDataBinding.h(obj, view, R.layout.modgame_cloud_archive_fragment);
    }

    @NonNull
    public static z30 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static z30 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static z30 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (z30) ViewDataBinding.Q(layoutInflater, R.layout.modgame_cloud_archive_fragment, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static z30 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (z30) ViewDataBinding.Q(layoutInflater, R.layout.modgame_cloud_archive_fragment, null, false, obj);
    }

    @Nullable
    public MyPagerAdapter b1() {
        return this.I;
    }

    @Nullable
    public ModGameCloudViewModle c1() {
        return this.H;
    }

    public abstract void h1(@Nullable MyPagerAdapter myPagerAdapter);

    public abstract void i1(@Nullable ModGameCloudViewModle modGameCloudViewModle);
}
