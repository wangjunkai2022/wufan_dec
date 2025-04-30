package com.join.mgps.fragment;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
/* compiled from: CurrentFragmentImpl.java */
/* loaded from: classes4.dex */
public class z implements y {

    /* renamed from: a  reason: collision with root package name */
    private final ViewPager f50813a;

    /* renamed from: b  reason: collision with root package name */
    private final FragmentManager f50814b;

    /* renamed from: c  reason: collision with root package name */
    private final com.join.mgps.adapter.x f50815c;

    public z(ViewPager viewPager, FragmentManager fragmentManager) {
        this.f50813a = viewPager;
        this.f50814b = fragmentManager;
        if (viewPager != null) {
            this.f50815c = (com.join.mgps.adapter.x) viewPager.getAdapter();
        } else {
            this.f50815c = new com.join.mgps.adapter.x(fragmentManager);
        }
    }

    private static String b(int i2, long j4) {
        return "android:switcher:" + i2 + ":" + j4;
    }

    @Override // com.join.mgps.fragment.y
    @Nullable
    public u0 a() {
        int currentItem = this.f50813a.getCurrentItem();
        if (currentItem < 0 || currentItem >= this.f50815c.getCount()) {
            return null;
        }
        Fragment findFragmentByTag = this.f50814b.findFragmentByTag(b(this.f50813a.getId(), this.f50815c.getItemId(currentItem)));
        if (findFragmentByTag != null) {
            return (u0) findFragmentByTag;
        }
        return null;
    }
}
