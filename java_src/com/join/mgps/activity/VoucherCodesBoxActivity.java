package com.join.mgps.activity;

import android.os.Bundle;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.fragment.x4;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_voucher_codesbox)
/* loaded from: classes3.dex */
public class VoucherCodesBoxActivity extends FragmentActivity {

    /* renamed from: i  reason: collision with root package name */
    private static final String[] f36104i = {"游戏礼包", "代金券"};
    @Extra

    /* renamed from: a  reason: collision with root package name */
    int f36105a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    int f36106b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f36107c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ViewPager f36108d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TabPageIndicator f36109e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f36110f;

    /* renamed from: g  reason: collision with root package name */
    private FragmentPagerAdapter f36111g;

    /* renamed from: h  reason: collision with root package name */
    private Fragment[] f36112h = new Fragment[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (i2 == 1) {
                VoucherCodesBoxActivity.this.f36110f.setVisibility(0);
            } else {
                VoucherCodesBoxActivity.this.f36110f.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b extends FragmentPagerAdapter {
        public b(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return VoucherCodesBoxActivity.f36104i.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return VoucherCodesBoxActivity.this.E0(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i2) {
            return VoucherCodesBoxActivity.f36104i[i2];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment E0(int i2) {
        Fragment fragment = this.f36112h[i2];
        if (fragment != null) {
            return fragment;
        }
        if (i2 == 0) {
            fragment = new com.join.mgps.fragment.p();
            Bundle bundle = new Bundle();
            bundle.putInt("uid", this.f36105a);
            fragment.setArguments(bundle);
        } else if (i2 == 1) {
            fragment = new x4();
        }
        this.f36112h[i2] = fragment;
        return fragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        x4 x4Var;
        Fragment[] fragmentArr = this.f36112h;
        if (fragmentArr[1] == null || (x4Var = (x4) fragmentArr[1]) == null || x4Var.Z() == null) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(x4Var.Z().getLink().getLink_type_val());
        intentDateBean.setObject(x4Var.Z().getTitle());
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f36107c.setText("游戏礼包/代金券");
        this.f36110f.setText("使用说明");
        this.f36110f.setVisibility(8);
        b bVar = new b(getSupportFragmentManager());
        this.f36111g = bVar;
        this.f36108d.setAdapter(bVar);
        this.f36108d.setOffscreenPageLimit(2);
        this.f36109e.setViewPager(this.f36108d, 0);
        this.f36109e.setOnPageChangeListener(new a());
        this.f36108d.setCurrentItem(this.f36106b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }
}
