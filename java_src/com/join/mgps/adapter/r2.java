package com.join.mgps.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import java.util.List;
/* compiled from: LodingViewPagerAdapter.java */
/* loaded from: classes3.dex */
public class r2 extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<View> f43849a;

    public r2() {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<View> list = this.f43849a;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f43849a.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i2) {
        viewGroup.addView(this.f43849a.get(i2));
        return this.f43849a.get(i2);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public r2(List<View> list) {
        this.f43849a = list;
    }
}
