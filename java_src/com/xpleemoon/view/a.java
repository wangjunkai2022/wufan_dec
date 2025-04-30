package com.xpleemoon.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.viewpager.widget.PagerAdapter;
import com.xpleemoon.view.CarouselViewPager;
/* compiled from: CarouselPagerAdapter.java */
/* loaded from: classes3.dex */
public abstract class a<V extends CarouselViewPager> extends PagerAdapter {

    /* renamed from: b  reason: collision with root package name */
    private static final int f64796b = 10;

    /* renamed from: a  reason: collision with root package name */
    private V f64797a;

    public a(V v3) {
        this.f64797a = v3;
    }

    @IntRange(from = 0)
    public abstract int b();

    public abstract Object c(ViewGroup viewGroup, int i2);

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void finishUpdate(ViewGroup viewGroup) {
        if (getCount() <= 1) {
            return;
        }
        int currentItem = this.f64797a.getCurrentItem();
        if (currentItem == 0) {
            this.f64797a.setCurrentItem(b(), false);
        } else if (currentItem == getCount() - 1) {
            this.f64797a.setCurrentItem(b() - 1, false);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        long b4 = b();
        if (b4 > 1) {
            b4 = b() * 10;
            if (b4 > 2147483647L) {
                b4 = 2147483647L;
            }
        }
        return (int) b4;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i2) {
        return c(viewGroup, i2 % b());
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
