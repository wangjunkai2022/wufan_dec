package com.join.mgps.customview;

import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.PagerAdapter;
/* compiled from: LoopPagerAdapterWrapper.java */
/* loaded from: classes3.dex */
public class m extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private PagerAdapter f47011a;

    /* renamed from: b  reason: collision with root package name */
    private SparseArray<a> f47012b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    private boolean f47013c;

    /* compiled from: LoopPagerAdapterWrapper.java */
    /* loaded from: classes3.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        ViewGroup f47014a;

        /* renamed from: b  reason: collision with root package name */
        int f47015b;

        /* renamed from: c  reason: collision with root package name */
        Object f47016c;

        public a(ViewGroup viewGroup, int i2, Object obj) {
            this.f47014a = viewGroup;
            this.f47015b = i2;
            this.f47016c = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(PagerAdapter pagerAdapter) {
        this.f47011a = pagerAdapter;
    }

    private int d() {
        return 1;
    }

    private int e() {
        return (d() + c()) - 1;
    }

    public PagerAdapter b() {
        return this.f47011a;
    }

    public int c() {
        return this.f47011a.getCount();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        int d4 = d();
        int e4 = e();
        PagerAdapter pagerAdapter = this.f47011a;
        int h4 = ((pagerAdapter instanceof FragmentPagerAdapter) || (pagerAdapter instanceof FragmentStatePagerAdapter)) ? i2 : h(i2);
        if (this.f47013c && (i2 == d4 || i2 == e4)) {
            this.f47012b.put(i2, new a(viewGroup, h4, obj));
        } else {
            this.f47011a.destroyItem(viewGroup, h4, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(boolean z3) {
        this.f47013c = z3;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        this.f47011a.finishUpdate(viewGroup);
    }

    public int g(int i2) {
        return i2 + 1;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f47011a.getCount() + 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h(int i2) {
        int c4 = c();
        if (c4 == 0) {
            return 0;
        }
        int i4 = (i2 - 1) % c4;
        return i4 < 0 ? i4 + c4 : i4;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i2) {
        a aVar;
        PagerAdapter pagerAdapter = this.f47011a;
        int h4 = ((pagerAdapter instanceof FragmentPagerAdapter) || (pagerAdapter instanceof FragmentStatePagerAdapter)) ? i2 : h(i2);
        if (this.f47013c && (aVar = this.f47012b.get(i2)) != null) {
            this.f47012b.remove(i2);
            return aVar.f47016c;
        }
        return this.f47011a.instantiateItem(viewGroup, h4);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return this.f47011a.isViewFromObject(view, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        this.f47012b = new SparseArray<>();
        super.notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        this.f47011a.restoreState(parcelable, classLoader);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return this.f47011a.saveState();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i2, Object obj) {
        this.f47011a.setPrimaryItem(viewGroup, i2, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
        this.f47011a.startUpdate(viewGroup);
    }
}
