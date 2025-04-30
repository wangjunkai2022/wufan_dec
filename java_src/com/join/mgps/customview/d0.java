package com.join.mgps.customview;

import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import java.util.ArrayList;
import java.util.List;
/* compiled from: NavigationAdapter.java */
/* loaded from: classes3.dex */
public class d0 extends FragmentStatePagerAdapter {

    /* renamed from: j  reason: collision with root package name */
    private List<String> f46805j;

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<Fragment> f46806k;

    public d0(FragmentManager fragmentManager, ArrayList<Fragment> arrayList, List<String> list) {
        super(fragmentManager);
        this.f46805j = new ArrayList(0);
        this.f46806k = new ArrayList<>(0);
        d(arrayList, list);
    }

    public Fragment b(int i2) {
        return this.f46806k.get(i2);
    }

    public ArrayList<Fragment> c() {
        return this.f46806k;
    }

    public void d(List<Fragment> list, List<String> list2) {
        if (list == null) {
            return;
        }
        this.f46806k.clear();
        this.f46806k.addAll(list);
        if (list2 == null) {
            return;
        }
        this.f46805j.clear();
        this.f46805j.addAll(list2);
    }

    public void e(List<String> list) {
        if (list == null) {
            return;
        }
        this.f46805j.clear();
        this.f46805j.addAll(list);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f46805j.size();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public Fragment getItem(int i2) {
        return this.f46806k.get(i2);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i2) {
        return this.f46805j.get(i2);
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return null;
    }
}
