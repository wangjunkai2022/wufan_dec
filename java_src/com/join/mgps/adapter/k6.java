package com.join.mgps.adapter;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.MApplication;
/* compiled from: TabAdapter.java */
/* loaded from: classes3.dex */
public class k6 extends FragmentPagerAdapter {

    /* renamed from: b  reason: collision with root package name */
    public static String[] f42337b = {"最新", "大型", "破解", "中文", "厂商"};

    /* renamed from: c  reason: collision with root package name */
    public static String[] f42338c = {"首发", "已开测", "未开测", "礼包"};

    /* renamed from: d  reason: collision with root package name */
    public static String[] f42339d = {"推荐", "中文", "破解", "美国榜", "日本榜", "韩国榜"};

    /* renamed from: a  reason: collision with root package name */
    int f42340a;

    public k6(FragmentManager fragmentManager, int i2) {
        super(fragmentManager);
        this.f42340a = i2;
        if ("2308".equals(MApplication.f9227s) || "750".equals(MApplication.f9227s) || "753".equals(MApplication.f9227s)) {
            f42337b = new String[]{"最新", "大型", "经典", "中文", "厂商"};
            f42339d = new String[]{"推荐", "中文", "经典", "美国榜", "日本榜", "韩国榜"};
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        int i2 = this.f42340a;
        if (i2 == 0) {
            return f42337b.length;
        }
        if (i2 == 1) {
            return f42338c.length;
        }
        return f42339d.length;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i2) {
        int i4 = this.f42340a;
        if (i4 == 0) {
            if (i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3) {
                if (i2 != 4) {
                    return null;
                }
                return new com.join.mgps.fragment.w2();
            }
            com.join.mgps.fragment.u2 u2Var = new com.join.mgps.fragment.u2();
            Bundle bundle = new Bundle();
            bundle.putInt("intentTo", i2);
            u2Var.setArguments(bundle);
            return u2Var;
        } else if (i4 == 1) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            return null;
                        }
                        return new com.join.mgps.fragment.q2();
                    }
                    return new com.join.mgps.fragment.s2();
                }
                com.join.mgps.fragment.u2 u2Var2 = new com.join.mgps.fragment.u2();
                Bundle bundle2 = new Bundle();
                bundle2.putInt("intentTo", -1);
                u2Var2.setArguments(bundle2);
                return u2Var2;
            }
            return new com.join.mgps.fragment.o2();
        } else if (i4 == 2) {
            if (i2 != 0 && i2 != 1 && i2 != 2) {
                com.join.mgps.fragment.x3 x3Var = new com.join.mgps.fragment.x3();
                Bundle bundle3 = new Bundle();
                if (i2 == 3) {
                    bundle3.putInt("type", 1);
                } else if (i2 == 4) {
                    bundle3.putInt("type", 2);
                } else if (i2 == 5) {
                    bundle3.putInt("type", 3);
                }
                x3Var.setArguments(bundle3);
                return x3Var;
            }
            com.join.mgps.fragment.t3 t3Var = new com.join.mgps.fragment.t3();
            Bundle bundle4 = new Bundle();
            if (i2 == 0) {
                bundle4.putInt("type", 11);
            } else if (i2 == 1) {
                bundle4.putInt("type", 12);
            } else if (i2 == 2) {
                bundle4.putInt("type", 13);
            }
            t3Var.setArguments(bundle4);
            return t3Var;
        } else {
            return null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i2) {
        int i4 = this.f42340a;
        if (i4 == 0) {
            return f42337b[i2];
        }
        if (i4 == 1) {
            return f42338c[i2];
        }
        return f42339d[i2];
    }
}
