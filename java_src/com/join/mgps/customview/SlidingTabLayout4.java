package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.mgps.Util.u0;
/* loaded from: classes3.dex */
public class SlidingTabLayout4 extends SlidingTabLayout1 {
    private Handler J;
    private c K;

    /* renamed from: n0  reason: collision with root package name */
    private int f46258n0;

    /* renamed from: o0  reason: collision with root package name */
    private ScrollType f46259o0;

    /* renamed from: p0  reason: collision with root package name */
    private int f46260p0;

    /* renamed from: q0  reason: collision with root package name */
    private Runnable f46261q0;

    /* loaded from: classes3.dex */
    enum ScrollType {
        IDLE,
        TOUCH_SCROLL,
        FLING
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f46262a;

        a(int i2) {
            this.f46262a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SlidingTabLayout4.this.h(this.f46262a, 0);
            ViewPager viewPager = SlidingTabLayout4.this.f46185f;
            if (viewPager != null) {
                viewPager.setCurrentItem(this.f46262a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SlidingTabLayout4.this.getScrollX() == SlidingTabLayout4.this.f46258n0) {
                u0.e("scrollRunnable", "停止滚动");
                SlidingTabLayout4.this.f46259o0 = ScrollType.IDLE;
                if (SlidingTabLayout4.this.K != null) {
                    SlidingTabLayout4.this.K.a(SlidingTabLayout4.this.f46259o0);
                }
                if (SlidingTabLayout4.this.J != null) {
                    SlidingTabLayout4.this.J.removeCallbacks(this);
                    return;
                }
                return;
            }
            u0.e("scrollRunnable", "Fling...");
            SlidingTabLayout4.this.f46259o0 = ScrollType.FLING;
            if (SlidingTabLayout4.this.K != null) {
                SlidingTabLayout4.this.K.a(SlidingTabLayout4.this.f46259o0);
            }
            SlidingTabLayout4 slidingTabLayout4 = SlidingTabLayout4.this;
            slidingTabLayout4.f46258n0 = slidingTabLayout4.getScrollX();
            if (SlidingTabLayout4.this.J != null) {
                SlidingTabLayout4.this.J.postDelayed(this, SlidingTabLayout4.this.f46260p0);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(ScrollType scrollType);
    }

    public SlidingTabLayout4(Context context) {
        super(context);
        this.f46258n0 = -9999999;
        this.f46259o0 = ScrollType.IDLE;
        this.f46260p0 = 50;
        this.f46261q0 = new b();
        q(context);
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
        view.setOnClickListener(new a(i2));
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
        super.g();
        if (this.f46185f.getAdapter().getCount() <= 4) {
            setShouldExpand(true);
        } else {
            setShouldExpand(false);
        }
    }

    public int getCurrentPosition() {
        return this.f46187h;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1) {
            Handler handler = this.J;
            if (handler != null) {
                handler.post(this.f46261q0);
            }
        } else if (action == 2) {
            ScrollType scrollType = ScrollType.TOUCH_SCROLL;
            this.f46259o0 = scrollType;
            c cVar = this.K;
            if (cVar != null) {
                cVar.a(scrollType);
            }
            Handler handler2 = this.J;
            if (handler2 != null) {
                handler2.removeCallbacks(this.f46261q0);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    void q(Context context) {
        this.f46191l = -756480;
        setHandler(new Handler());
        this.f46199t = 0;
        this.f46201v = (int) TypedValue.applyDimension(1, 22.0f, getResources().getDisplayMetrics());
    }

    public void setCurrentPosition(int i2) {
        this.f46187h = i2;
    }

    public void setHandler(Handler handler) {
        this.J = handler;
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46183d = onPageChangeListener;
    }

    public void setOnScrollStateChangedListener(c cVar) {
        this.K = cVar;
    }

    public SlidingTabLayout4(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46258n0 = -9999999;
        this.f46259o0 = ScrollType.IDLE;
        this.f46260p0 = 50;
        this.f46261q0 = new b();
        q(context);
    }

    public SlidingTabLayout4(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46258n0 = -9999999;
        this.f46259o0 = ScrollType.IDLE;
        this.f46260p0 = 50;
        this.f46261q0 = new b();
        q(context);
    }
}
