package com.join.mgps.adapter;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.fragment.app.FragmentTransaction;
import java.util.List;
/* compiled from: FragmentPagerAdapter.java */
/* loaded from: classes3.dex */
public class x extends FragmentPagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    FragmentManager f44489a;

    /* renamed from: b  reason: collision with root package name */
    private List<a> f44490b;

    /* compiled from: FragmentPagerAdapter.java */
    /* loaded from: classes3.dex */
    public interface b {
        Fragment a();
    }

    public x(FragmentManager fragmentManager) {
        super(fragmentManager);
        this.f44489a = fragmentManager;
    }

    public void b() {
        FragmentManager fragmentManager = this.f44489a;
        if (fragmentManager == null) {
            return;
        }
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        for (int i2 = 0; i2 < getCount(); i2++) {
            beginTransaction.detach(getItem(i2));
        }
        if (c() != null) {
            c().clear();
            notifyDataSetChanged();
        }
    }

    public List<a> c() {
        return this.f44490b;
    }

    public void d(List<a> list) {
        this.f44490b = list;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        super.destroyItem(viewGroup, i2, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<a> list = this.f44490b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i2) {
        return this.f44490b.get(i2).f44493c;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public long getItemId(int i2) {
        return super.getItemId(i2);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i2) {
        return this.f44490b.get(i2).f44491a;
    }

    /* compiled from: FragmentPagerAdapter.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f44491a;

        /* renamed from: b  reason: collision with root package name */
        b f44492b;

        /* renamed from: c  reason: collision with root package name */
        public Fragment f44493c;

        public a(String str, b bVar) {
            this.f44491a = str;
            this.f44492b = bVar;
        }

        public a(String str, Fragment fragment) {
            this.f44491a = str;
            this.f44493c = fragment;
        }
    }

    public x(FragmentManager fragmentManager, List<a> list) {
        super(fragmentManager);
        this.f44489a = fragmentManager;
        this.f44490b = list;
    }
}
