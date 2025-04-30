package com.join.mgps.fragment;

import android.animation.Animator;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.GameDiscoverActivity;
import com.join.mgps.control.RhythmLayout;
import com.join.mgps.dto.GameDiscoverBean;
import com.join.mgps.pulltorefresh.extras.viewpager.PullToRefreshViewPager;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CardViewPagerFragment.java */
/* loaded from: classes4.dex */
public class f extends com.join.mgps.fragment.a implements PullToRefreshBase.h<ViewPager> {

    /* renamed from: v  reason: collision with root package name */
    private static f f48635v;

    /* renamed from: b  reason: collision with root package name */
    private View f48636b;

    /* renamed from: c  reason: collision with root package name */
    private ImageButton f48637c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f48638d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f48639e;

    /* renamed from: f  reason: collision with root package name */
    private RhythmLayout f48640f;

    /* renamed from: g  reason: collision with root package name */
    private PullToRefreshViewPager f48641g;

    /* renamed from: h  reason: collision with root package name */
    private ViewPager f48642h;

    /* renamed from: i  reason: collision with root package name */
    private com.join.mgps.adapter.b f48643i;

    /* renamed from: j  reason: collision with root package name */
    private int f48644j;

    /* renamed from: l  reason: collision with root package name */
    private boolean f48646l;

    /* renamed from: m  reason: collision with root package name */
    private List<GameDiscoverBean> f48647m;

    /* renamed from: n  reason: collision with root package name */
    private List<GameDiscoverBean> f48648n;

    /* renamed from: r  reason: collision with root package name */
    private com.join.mgps.control.b f48652r;

    /* renamed from: u  reason: collision with root package name */
    private int f48655u;

    /* renamed from: k  reason: collision with root package name */
    private boolean f48645k = true;

    /* renamed from: o  reason: collision with root package name */
    private com.join.mgps.pref.c f48649o = null;

    /* renamed from: p  reason: collision with root package name */
    private int f48650p = 1;

    /* renamed from: q  reason: collision with root package name */
    private boolean f48651q = true;

    /* renamed from: s  reason: collision with root package name */
    private com.join.mgps.control.a f48653s = new a();

