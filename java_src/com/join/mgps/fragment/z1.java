package com.join.mgps.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.FriendActivity;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
/* compiled from: FriendMessageFragment.java */
@EFragment(R.layout.fragment_friend_msg)
/* loaded from: classes4.dex */
public class z1 extends d {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f50817a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f50818b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    View f50819c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ViewPager f50820d;

    /* renamed from: e  reason: collision with root package name */
    List<Fragment> f50821e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    PagerAdapter f50822f;

    /* compiled from: FriendMessageFragment.java */
    /* loaded from: classes4.dex */
    class a extends FragmentPagerAdapter {
        a(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return z1.this.f50821e.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return z1.this.f50821e.get(i2);
        }
    }

    /* compiled from: FriendMessageFragment.java */
    /* loaded from: classes4.dex */
    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            z1.this.f50817a.setSelected(i2 == 0);
            z1.this.f50818b.setSelected(i2 == 1);
            if (i2 == 1 && z1.this.f50821e.size() > 1 && (z1.this.f50821e.get(1) instanceof d2)) {
                ((d2) z1.this.f50821e.get(1)).S();
                if (com.wufan.friend.chat.c.u().r() != null) {
                    com.wufan.friend.chat.c.u().r().setLikedCount(0);
                }
                z1.this.f50819c.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q(View view) {
        this.f50820d.setCurrentItem(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R(View view) {
        this.f50820d.setCurrentItem(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() {
        List<Fragment> list = this.f50821e;
        if (list != null) {
            ((h2) list.get(0)).V();
            ((d2) this.f50821e.get(1)).W();
            if (this.f50820d.getCurrentItem() == 1 && this.f50821e.size() > 1 && (this.f50821e.get(1) instanceof d2)) {
                ((d2) this.f50821e.get(1)).S();
                if (com.wufan.friend.chat.c.u().r() != null) {
                    com.wufan.friend.chat.c.u().r().setLikedCount(0);
                }
                this.f50819c.setVisibility(8);
            }
            if (this.f50819c != null) {
                if (com.wufan.friend.chat.c.u().r() != null && com.wufan.friend.chat.c.u().r().getLikedCount() > 0) {
                    this.f50819c.setVisibility(0);
                } else {
                    this.f50819c.setVisibility(8);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P() {
        if (getContext() instanceof FriendActivity) {
            ((FriendActivity) getContext()).r1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f50817a.setSelected(true);
        this.f50821e.add(new i2());
        this.f50821e.add(new e2());
        a aVar = new a(getFragmentManager());
        this.f50822f = aVar;
        this.f50820d.setAdapter(aVar);
        this.f50820d.addOnPageChangeListener(new b());
        this.f50820d.setOffscreenPageLimit(1);
        this.f50820d.setCurrentItem(0);
        this.f50817a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.w1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z1.this.Q(view);
            }
        });
        this.f50818b.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.x1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z1.this.R(view);
            }
        });
        if (com.wufan.friend.chat.c.u().r() != null && com.wufan.friend.chat.c.u().r().getLikedCount() > 0) {
            this.f50819c.setVisibility(0);
        } else {
            this.f50819c.setVisibility(8);
        }
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.y1
            @Override // java.lang.Runnable
            public final void run() {
                z1.this.S();
            }
        }, 500L);
    }
}
