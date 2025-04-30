package com.join.mgps.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventViewPager;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
/* compiled from: PaPaStandAloneOverSeaFragment.java */
@EFragment(R.layout.fragment_papa_standalone_oversea)
/* loaded from: classes4.dex */
public class w3 extends Fragment {

    /* renamed from: g  reason: collision with root package name */
    public static final int f50645g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f50646h = 2;

    /* renamed from: i  reason: collision with root package name */
    public static final int f50647i = 3;

    /* renamed from: a  reason: collision with root package name */
    int f50648a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f50649b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f50650c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    InterceptEventViewPager f50651d;

    /* renamed from: e  reason: collision with root package name */
    s3 f50652e;

    /* renamed from: f  reason: collision with root package name */
    s3 f50653f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneOverSeaFragment.java */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w3.this.f50651d.setCurrentItem(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneOverSeaFragment.java */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w3.this.f50651d.setCurrentItem(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaPaStandAloneOverSeaFragment.java */
    /* loaded from: classes4.dex */
    public class c implements InterceptEventViewPager.c {
        c() {
        }

        @Override // com.join.mgps.customview.InterceptEventViewPager.c
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // com.join.mgps.customview.InterceptEventViewPager.c
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // com.join.mgps.customview.InterceptEventViewPager.c
        public void onPageSelected(int i2) {
            if (i2 == 0) {
                w3.this.f50649b.setTextColor(Color.parseColor("#F47500"));
                w3.this.f50650c.setTextColor(Color.parseColor("#4A4A4A"));
            } else if (i2 != 1) {
            } else {
                w3.this.f50650c.setTextColor(Color.parseColor("#F47500"));
                w3.this.f50649b.setTextColor(Color.parseColor("#4A4A4A"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PaPaStandAloneOverSeaFragment.java */
    /* loaded from: classes4.dex */
    public class d extends FragmentPagerAdapter {
        public d(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return 2;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return w3.this.P(i2);
        }
    }

    public static w3 O(int i2) {
        x3 x3Var = new x3();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        x3Var.setArguments(bundle);
        return x3Var;
    }

    int M() {
        int i2 = this.f50648a;
        if (i2 == 1) {
            return 14;
        }
        return i2 == 2 ? 16 : 18;
    }

    int N() {
        int i2 = this.f50648a;
        if (i2 == 1) {
            return 15;
        }
        return i2 == 2 ? 17 : 19;
    }

    Fragment P(int i2) {
        if (i2 == 0) {
            if (this.f50652e == null) {
                this.f50652e = s3.c0(M());
            }
            return this.f50652e;
        } else if (i2 != 1) {
            return null;
        } else {
            if (this.f50653f == null) {
                this.f50653f = s3.c0(N());
            }
            return this.f50653f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50649b.setOnClickListener(new a());
        this.f50650c.setOnClickListener(new b());
        d dVar = new d(getChildFragmentManager());
        this.f50651d.setViewPagerCallback(new c());
        this.f50651d.setIsAsParentViewPager(true);
        this.f50651d.setAdapter(dVar);
        this.f50651d.setOffscreenPageLimit(2);
        this.f50651d.setCurrentItem(0);
        this.f50649b.setTextColor(Color.parseColor("#F47500"));
        this.f50650c.setTextColor(Color.parseColor("#4A4A4A"));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f50648a = getArguments().getInt("type");
    }
}
