package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.BtReginSlidinTablayout;
import java.util.List;
/* compiled from: BtViewpagerLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class o4 extends ViewDataBinding {
    @NonNull
    public final BtReginSlidinTablayout E;
    @NonNull
    public final ViewPager F;
    @Bindable
    protected FragmentManager G;
    @Bindable
    protected List<String> H;
    @Bindable
    protected List<Fragment> I;
    @Bindable
    protected ViewPager J;

    /* JADX INFO: Access modifiers changed from: protected */
    public o4(Object obj, View view, int i2, BtReginSlidinTablayout btReginSlidinTablayout, ViewPager viewPager) {
        super(obj, view, i2);
        this.E = btReginSlidinTablayout;
        this.F = viewPager;
    }

    public static o4 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static o4 a1(@NonNull View view, @Nullable Object obj) {
        return (o4) ViewDataBinding.h(obj, view, R.layout.bt_viewpager_layout);
    }

    @NonNull
    public static o4 f1(@NonNull LayoutInflater layoutInflater) {
        return i1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static o4 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return h1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static o4 h1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (o4) ViewDataBinding.Q(layoutInflater, R.layout.bt_viewpager_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static o4 i1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (o4) ViewDataBinding.Q(layoutInflater, R.layout.bt_viewpager_layout, null, false, obj);
    }

    @Nullable
    public FragmentManager b1() {
        return this.G;
    }

    @Nullable
    public List<Fragment> c1() {
        return this.I;
    }

    @Nullable
    public List<String> d1() {
        return this.H;
    }

    @Nullable
    public ViewPager e1() {
        return this.J;
    }

    public abstract void j1(@Nullable FragmentManager fragmentManager);

    public abstract void k1(@Nullable List<Fragment> list);

    public abstract void l1(@Nullable List<String> list);

    public abstract void m1(@Nullable ViewPager viewPager);
}
