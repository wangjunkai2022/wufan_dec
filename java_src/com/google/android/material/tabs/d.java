package com.google.android.material.tabs;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;
/* compiled from: TabLayoutMediator.java */
/* loaded from: classes2.dex */
public final class d {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TabLayout f15955a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final ViewPager2 f15956b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f15957c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f15958d;

    /* renamed from: e  reason: collision with root package name */
    private final b f15959e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private RecyclerView.Adapter<?> f15960f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f15961g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private c f15962h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private TabLayout.d f15963i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f15964j;

    /* compiled from: TabLayoutMediator.java */
    /* loaded from: classes2.dex */
    private class a extends RecyclerView.AdapterDataObserver {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4) {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i2, int i4) {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i2, int i4, int i5) {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i2, int i4) {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4, @Nullable Object obj) {
            d.this.d();
        }
    }

    /* compiled from: TabLayoutMediator.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(@NonNull TabLayout.g gVar, int i2);
    }

    /* compiled from: TabLayoutMediator.java */
    /* loaded from: classes2.dex */
    private static class c extends ViewPager2.OnPageChangeCallback {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<TabLayout> f15966a;

        /* renamed from: b  reason: collision with root package name */
        private int f15967b;

        /* renamed from: c  reason: collision with root package name */
        private int f15968c;

        c(TabLayout tabLayout) {
            this.f15966a = new WeakReference<>(tabLayout);
            a();
        }

        void a() {
            this.f15968c = 0;
            this.f15967b = 0;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i2) {
            this.f15967b = this.f15968c;
            this.f15968c = i2;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i2, float f4, int i4) {
            TabLayout tabLayout = this.f15966a.get();
            if (tabLayout != null) {
                int i5 = this.f15968c;
                boolean z3 = false;
                tabLayout.setScrollPosition(i2, f4, i5 != 2 || this.f15967b == 1, (i5 == 2 && this.f15967b == 0) ? true : true);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i2) {
            TabLayout tabLayout = this.f15966a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i2 || i2 >= tabLayout.getTabCount()) {
                return;
            }
            int i4 = this.f15968c;
            tabLayout.O(tabLayout.z(i2), i4 == 0 || (i4 == 2 && this.f15967b == 0));
        }
    }

    /* compiled from: TabLayoutMediator.java */
    /* renamed from: com.google.android.material.tabs.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0115d implements TabLayout.d {

        /* renamed from: a  reason: collision with root package name */
        private final ViewPager2 f15969a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f15970b;

        C0115d(ViewPager2 viewPager2, boolean z3) {
            this.f15969a = viewPager2;
            this.f15970b = z3;
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void a(@NonNull TabLayout.g gVar) {
            this.f15969a.setCurrentItem(gVar.k(), this.f15970b);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g gVar) {
        }
    }

    public d(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, @NonNull b bVar) {
        this(tabLayout, viewPager2, true, bVar);
    }

    public void a() {
        if (!this.f15961g) {
            RecyclerView.Adapter<?> adapter = this.f15956b.getAdapter();
            this.f15960f = adapter;
            if (adapter != null) {
                this.f15961g = true;
                c cVar = new c(this.f15955a);
                this.f15962h = cVar;
                this.f15956b.registerOnPageChangeCallback(cVar);
                C0115d c0115d = new C0115d(this.f15956b, this.f15958d);
                this.f15963i = c0115d;
                this.f15955a.d(c0115d);
                if (this.f15957c) {
                    a aVar = new a();
                    this.f15964j = aVar;
                    this.f15960f.registerAdapterDataObserver(aVar);
                }
                d();
                this.f15955a.setScrollPosition(this.f15956b.getCurrentItem(), 0.0f, true);
                return;
            }
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        throw new IllegalStateException("TabLayoutMediator is already attached");
    }

    public void b() {
        RecyclerView.Adapter<?> adapter;
        if (this.f15957c && (adapter = this.f15960f) != null) {
            adapter.unregisterAdapterDataObserver(this.f15964j);
            this.f15964j = null;
        }
        this.f15955a.J(this.f15963i);
        this.f15956b.unregisterOnPageChangeCallback(this.f15962h);
        this.f15963i = null;
        this.f15962h = null;
        this.f15960f = null;
        this.f15961g = false;
    }

    public boolean c() {
        return this.f15961g;
    }

    void d() {
        this.f15955a.H();
        RecyclerView.Adapter<?> adapter = this.f15960f;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i2 = 0; i2 < itemCount; i2++) {
                TabLayout.g E = this.f15955a.E();
                this.f15959e.a(E, i2);
                this.f15955a.h(E, false);
            }
            if (itemCount > 0) {
                int min = Math.min(this.f15956b.getCurrentItem(), this.f15955a.getTabCount() - 1);
                if (min != this.f15955a.getSelectedTabPosition()) {
                    TabLayout tabLayout = this.f15955a;
                    tabLayout.N(tabLayout.z(min));
                }
            }
        }
    }

    public d(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z3, @NonNull b bVar) {
        this(tabLayout, viewPager2, z3, true, bVar);
    }

    public d(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z3, boolean z4, @NonNull b bVar) {
        this.f15955a = tabLayout;
        this.f15956b = viewPager2;
        this.f15957c = z3;
        this.f15958d = z4;
        this.f15959e = bVar;
    }
}
