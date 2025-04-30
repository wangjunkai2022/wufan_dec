package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class AutoScrollViewPager<T> extends FrameLayout implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private int f44911a;

    /* renamed from: b  reason: collision with root package name */
    private int f44912b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f44913c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager f44914d;

    /* renamed from: e  reason: collision with root package name */
    private final int f44915e;

    /* renamed from: f  reason: collision with root package name */
    private final int f44916f;

    /* renamed from: g  reason: collision with root package name */
    private int f44917g;

    /* renamed from: h  reason: collision with root package name */
    private int f44918h;

    /* renamed from: i  reason: collision with root package name */
    private AutoScrollViewPager<T>.c f44919i;

    /* renamed from: j  reason: collision with root package name */
    private AutoScrollViewPager<T>.b f44920j;

    /* renamed from: k  reason: collision with root package name */
    private float f44921k;

    /* renamed from: l  reason: collision with root package name */
    private float f44922l;

    /* renamed from: m  reason: collision with root package name */
    private long f44923m;

    /* renamed from: n  reason: collision with root package name */
    private List<T> f44924n;

    /* renamed from: o  reason: collision with root package name */
    private Handler f44925o;

    /* renamed from: p  reason: collision with root package name */
    private e f44926p;

    /* renamed from: q  reason: collision with root package name */
    private f f44927q;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            AutoScrollViewPager.c(AutoScrollViewPager.this);
            AutoScrollViewPager.this.f44914d.setCurrentItem(AutoScrollViewPager.this.f44917g);
            AutoScrollViewPager.this.f44925o.sendEmptyMessageDelayed(1, AutoScrollViewPager.this.f44911a);
        }
    }

    /* loaded from: classes3.dex */
    private class b implements ViewPager.OnPageChangeListener {
        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            AutoScrollViewPager.this.f44917g = i2;
            AutoScrollViewPager.this.f44918h = i2 % AutoScrollViewPager.this.f44924n.size();
        }

        /* synthetic */ b(AutoScrollViewPager autoScrollViewPager, a aVar) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    private class c extends PagerAdapter {
        private c() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return AutoScrollViewPager.this.f44924n.size() > 0 ? Integer.MAX_VALUE : 0;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            AutoScrollViewPager autoScrollViewPager = AutoScrollViewPager.this;
            View j4 = autoScrollViewPager.j(i2 % autoScrollViewPager.f44924n.size());
            j4.setClickable(false);
            viewGroup.addView(j4);
            return j4;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        /* synthetic */ c(AutoScrollViewPager autoScrollViewPager, a aVar) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    private class d implements ViewPager.PageTransformer {

        /* renamed from: c  reason: collision with root package name */
        private static final float f44931c = 0.85f;

        /* renamed from: d  reason: collision with root package name */
        public static final float f44932d = 0.5f;

        /* renamed from: a  reason: collision with root package name */
        private float f44933a = f44931c;

        public d() {
        }

        @TargetApi(11)
        public void a(View view, float f4) {
            int width = view.getWidth();
            view.setPivotY(view.getHeight() / 2);
            view.setPivotX(width / 2);
            if (f4 < -1.0f) {
                view.setScaleX(this.f44933a);
                view.setScaleY(this.f44933a);
                view.setPivotX(width);
            } else if (f4 > 1.0f) {
                view.setPivotX(0.0f);
                view.setScaleX(this.f44933a);
                view.setScaleY(this.f44933a);
            } else if (f4 < 0.0f) {
                float f5 = this.f44933a;
                float f6 = ((f4 + 1.0f) * (1.0f - f5)) + f5;
                view.setScaleX(f6);
                view.setScaleY(f6);
                view.setPivotX(width * (((-f4) * 0.5f) + 0.5f));
            } else {
                float f7 = 1.0f - f4;
                float f8 = this.f44933a;
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

    /* loaded from: classes3.dex */
    public interface e {
        View a(int i2);
    }

    /* loaded from: classes3.dex */
    public interface f {
        void a(View view, int i2);
    }

    public AutoScrollViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44915e = 5000;
        this.f44916f = 1;
        this.f44924n = new ArrayList();
        this.f44925o = new a();
        this.f44911a = 5000;
        this.f44913c = true;
        k();
    }

    static /* synthetic */ int c(AutoScrollViewPager autoScrollViewPager) {
        int i2 = autoScrollViewPager.f44917g;
        autoScrollViewPager.f44917g = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View j(int i2) {
        e eVar = this.f44926p;
        Objects.requireNonNull(eVar, "view is not null");
        return eVar.a(i2);
    }

    private void k() {
        int i2;
        this.f44917g = -1;
        this.f44918h = -1;
        int i4 = this.f44911a;
        if (i4 > 0 && i4 < 5000) {
            this.f44911a = 5000;
        }
        int i5 = this.f44912b;
        if (i5 <= 0 || i5 <= (i2 = this.f44911a)) {
            return;
        }
        this.f44912b = i2;
    }

    public void l(int i2, int i4, List<T> list) {
        this.f44925o.removeCallbacksAndMessages(null);
        setClipChildren(false);
        setBackgroundColor(0);
        this.f44914d = new ViewPager(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        layoutParams.setMargins(i2, 0, i2, 0);
        removeAllViews();
        this.f44914d.setClipChildren(false);
        this.f44914d.setLayoutParams(layoutParams);
        this.f44914d.setPageMargin(i4);
        this.f44914d.setPageTransformer(true, new d());
        this.f44914d.setOnTouchListener(this);
        if (this.f44924n.size() > 0) {
            this.f44924n.clear();
        }
        this.f44924n.addAll(list);
        addView(this.f44914d);
    }

    public void m() {
        this.f44917g = this.f44924n.size() * 1000;
        this.f44918h = -1;
        AutoScrollViewPager<T>.b bVar = new b(this, null);
        this.f44920j = bVar;
        this.f44914d.setOnPageChangeListener(bVar);
        AutoScrollViewPager<T>.c cVar = new c(this, null);
        this.f44919i = cVar;
        this.f44914d.setAdapter(cVar);
        this.f44919i.notifyDataSetChanged();
        this.f44914d.setCurrentItem(this.f44917g);
        this.f44925o.removeCallbacksAndMessages(null);
        this.f44925o.sendEmptyMessageDelayed(1, this.f44911a);
    }

    public void n() {
        Handler handler = this.f44925o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        f fVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            ((ViewGroup) view).requestDisallowInterceptTouchEvent(true);
            this.f44921k = motionEvent.getX();
            this.f44922l = motionEvent.getY();
            this.f44923m = System.currentTimeMillis();
            if (this.f44911a > 0 && this.f44913c) {
                this.f44925o.removeCallbacksAndMessages(null);
            }
        } else if (action == 1) {
            ((ViewGroup) view).requestDisallowInterceptTouchEvent(true);
            Math.abs(motionEvent.getX() - this.f44921k);
            Math.abs(motionEvent.getY() - this.f44922l);
            Math.abs(System.currentTimeMillis() - this.f44923m);
            if (Math.abs(motionEvent.getX() - this.f44921k) < 20.0f && Math.abs(motionEvent.getY() - this.f44922l) < 20.0f && System.currentTimeMillis() - this.f44923m < 200 && (fVar = this.f44927q) != null) {
                fVar.a(view, this.f44918h);
            }
            int i2 = this.f44911a;
            if (i2 > 0 && this.f44913c) {
                this.f44925o.sendEmptyMessageDelayed(1, i2);
            }
        } else if (action == 7) {
            ((ViewGroup) view).requestDisallowInterceptTouchEvent(true);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setLoopTime(int i2) {
        this.f44911a = i2;
    }

    public void setOnCreateItemViewListener(e eVar) {
        this.f44926p = eVar;
    }

    public void setOnItemClickListener(f fVar) {
        this.f44927q = fVar;
    }
}