    /* renamed from: t  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f48654t = new b();

    /* compiled from: CardViewPagerFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.control.a {

        /* compiled from: CardViewPagerFragment.java */
        /* renamed from: com.join.mgps.fragment.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0206a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f48657a;

            RunnableC0206a(int i2) {
                this.f48657a = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                f.this.f48642h.setCurrentItem(this.f48657a);
            }
        }

        a() {
        }

        @Override // com.join.mgps.control.a
        public void a() {
        }

        @Override // com.join.mgps.control.a
        public void b(int i2) {
        }

        @Override // com.join.mgps.control.a
        public void onSelected(int i2) {
            f.this.f48276a.postDelayed(new RunnableC0206a(i2), 100L);
        }
    }

    /* compiled from: CardViewPagerFragment.java */
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
            f.this.b0(i2);
            if (!f.this.f48645k || f.this.f48647m.size() <= 0 || f.this.f48647m.size() % 10 != 0 || i2 < f.this.f48647m.size() - 8 || f.this.f48646l || !com.join.android.app.common.utils.f.j(f.this.getActivity())) {
                return;
            }
            f.this.W();
        }
    }

    /* compiled from: CardViewPagerFragment.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.f48642h.setCurrentItem(0, true);
        }
    }

    /* compiled from: CardViewPagerFragment.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.W();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CardViewPagerFragment.java */
    /* loaded from: classes4.dex */
    public class e implements Animator.AnimatorListener {
        e() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f.this.f48637c.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    private void V(List<GameDiscoverBean> list) {
        com.join.mgps.control.b bVar = this.f48652r;
        if (bVar == null) {
            c0(list);
            return;
        }
        bVar.a(list);
        this.f48652r.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        this.f48645k = false;
        this.f48646l = true;
        Bundle bundle = new Bundle();
        int i2 = this.f48650p + 1;
        this.f48650p = i2;
        bundle.putInt("CurrentPn", i2);
        this.f48649o.O(bundle);
    }

    public static f X() {
        if (f48635v == null) {
            f48635v = new f();
        }
        return f48635v;
    }

    public static int Z(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int i2 = rect.top;
        if (i2 == 0) {
            try {
                Class<?> cls = Class.forName("com.android.internal.R$dimen");
                return activity.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
            } catch (ClassNotFoundException e4) {
                e4.printStackTrace();
                return i2;
            } catch (IllegalAccessException e5) {
                e5.printStackTrace();
                return i2;
            } catch (IllegalArgumentException e6) {
                e6.printStackTrace();
                return i2;
            } catch (InstantiationException e7) {
                e7.printStackTrace();
                return i2;
            } catch (NoSuchFieldException e8) {
                e8.printStackTrace();
                return i2;
            } catch (NumberFormatException e9) {
                e9.printStackTrace();
                return i2;
            } catch (SecurityException e10) {
                e10.printStackTrace();
                return i2;
            }
        }
        return i2;
    }

    private void a0() {
        List<GameDiscoverBean> list = this.f48648n;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f48644j = com.join.mgps.Util.h.d(this.f48648n.get(0).getDiscover().getBg_color());
        g0(this.f48648n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(int i2) {
        this.f48640f.w(i2);
        f0(i2);
        int d4 = com.join.mgps.Util.h.d(this.f48647m.get(i2).getDiscover().getBg_color());
        if (this.f48651q) {
            ((GameDiscoverActivity) getActivity()).G0().p(d4);
            this.f48651q = false;
        } else {
            ((GameDiscoverActivity) getActivity()).G0().k(0);
        }
        com.join.mgps.Util.c.k(this.f48636b, this.f48644j, d4, 700);
        this.f48644j = d4;
    }

    private void c0(List<GameDiscoverBean> list) {
        if (getActivity() == null || list == null) {
            return;
        }
        com.join.mgps.control.b bVar = new com.join.mgps.control.b(getActivity(), this.f48640f, list);
        this.f48652r = bVar;
        this.f48640f.setAdapter(bVar);
    }

    private void e0(ViewPager viewPager, int i2) {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            com.join.mgps.control.c cVar = new com.join.mgps.control.c(viewPager.getContext(), new OvershootInterpolator(0.6f));
            declaredField.set(viewPager, cVar);
            cVar.a(i2);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (NoSuchFieldException e5) {
            e5.printStackTrace();
        }
    }

    private void f0(int i2) {
        if (i2 > 1) {
            if (this.f48637c.getVisibility() == 8) {
                this.f48637c.setVisibility(0);
                com.join.mgps.Util.c.a(this.f48637c);
            }
        } else if (this.f48637c.getVisibility() == 0) {
            com.join.mgps.Util.c.c(this.f48637c).addListener(new e());
        }
        String format = new SimpleDateFormat("dd").format(Long.valueOf(this.f48647m.get(i2).getDiscover().getAddtimes() * 1000));
        this.f48639e.setText(new SimpleDateFormat("MM EEEE").format(Long.valueOf(this.f48647m.get(i2).getDiscover().getAddtimes() * 1000)).replace(" ", "月\n"));
        this.f48638d.setText(format);
    }

    private void g0(List<GameDiscoverBean> list) {
        try {
            if (getActivity() != null && !getActivity().isFinishing()) {
                if (list.isEmpty()) {
                    this.f48645k = false;
                    this.f48636b.setBackgroundColor(this.f48644j);
                    return;
                }
                int size = this.f48647m.size();
                this.f48645k = list.size() >= 10;
                com.join.mgps.adapter.b bVar = this.f48643i;
                if (bVar == null) {
                    com.join.mgps.adapter.b bVar2 = new com.join.mgps.adapter.b(getActivity().getSupportFragmentManager(), list);
                    this.f48643i = bVar2;
                    this.f48642h.setAdapter(bVar2);
                } else {
                    bVar.b(list);
                    this.f48643i.notifyDataSetChanged();
                }
                V(list);
                this.f48647m = this.f48643i.c();
                if (this.f48642h.getCurrentItem() == size - 1) {
                    ViewPager viewPager = this.f48642h;
                    viewPager.setCurrentItem(viewPager.getCurrentItem() + 1, true);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase.h
    public void F(PullToRefreshBase<ViewPager> pullToRefreshBase) {
        if (this.f48646l) {
            return;
        }
        if (pullToRefreshBase.getCurrentMode() == PullToRefreshBase.Mode.PULL_FROM_END) {
            if (this.f48645k && !this.f48646l && com.join.android.app.common.utils.f.j(getActivity())) {
                new Handler().postDelayed(new d(), 2000L);
                return;
            }
            this.f48641g.f();
            this.f48641g.setMode(PullToRefreshBase.Mode.DISABLED);
            this.f48646l = false;
        } else if (pullToRefreshBase.getCurrentMode() == PullToRefreshBase.Mode.PULL_FROM_START) {
            this.f48641g.f();
            this.f48646l = false;
        }
    }

    @Override // com.join.mgps.fragment.a
    protected void M(View view) {
        this.f48640f.setRhythmListener(this.f48653s);
        this.f48641g.setOnRefreshListener(this);
        this.f48641g.setPullToRefreshEnabled(false);
        this.f48642h.setOnPageChangeListener(this.f48654t);
        this.f48637c.setOnClickListener(new c());
    }

    @Override // com.join.mgps.fragment.a
    protected View N(LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.fragment_discoverapp, (ViewGroup) null);
        if (Build.VERSION.SDK_INT >= 21) {
            int Z = Z(getActivity());
            this.f48655u = Z;
            inflate.setPadding(0, Z, 0, 0);
        }
        this.f48638d = (TextView) inflate.findViewById(R.id.text_time_first);
        this.f48639e = (TextView) inflate.findViewById(R.id.text_time_second);
        this.f48636b = inflate.findViewById(R.id.main_view);
        this.f48637c = (ImageButton) inflate.findViewById(R.id.btn_rocket_to_head);
        this.f48640f = (RhythmLayout) inflate.findViewById(R.id.box_rhythm);
        PullToRefreshViewPager pullToRefreshViewPager = (PullToRefreshViewPager) inflate.findViewById(R.id.pager);
        this.f48641g = pullToRefreshViewPager;
        ViewPager refreshableView = pullToRefreshViewPager.getRefreshableView();
        this.f48642h = refreshableView;
        e0(refreshableView, 700);
        this.f48640f.setScrollRhythmStartDelayTime(100);
        int rhythmItemWidth = ((int) this.f48640f.getRhythmItemWidth()) + (((int) TypedValue.applyDimension(1, 8.0f, getResources().getDisplayMetrics())) * 2);
        this.f48640f.getLayoutParams().height = rhythmItemWidth;
        double d4 = rhythmItemWidth;
        Double.isNaN(d4);
        ((RelativeLayout.LayoutParams) this.f48641g.getLayoutParams()).bottomMargin = (int) (d4 * 1.3d);
        return inflate;
    }

    public void d0(List<GameDiscoverBean> list) {
        this.f48648n = list;
        if (this.f48650p > 1) {
            this.f48644j = com.join.mgps.Util.h.d(list.get(0).getDiscover().getBg_color());
            g0(list);
            this.f48641g.f();
            this.f48646l = false;
        }
    }

    @Override // com.join.mgps.fragment.a
    protected void initData() {
        this.f48647m = new ArrayList();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f48650p = 1;
        this.f48645k = true;
        this.f48652r = null;
        this.f48643i = null;
        this.f48649o.H(null);
        try {
            a0();
            b0(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (getActivity() != null) {
            this.f48649o = (GameDiscoverActivity) getActivity();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f48649o = null;
        super.onDestroy();
    }
}
