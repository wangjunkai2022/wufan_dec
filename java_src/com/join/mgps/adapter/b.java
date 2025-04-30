package com.join.mgps.adapter;

import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import com.join.mgps.dto.GameDiscoverBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CardPagerAdapter.java */
/* loaded from: classes3.dex */
public class b extends FragmentStatePagerAdapter {

    /* renamed from: j  reason: collision with root package name */
    private List<GameDiscoverBean> f41273j;

    /* renamed from: k  reason: collision with root package name */
    private List<Fragment> f41274k;

    public b(FragmentManager fragmentManager, List<GameDiscoverBean> list) {
        super(fragmentManager);
        this.f41274k = new ArrayList();
        for (GameDiscoverBean gameDiscoverBean : list) {
            gameDiscoverBean.set_from(105);
            com.join.mgps.fragment.e O = com.join.mgps.fragment.e.O(gameDiscoverBean);
            O.R(gameDiscoverBean);
            this.f41274k.add(O);
        }
        this.f41273j = list;
    }

    public void b(List<GameDiscoverBean> list) {
        ArrayList arrayList = new ArrayList();
        for (GameDiscoverBean gameDiscoverBean : list) {
            arrayList.add(com.join.mgps.fragment.e.O(gameDiscoverBean));
        }
        if (this.f41274k == null) {
            this.f41274k = new ArrayList();
        }
        this.f41274k.addAll(arrayList);
        this.f41273j.addAll(list);
    }

    public List<GameDiscoverBean> c() {
        return this.f41273j;
    }

    public List<Fragment> d() {
        return this.f41274k;
    }

    public void e(List<GameDiscoverBean> list) {
        ArrayList arrayList = new ArrayList();
        for (GameDiscoverBean gameDiscoverBean : list) {
            arrayList.add(com.join.mgps.fragment.e.O(gameDiscoverBean));
        }
        this.f41274k = arrayList;
        this.f41273j = list;
    }

    public void f(List<Fragment> list) {
        this.f41274k = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f41274k.size();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public Fragment getItem(int i2) {
        return this.f41274k.get(i2);
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    @Nullable
    public Parcelable saveState() {
        return null;
    }
}
