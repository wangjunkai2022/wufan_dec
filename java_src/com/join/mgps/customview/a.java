package com.join.mgps.customview;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.viewpager.widget.PagerAdapter;
import com.join.mgps.customview.CarouselViewPager2;
/* compiled from: CarouselPagerAdapter2.java */
/* loaded from: classes3.dex */
public abstract class a<V extends CarouselViewPager2> extends PagerAdapter {

    /* renamed from: b  reason: collision with root package name */
    private static final int f46757b = 10;

    /* renamed from: a  reason: collision with root package name */
    private V f46758a;

    public a(V v3) {
        this.f46758a = v3;
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
        int currentItem = this.f46758a.getCurrentItem();
        if (currentItem == 0) {
            this.f46758a.setCurrentItem(b(), false);
        } else if (currentItem == getCount() - 1) {
            this.f46758a.setCurrentItem(b() - 1, false);
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
