package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.x;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.fragment.GmaeFormPostFragment;
import com.join.mgps.fragment.b3;
import com.join.mgps.fragment.x2;
import com.join.mgps.fragment.y2;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_game_and_profile)
/* loaded from: classes3.dex */
public class GameAndProfileActivity extends MyFragmentActivity1 {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SlidingTabLayout f30918a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ViewPager f30919b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f30920c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    RelativeLayout f30921d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f30922e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f30923f;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    int f30924g = 0;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    int f30925h = 0;

    /* renamed from: i  reason: collision with root package name */
    GmaeFormPostFragment f30926i;

    /* renamed from: j  reason: collision with root package name */
    x2 f30927j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.fragment.l2 f30928k;

    /* renamed from: l  reason: collision with root package name */
    Context f30929l;

    /* renamed from: m  reason: collision with root package name */
    AccountBean f30930m;

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
            if (i2 == 0) {
                GameAndProfileActivity.this.f30922e.setVisibility(0);
            } else {
                GameAndProfileActivity.this.f30922e.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void D0() {
        this.f30929l = this;
        MApplication.K = false;
        com.join.mgps.adapter.x xVar = new com.join.mgps.adapter.x(getSupportFragmentManager());
        ArrayList arrayList = new ArrayList();
        this.f30930m = AccountUtil_.getInstance_(this.f30929l).getAccountData();
        this.f30926i = new b3();
        this.f30927j = new y2();
        this.f30928k = new com.join.mgps.fragment.m2();
        Bundle bundle = new Bundle();
        bundle.putInt("uid", this.f30925h);
        this.f30926i.setArguments(bundle);
        this.f30927j.setArguments(bundle);
        this.f30928k.setArguments(bundle);
        x.a aVar = new x.a("创建", this.f30928k);
        x.a aVar2 = new x.a("订阅", this.f30927j);
        x.a aVar3 = new x.a("帖子", this.f30926i);
        int uid = this.f30930m.getUid();
        int i2 = this.f30925h;
        if (uid != i2 && i2 != 0) {
            this.f30922e.setVisibility(8);
            this.f30918a.setVisibility(8);
            int i4 = this.f30924g;
            if (i4 == 0) {
                this.f30923f.setText("创建的游戏单");
                arrayList.add(aVar);
            } else if (i4 == 1) {
                this.f30923f.setText("订阅的游戏单");
                arrayList.add(aVar2);
            }
        } else {
            arrayList.add(aVar);
            arrayList.add(aVar2);
            arrayList.add(aVar3);
            this.f30922e.setVisibility(0);
        }
        xVar.d(arrayList);
        this.f30919b.setAdapter(xVar);
        this.f30919b.setOffscreenPageLimit(3);
        this.f30919b.setOnPageChangeListener(new a());
        this.f30918a.setViewPager(this.f30919b);
        if (this.f30930m.getUid() == this.f30925h) {
            int i5 = this.f30924g;
            if (i5 == 0) {
                this.f30919b.setCurrentItem(0);
            } else if (i5 == 1) {
                this.f30919b.setCurrentItem(1);
            } else if (i5 == 2) {
                this.f30919b.setCurrentItem(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        if (!com.join.mgps.Util.d2.h(this.f30930m.getNickname()) && (!this.f30930m.getAccount().equals(this.f30930m.getNickname()) || !this.f30930m.getAccount().startsWith("pa"))) {
            MApplication.K = true;
            startActivity(new Intent(this, BuildGameFromActivity_.class));
            return;
        }
        IntentUtil.getInstance().goChangeNickname(this.f30929l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.f30926i instanceof GmaeFormPostFragment) {
            GmaeFormPostFragment.A0(i2, keyEvent);
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (MApplication.K && this.f30925h == 0) {
            this.f30928k.Q();
            MApplication.K = false;
        }
    }
}
