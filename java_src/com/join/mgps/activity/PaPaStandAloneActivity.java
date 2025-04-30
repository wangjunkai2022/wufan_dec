package com.join.mgps.activity;

import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.BaseFragmentActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventViewPager;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.fragment.s3;
import com.join.mgps.fragment.w3;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_papa_standalone)
/* loaded from: classes3.dex */
public class PaPaStandAloneActivity extends BaseFragmentActivity {

    /* renamed from: e  reason: collision with root package name */
    static String[] f34567e = {"推荐", "中文", "破解", "美国榜", "日本榜", "韩国榜"};
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f34568a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    InterceptEventViewPager f34569b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TabPageIndicator f34570c;

    /* renamed from: d  reason: collision with root package name */
    private Fragment[] f34571d = new Fragment[f34567e.length];

    /* loaded from: classes3.dex */
    private class a extends FragmentPagerAdapter {
        public a(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return PaPaStandAloneActivity.f34567e.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return PaPaStandAloneActivity.this.G0(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i2) {
            return PaPaStandAloneActivity.f34567e[i2];
        }
    }

    private int E0(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return i2 != 5 ? -1 : 3;
                        }
                        return 2;
                    }
                    return 1;
                }
                return 13;
            }
            return 12;
        }
        return 11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment G0(int i2) {
        Fragment fragment = this.f34571d[i2];
        if (fragment != null) {
            return fragment;
        }
        int E0 = E0(i2);
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            s3 c02 = s3.c0(E0);
            this.f34571d[i2] = c02;
            return c02;
        } else if (i2 == 3 || i2 == 4 || i2 == 5) {
            w3 O = w3.O(E0);
            this.f34571d[i2] = O;
            return O;
        } else {
            return null;
        }
    }

    public InterceptEventViewPager F0() {
        return this.f34569b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f34568a.setText("悟饭单机");
        a aVar = new a(getSupportFragmentManager());
        this.f34569b.setIsAsParentViewPager(true);
        this.f34569b.setAdapter(aVar);
        this.f34569b.setOffscreenPageLimit(6);
        this.f34569b.setCurrentItem(0);
        if ("2308".equals(MApplication.f9227s) || "750".equals(MApplication.f9227s) || "753".equals(MApplication.f9227s)) {
            f34567e = new String[]{"推荐", "中文", "经典", "美国榜", "日本榜", "韩国榜"};
        }
        this.f34570c.setViewPager(this.f34569b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
