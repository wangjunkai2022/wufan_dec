package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.mgps.Util.u0;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SlidingTabForumLayout extends SlidingTabLayout1 {
    private List<ForumBean.ForumTabBean> J;
    private e K;

    /* renamed from: n0  reason: collision with root package name */
    private Handler f46153n0;

    /* renamed from: o0  reason: collision with root package name */
    private f f46154o0;

    /* renamed from: p0  reason: collision with root package name */
    private int f46155p0;

    /* renamed from: q0  reason: collision with root package name */
    private ScrollType f46156q0;

    /* renamed from: r0  reason: collision with root package name */
    private int f46157r0;

    /* renamed from: s0  reason: collision with root package name */
    private Runnable f46158s0;

    /* loaded from: classes3.dex */
    enum ScrollType {
        IDLE,
        TOUCH_SCROLL,
        FLING
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements f {
        a() {
        }

        @Override // com.join.mgps.customview.SlidingTabForumLayout.f
        public void a(ScrollType scrollType) {
            SlidingTabForumLayout.this.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @SuppressLint({"NewApi"})
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 16) {
                SlidingTabForumLayout.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else {
                SlidingTabForumLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            SlidingTabForumLayout slidingTabForumLayout = SlidingTabForumLayout.this;
            slidingTabForumLayout.h(slidingTabForumLayout.f46187h, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f46161a;

        c(int i2) {
            this.f46161a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SlidingTabForumLayout.this.h(this.f46161a, 0);
            if (SlidingTabForumLayout.this.K != null) {
                SlidingTabForumLayout.this.K.onItemClick(this.f46161a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SlidingTabForumLayout.this.getScrollX() == SlidingTabForumLayout.this.f46155p0) {
                u0.e("scrollRunnable", "停止滚动");
                SlidingTabForumLayout.this.f46156q0 = ScrollType.IDLE;
                if (SlidingTabForumLayout.this.f46154o0 != null) {
                    SlidingTabForumLayout.this.f46154o0.a(SlidingTabForumLayout.this.f46156q0);
                }
                if (SlidingTabForumLayout.this.f46153n0 != null) {
                    SlidingTabForumLayout.this.f46153n0.removeCallbacks(this);
                    return;
                }
                return;
            }
            u0.e("scrollRunnable", "Fling...");
            SlidingTabForumLayout.this.f46156q0 = ScrollType.FLING;
            if (SlidingTabForumLayout.this.f46154o0 != null) {
                SlidingTabForumLayout.this.f46154o0.a(SlidingTabForumLayout.this.f46156q0);
            }
            SlidingTabForumLayout slidingTabForumLayout = SlidingTabForumLayout.this;
            slidingTabForumLayout.f46155p0 = slidingTabForumLayout.getScrollX();
            if (SlidingTabForumLayout.this.f46153n0 != null) {
                SlidingTabForumLayout.this.f46153n0.postDelayed(this, SlidingTabForumLayout.this.f46157r0);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void a(int i2, int i4, int i5);

        void onItemClick(int i2);
    }

    /* loaded from: classes3.dex */
    public interface f {
        void a(ScrollType scrollType);
    }

    public SlidingTabForumLayout(Context context) {
        super(context);
        this.f46155p0 = -9999999;
        this.f46156q0 = ScrollType.IDLE;
        this.f46157r0 = 50;
        this.f46158s0 = new d();
        s(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        e eVar = this.K;
        if (eVar != null) {
            eVar.a(getCurrentPosition(), getScrollOffset(), getScrollX());
        }
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void b(int i2, int i4) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(i4);
        c(i2, imageButton);
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void c(int i2, View view) {
        view.setFocusable(true);
        view.setOnClickListener(new c(i2));
        int i4 = this.f46201v;
        view.setPadding(i4, 0, i4, 0);
        this.f46184e.addView(view, i2, this.f46194o ? this.f46181b : this.f46180a);
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void d(int i2, String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setGravity(17);
        textView.setSingleLine();
        c(i2, textView);
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void g() {
        this.f46184e.removeAllViews();
        List<ForumBean.ForumTabBean> list = this.J;
        this.f46186g = list == null ? 0 : list.size();
        for (int i2 = 0; i2 < this.f46186g; i2++) {
            d(i2, this.J.get(i2).getTab_name().toString());
        }
        i();
        getViewTreeObserver().addOnGlobalLayoutListener(new b());
    }

    public int getCurrentPosition() {
        return this.f46187h;
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void h(int i2, int i4) {
        this.f46187h = i2;
        this.f46188i = 0.0f;
        if (this.f46184e.getChildAt(i2) != null) {
            int i5 = this.f46187h;
            super.h(i5, (int) (this.f46188i * this.f46184e.getChildAt(i5).getWidth()));
        }
        t();
        invalidate();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1) {
            Handler handler = this.f46153n0;
            if (handler != null) {
                handler.post(this.f46158s0);
            }
        } else if (action == 2) {
            ScrollType scrollType = ScrollType.TOUCH_SCROLL;
            this.f46156q0 = scrollType;
            f fVar = this.f46154o0;
            if (fVar != null) {
                fVar.a(scrollType);
            }
            Handler handler2 = this.f46153n0;
            if (handler2 != null) {
                handler2.removeCallbacks(this.f46158s0);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    void s(Context context) {
        this.f46191l = -756480;
        setHandler(new Handler());
        setOnScrollStateChangedListener(new a());
    }

    public void setCurrentPosition(int i2) {
        this.f46187h = i2;
    }

    public void setHandler(Handler handler) {
        this.f46153n0 = handler;
    }

    public void setItem(List<ForumBean.ForumTabBean> list) {
        List<ForumBean.ForumTabBean> list2 = this.J;
        if (list2 != null) {
            list2.clear();
        }
        if (this.J == null) {
            this.J = new ArrayList();
        }
        if (list == null || list.size() == 0) {
            return;
        }
        this.J.addAll(list);
        g();
    }

    public void setOnForumSlidingTabListener(e eVar) {
        this.K = eVar;
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46183d = onPageChangeListener;
    }

    public void setOnScrollStateChangedListener(f fVar) {
        this.f46154o0 = fVar;
    }

    public SlidingTabForumLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46155p0 = -9999999;
        this.f46156q0 = ScrollType.IDLE;
        this.f46157r0 = 50;
        this.f46158s0 = new d();
        s(context);
    }

    public SlidingTabForumLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46155p0 = -9999999;
        this.f46156q0 = ScrollType.IDLE;
        this.f46157r0 = 50;
        this.f46158s0 = new d();
        s(context);
    }
}
