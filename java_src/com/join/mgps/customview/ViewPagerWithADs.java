package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.BannerBean;
import java.util.List;
/* loaded from: classes3.dex */
public class ViewPagerWithADs extends FrameLayout {

    /* renamed from: k  reason: collision with root package name */
    public static final int f46462k = 5;

    /* renamed from: a  reason: collision with root package name */
    private Context f46463a;

    /* renamed from: b  reason: collision with root package name */
    private a f46464b;

    /* renamed from: c  reason: collision with root package name */
    private int f46465c;

    /* renamed from: d  reason: collision with root package name */
    private List<BannerBean> f46466d;

    /* renamed from: e  reason: collision with root package name */
    private int f46467e;

    /* renamed from: f  reason: collision with root package name */
    private int f46468f;

    /* renamed from: g  reason: collision with root package name */
    private int f46469g;

    /* renamed from: h  reason: collision with root package name */
    private PagerAdapter f46470h;

    /* renamed from: i  reason: collision with root package name */
    private float f46471i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f46472j;

    public ViewPagerWithADs(@NonNull Context context) {
        super(context);
        this.f46464b = null;
        this.f46465c = 50;
        this.f46466d = null;
        this.f46467e = 40;
        this.f46468f = 2000;
        this.f46469g = 0;
        this.f46471i = 0.0f;
        this.f46472j = false;
        this.f46463a = context;
    }

