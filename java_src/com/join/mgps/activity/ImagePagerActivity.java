package com.join.mgps.activity;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.component.photoviewer.HackyViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;
/* loaded from: classes3.dex */
public class ImagePagerActivity extends FragmentActivity {

    /* renamed from: d  reason: collision with root package name */
    private static final String f32779d = "STATE_POSITION";

    /* renamed from: e  reason: collision with root package name */
    public static final String f32780e = "image_index";

    /* renamed from: f  reason: collision with root package name */
    public static final String f32781f = "image_urls";

    /* renamed from: a  reason: collision with root package name */
    private HackyViewPager f32782a;

    /* renamed from: b  reason: collision with root package name */
    private int f32783b;

    /* renamed from: c  reason: collision with root package name */
    private CirclePageIndicator f32784c;

    /* loaded from: classes3.dex */
    class a implements ViewPager.OnPageChangeListener {
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
            ImagePagerActivity.this.f32784c.setCurrentItem(i2);
        }
    }

    /* loaded from: classes3.dex */
    private class b extends FragmentStatePagerAdapter {

        /* renamed from: j  reason: collision with root package name */
        public String[] f32786j;

        public b(FragmentManager fragmentManager, String[] strArr) {
            super(fragmentManager);
            this.f32786j = strArr;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            String[] strArr = this.f32786j;
            if (strArr == null) {
                return 0;
            }
            return strArr.length;
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i2) {
            return com.join.android.app.component.photoviewer.a.R(this.f32786j[i2]);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.image_viewpager);
        this.f32783b = getIntent().getIntExtra("image_index", 0);
        String[] stringArrayExtra = getIntent().getStringArrayExtra("image_urls");
        this.f32782a = (HackyViewPager) findViewById(R.id.pager);
        this.f32782a.setAdapter(new b(getSupportFragmentManager(), stringArrayExtra));
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) findViewById(R.id.indicator);
        this.f32784c = circlePageIndicator;
        circlePageIndicator.setViewPager(this.f32782a);
        this.f32782a.setOnPageChangeListener(new a());
        if (bundle != null) {
            this.f32783b = bundle.getInt(f32779d);
        }
        this.f32782a.setCurrentItem(this.f32783b);
        this.f32784c.setCurrentItem(this.f32783b);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(f32779d, this.f32782a.getCurrentItem());
    }
}
