package com.join.mgps.customview;

import androidx.viewpager.widget.ViewPager;
/* compiled from: PageIndicator.java */
/* loaded from: classes3.dex */
public interface f0 extends ViewPager.OnPageChangeListener {
    void notifyDataSetChanged();

    void setCurrentItem(int i2);

    void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener);

    void setViewPager(ViewPager viewPager);

    void setViewPager(ViewPager viewPager, int i2);
}
