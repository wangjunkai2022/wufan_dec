package com.join.mgps.customview;

import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.fragment.app.FragmentTransaction;
import java.util.ArrayList;
import java.util.List;
/* compiled from: NavigationAdapterV2.java */
/* loaded from: classes3.dex */
public class e0 extends FragmentStatePagerAdapter {

    /* renamed from: j  reason: collision with root package name */
    private List<String> f46834j;

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<Fragment> f46835k;

    /* renamed from: l  reason: collision with root package name */
    private FragmentManager f46836l;

    public e0(FragmentManager fragmentManager, ArrayList<Fragment> arrayList, List<String> list) {
        super(fragmentManager);
        this.f46834j = new ArrayList(0);
        this.f46835k = new ArrayList<>(0);
        this.f46836l = fragmentManager;
        d(arrayList, list);
    }

    public Fragment b(int i2) {
        return this.f46835k.get(i2);
    }

    public ArrayList<Fragment> c() {
        return this.f46835k;
    }

    public void d(List<Fragment> list, List<String> list2) {
        if (list == null) {
            return;
        }
        this.f46835k.clear();
        this.f46835k.addAll(list);
        if (list2 == null) {
            return;
        }
        this.f46834j.clear();
        this.f46834j.addAll(list2);
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    public void destroyItem(@NonNull ViewGroup viewGroup, int i2, @NonNull Object obj) {
        viewGroup.removeView(this.f46835k.get(i2).getView());
    }

    public void e(List<String> list) {
        if (list == null) {
            return;
        }
        this.f46834j.clear();
        this.f46834j.addAll(list);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f46834j.size();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public Fragment getItem(int i2) {
        return this.f46835k.get(i2);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i2) {
        return this.f46834j.get(i2);
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i2) {
        Fragment fragment = this.f46835k.get(i2);
        if (!fragment.isAdded()) {
            FragmentTransaction beginTransaction = this.f46836l.beginTransaction();
            beginTransaction.add(fragment, fragment.getClass().getSimpleName());
            beginTransaction.commitAllowingStateLoss();
            this.f46836l.executePendingTransactions();
        }
        if (fragment.getView().getParent() == null) {
            viewGroup.addView(fragment.getView());
        }
        return fragment.getView();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return null;
    }
}