    private int c(Context context, int i2) {
        return (int) ((i2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void d() {
        setClipChildren(false);
        setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        int i2 = this.f46465c;
        layoutParams.setMargins(i2, 0, i2, 0);
        removeAllViews();
        a aVar = new a(this.f46463a);
        this.f46464b = aVar;
        aVar.setClipChildren(false);
        this.f46464b.setLayoutParams(layoutParams);
        this.f46464b.i(this.f46463a, this.f46466d, this.f46467e, this.f46468f);
        addView(this.f46464b);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46471i = 0.0f;
            this.f46472j = false;
        } else if (action == 1) {
            this.f46471i = 0.0f;
            this.f46472j = false;
        } else if (action == 2) {
            float f4 = this.f46471i;
            if (f4 != 0.0f) {
                this.f46471i = f4 - motionEvent.getX();
            }
            if (Math.abs(this.f46471i) > 5.0f) {
                this.f46472j = true;
            }
            getParent().requestDisallowInterceptTouchEvent(this.f46472j);
            this.f46471i = motionEvent.getX();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void e(View view, int i2) {
        this.f46464b.h(view, i2);
    }

    public void setAll(Context context, PagerAdapter pagerAdapter, List<BannerBean> list, int i2, int i4, int i5) {
        this.f46463a = context;
        this.f46470h = pagerAdapter;
        this.f46465c = i4;
        this.f46466d = list;
        this.f46467e = i2;
        this.f46468f = i5;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ViewPager {

        /* renamed from: a  reason: collision with root package name */
        private Context f46473a;

        /* renamed from: b  reason: collision with root package name */
        private List<BannerBean> f46474b;

        /* renamed from: c  reason: collision with root package name */
        private int f46475c;

        /* renamed from: d  reason: collision with root package name */
        private int f46476d;

        /* renamed from: e  reason: collision with root package name */
        private int f46477e;

        /* renamed from: f  reason: collision with root package name */
        private PagerAdapter f46478f;

        /* renamed from: g  reason: collision with root package name */
        private f f46479g;

        /* renamed from: h  reason: collision with root package name */
        private Handler f46480h;

        /* renamed from: com.join.mgps.customview.ViewPagerWithADs$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class HandlerC0195a extends Handler {
            HandlerC0195a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                a aVar = a.this;
                aVar.setCurrentItem(aVar.f46475c);
                a.this.j();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnTouchListener {

            /* renamed from: a  reason: collision with root package name */
            private long f46483a;

            /* renamed from: b  reason: collision with root package name */
            private int f46484b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f46485c;

            b(int i2) {
                this.f46485c = i2;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    a.this.f46480h.removeCallbacksAndMessages(null);
                    this.f46484b = (int) motionEvent.getX();
                    this.f46483a = System.currentTimeMillis();
                } else if (action == 1) {
                    if (System.currentTimeMillis() - this.f46483a < 500 && Math.abs(this.f46484b - motionEvent.getX()) < 30.0f) {
                        if (ViewPagerWithADs.this.f46469g == 1) {
                            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(a.this.f46473a);
                            l4.r0(((this.f46485c % a.this.f46474b.size()) + 1) + "", AccountUtil_.getInstance_(a.this.f46473a).getUid());
                        }
                        IntentUtil.getInstance().intentActivity(a.this.f46473a, ((BannerBean) a.this.f46474b.get(this.f46485c % a.this.f46474b.size())).getIntentDataBean());
                    }
                    a.this.j();
                }
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c extends PagerAdapter {
            c() {
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
                viewGroup.removeView((View) obj);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return Integer.MAX_VALUE;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public Object instantiateItem(ViewGroup viewGroup, int i2) {
                SimpleDraweeView simpleDraweeView = new SimpleDraweeView(a.this.f46473a);
                simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
                MyImageLoader.f(simpleDraweeView, R.drawable.banner_normal_icon, ((BannerBean) a.this.f46474b.get(i2 % a.this.f46474b.size())).getPic_remote(), MyImageLoader.D(a.this.f46473a, 20.0f));
                a.this.h(simpleDraweeView, i2);
                viewGroup.addView(simpleDraweeView);
                return simpleDraweeView;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public boolean isViewFromObject(View view, Object obj) {
                return view == obj;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class d implements ViewPager.OnPageChangeListener {
            d() {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i2, float f4, int i4) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
                a.this.f46475c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public class e implements ViewPager.PageTransformer {

            /* renamed from: c  reason: collision with root package name */
            private static final float f46489c = 0.85f;

            /* renamed from: d  reason: collision with root package name */
            public static final float f46490d = 0.5f;

            /* renamed from: a  reason: collision with root package name */
            private float f46491a = f46489c;

            public e() {
            }

            @TargetApi(11)
            public void a(View view, float f4) {
                int width = view.getWidth();
                view.setPivotY(view.getHeight() / 2);
                view.setPivotX(width / 2);
                if (f4 < -1.0f) {
                    view.setScaleX(this.f46491a);
                    view.setScaleY(this.f46491a);
                    view.setPivotX(width);
                } else if (f4 > 1.0f) {
                    view.setPivotX(0.0f);
                    view.setScaleX(this.f46491a);
                    view.setScaleY(this.f46491a);
                } else if (f4 < 0.0f) {
                    float f5 = this.f46491a;
                    float f6 = ((f4 + 1.0f) * (1.0f - f5)) + f5;
                    view.setScaleX(f6);
                    view.setScaleY(f6);
                    view.setPivotX(width * (((-f4) * 0.5f) + 0.5f));
                } else {
                    float f7 = 1.0f - f4;
                    float f8 = this.f46491a;
                    float f9 = ((1.0f - f8) * f7) + f8;
                    view.setScaleX(f9);
                    view.setScaleY(f9);
                    view.setPivotX(width * f7 * 0.5f);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.PageTransformer
            public void transformPage(View view, float f4) {
                a(view, f4);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class f implements Runnable {
            f() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.c(a.this, 1);
                a.this.f46480h.obtainMessage().sendToTarget();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class g implements View.OnTouchListener {
            g() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    a.this.f46480h.removeCallbacksAndMessages(null);
                    return false;
                } else if (action == 1) {
                    a.this.j();
                    return false;
                } else if (action != 3) {
                    return false;
                } else {
                    a.this.j();
                    return false;
                }
            }
        }

        public a(Context context) {
            super(context);
            this.f46475c = 100;
            this.f46476d = 15;
            this.f46477e = 4000;
            this.f46479g = new f();
            this.f46480h = new HandlerC0195a();
            this.f46473a = context;
        }

        static /* synthetic */ int c(a aVar, int i2) {
            int i4 = aVar.f46475c + i2;
            aVar.f46475c = i4;
            return i4;
        }

        private void g() {
            this.f46475c = 10000;
            setPageMargin(this.f46476d);
            setOffscreenPageLimit(3);
            j();
            setPageTransformer(true, new e());
            setOnPageChangeListener(new d());
            setOnTouchListener(new g());
        }

        public void h(View view, int i2) {
            view.setOnTouchListener(new b(i2));
        }

        public void i(Context context, List<BannerBean> list, int i2, int i4) {
            this.f46473a = context;
            this.f46476d = i2;
            this.f46474b = list;
            this.f46477e = i4;
            g();
        }

        public void j() {
            if (this.f46478f == null) {
                if (ViewPagerWithADs.this.f46470h != null) {
                    this.f46478f = ViewPagerWithADs.this.f46470h;
                } else {
                    this.f46478f = new c();
                }
                setAdapter(this.f46478f);
                setCurrentItem(this.f46475c);
            }
            this.f46480h.removeCallbacksAndMessages(null);
            this.f46480h.postDelayed(this.f46479g, this.f46477e);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.viewpager.widget.ViewPager, android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f46475c = 100;
            this.f46476d = 15;
            this.f46477e = 4000;
            this.f46479g = new f();
            this.f46480h = new HandlerC0195a();
            this.f46473a = context;
        }
    }

    public void setAll(Context context, List<BannerBean> list, int i2, int i4, int i5, int i6) {
        this.f46469g = i6;
        setAll(context, (PagerAdapter) null, list, i2, i4, i5);
    }

    public ViewPagerWithADs(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f46464b = null;
        this.f46465c = 50;
        this.f46466d = null;
        this.f46467e = 40;
        this.f46468f = 2000;
        this.f46469g = 0;
        this.f46471i = 0.0f;
        this.f46472j = false;
        this.f46463a = context;
    }
}
