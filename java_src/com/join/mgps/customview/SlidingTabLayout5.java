package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.u0;
/* loaded from: classes3.dex */
public class SlidingTabLayout5 extends SlidingTabLayout1 {
    private int J;
    private int K;

    /* renamed from: n0  reason: collision with root package name */
    private int f46265n0;

    /* renamed from: o0  reason: collision with root package name */
    private int f46266o0;

    /* renamed from: p0  reason: collision with root package name */
    private Handler f46267p0;

    /* renamed from: q0  reason: collision with root package name */
    private c f46268q0;

    /* renamed from: r0  reason: collision with root package name */
    private int f46269r0;

    /* renamed from: s0  reason: collision with root package name */
    private ScrollType f46270s0;

    /* renamed from: t0  reason: collision with root package name */
    private int f46271t0;

    /* renamed from: u0  reason: collision with root package name */
    private Runnable f46272u0;

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
        final /* synthetic */ int f46273a;

        a(int i2) {
            this.f46273a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SlidingTabLayout5.this.h(this.f46273a, 0);
            ViewPager viewPager = SlidingTabLayout5.this.f46185f;
            if (viewPager != null) {
                viewPager.setCurrentItem(this.f46273a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SlidingTabLayout5.this.getScrollX() == SlidingTabLayout5.this.f46269r0) {
                u0.e("scrollRunnable", "停止滚动");
                SlidingTabLayout5.this.f46270s0 = ScrollType.IDLE;
                if (SlidingTabLayout5.this.f46268q0 != null) {
                    SlidingTabLayout5.this.f46268q0.a(SlidingTabLayout5.this.f46270s0);
                }
                if (SlidingTabLayout5.this.f46267p0 != null) {
                    SlidingTabLayout5.this.f46267p0.removeCallbacks(this);
                    return;
                }
                return;
            }
            u0.e("scrollRunnable", "Fling...");
            SlidingTabLayout5.this.f46270s0 = ScrollType.FLING;
            if (SlidingTabLayout5.this.f46268q0 != null) {
                SlidingTabLayout5.this.f46268q0.a(SlidingTabLayout5.this.f46270s0);
            }
            SlidingTabLayout5 slidingTabLayout5 = SlidingTabLayout5.this;
            slidingTabLayout5.f46269r0 = slidingTabLayout5.getScrollX();
            if (SlidingTabLayout5.this.f46267p0 != null) {
                SlidingTabLayout5.this.f46267p0.postDelayed(this, SlidingTabLayout5.this.f46271t0);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(ScrollType scrollType);
    }

    public SlidingTabLayout5(Context context) {
        super(context);
        this.f46269r0 = -9999999;
        this.f46270s0 = ScrollType.IDLE;
        this.f46271t0 = 50;
        this.f46272u0 = new b();
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
        textView.setTypeface(Typeface.DEFAULT, 1);
        textView.setTextSize(getContext().getResources().getDimensionPixelSize(R.dimen.wdp30));
        c(i2, textView);
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void e(Canvas canvas) {
        View childAt;
        int i2;
        int i4;
        if (isInEditMode() || this.f46186g == 0) {
            return;
        }
        int height = getHeight();
        this.f46189j.setColor(this.f46191l);
        float left = childAt.getLeft() * 1.0f;
        float right = this.f46184e.getChildAt(this.f46187h).getRight();
        if (this.f46188i > 0.0f && (i4 = this.f46187h) < this.f46186g - 1) {
            View childAt2 = this.f46184e.getChildAt(i4 + 1);
            float f4 = this.f46188i;
            left = (childAt2.getLeft() * f4) + ((1.0f - f4) * left);
            right = (childAt2.getRight() * f4) + ((1.0f - f4) * right);
        }
        int i5 = (int) (((right - left) - this.J) / 2.0f);
        int i6 = (height - this.K) - this.f46265n0;
        if (Build.VERSION.SDK_INT >= 21) {
            float f5 = i5;
            int i7 = this.f46266o0;
            canvas.drawRoundRect(left + f5, i6, right - f5, i6 + i2, i7, i7, this.f46189j);
        } else {
            float f6 = i5;
            RectF rectF = new RectF(left + f6, i6, right - f6, i6 + this.K);
            int i8 = this.f46266o0;
            canvas.drawRoundRect(rectF, i8, i8, this.f46189j);
        }
        this.f46189j.setColor(this.f46192m);
        canvas.drawRect(0.0f, height - this.f46199t, this.f46184e.getWidth(), height, this.f46189j);
        this.f46190k.setColor(this.f46193n);
        for (int i9 = 0; i9 < this.f46186g - 1; i9++) {
            View childAt3 = this.f46184e.getChildAt(i9);
            canvas.drawLine(childAt3.getRight(), this.f46200u, childAt3.getRight(), height - this.f46200u, this.f46190k);
        }
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void i() {
        for (int i2 = 0; i2 < this.f46186g; i2++) {
            View childAt = this.f46184e.getChildAt(i2);
            childAt.setBackgroundResource(this.E);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f46203x);
                textView.setTextColor(this.f46205z);
                ViewPager viewPager = this.f46185f;
                if (viewPager != null && i2 == viewPager.getCurrentItem()) {
                    textView.setTextColor(this.A);
                    textView.setTypeface(this.B, 1);
                } else {
                    textView.setTypeface(this.B, 0);
                }
                if (this.f46195p) {
                    if (Build.VERSION.SDK_INT >= 14) {
                        textView.setAllCaps(true);
                    } else {
                        textView.setText(textView.getText().toString().toUpperCase(this.F));
                    }
                }
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1) {
            Handler handler = this.f46267p0;
            if (handler != null) {
                handler.post(this.f46272u0);
            }
        } else if (action == 2) {
            ScrollType scrollType = ScrollType.TOUCH_SCROLL;
            this.f46270s0 = scrollType;
            c cVar = this.f46268q0;
            if (cVar != null) {
                cVar.a(scrollType);
            }
            Handler handler2 = this.f46267p0;
            if (handler2 != null) {
                handler2.removeCallbacks(this.f46272u0);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    void q(Context context) {
        this.f46194o = true;
        this.f46191l = -756480;
        this.f46205z = -5723992;
        this.A = -16777216;
        this.f46201v = 0;
        setHandler(new Handler());
        this.f46203x = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp30);
        this.J = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp20);
        this.K = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp6);
        this.f46265n0 = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp9);
        this.f46266o0 = getContext().getResources().getDimensionPixelOffset(R.dimen.wdp3);
        this.f46199t = 0;
    }

    public void setCurrentPosition(int i2) {
        this.f46187h = i2;
    }

    public void setHandler(Handler handler) {
        this.f46267p0 = handler;
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46183d = onPageChangeListener;
    }

    public void setOnScrollStateChangedListener(c cVar) {
        this.f46268q0 = cVar;
    }

    public SlidingTabLayout5(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46269r0 = -9999999;
        this.f46270s0 = ScrollType.IDLE;
        this.f46271t0 = 50;
        this.f46272u0 = new b();
        q(context);
    }

    public SlidingTabLayout5(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46269r0 = -9999999;
        this.f46270s0 = ScrollType.IDLE;
        this.f46271t0 = 50;
        this.f46272u0 = new b();
        q(context);
    }
}
