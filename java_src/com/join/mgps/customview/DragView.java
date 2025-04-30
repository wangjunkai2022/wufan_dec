package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class DragView extends ImageView implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private int f45379a;

    /* renamed from: b  reason: collision with root package name */
    private int f45380b;

    /* renamed from: c  reason: collision with root package name */
    private Context f45381c;

    /* renamed from: d  reason: collision with root package name */
    private int f45382d;

    /* renamed from: e  reason: collision with root package name */
    private int f45383e;

    /* renamed from: f  reason: collision with root package name */
    private int f45384f;

    /* renamed from: g  reason: collision with root package name */
    private int f45385g;

    /* renamed from: h  reason: collision with root package name */
    private ViewGroup.MarginLayoutParams f45386h;

    /* renamed from: i  reason: collision with root package name */
    private int f45387i;

    /* renamed from: j  reason: collision with root package name */
    private int f45388j;

    /* renamed from: k  reason: collision with root package name */
    private int f45389k;

    /* renamed from: l  reason: collision with root package name */
    private int f45390l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f45391m;

    /* renamed from: n  reason: collision with root package name */
    private c f45392n;

    /* renamed from: o  reason: collision with root package name */
    private int f45393o;

    /* renamed from: p  reason: collision with root package name */
    private int f45394p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DragView dragView = DragView.this;
            dragView.f45386h = (ViewGroup.MarginLayoutParams) dragView.getLayoutParams();
            DragView.this.f45386h.topMargin = DragView.this.f45380b - (DragView.this.getHeight() * 2);
            DragView.this.f45386h.leftMargin = DragView.this.f45379a - DragView.this.getWidth();
            DragView dragView2 = DragView.this;
            dragView2.setLayoutParams(dragView2.f45386h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f45396a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f45397b;

        b(boolean z3, int i2) {
            this.f45396a = z3;
            this.f45397b = i2;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (this.f45396a) {
                DragView.this.f45386h.leftMargin = (int) (this.f45397b * (1.0f - valueAnimator.getAnimatedFraction()));
            } else {
                DragView.this.f45386h.leftMargin = (int) (this.f45397b + (((DragView.this.f45379a - this.f45397b) - DragView.this.getWidth()) * valueAnimator.getAnimatedFraction()));
            }
            DragView dragView = DragView.this;
            dragView.setLayoutParams(dragView.f45386h);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a();
    }

    public DragView(Context context) {
        this(context, null);
    }

    public void e() {
        setOnTouchListener(this);
        post(new a());
    }

    public void f(int i2, int i4, boolean z3) {
        ValueAnimator duration = ValueAnimator.ofFloat(i2, i4).setDuration(400L);
        duration.addUpdateListener(new b(z3, i2));
        duration.start();
    }

    public int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f45382d = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            this.f45383e = rawY;
            this.f45387i = this.f45382d;
            this.f45388j = rawY;
        } else if (action == 1) {
            if (this.f45391m) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
                this.f45386h = marginLayoutParams;
                marginLayoutParams.topMargin = this.f45385g;
                setLayoutParams(marginLayoutParams);
            }
            this.f45389k = (int) motionEvent.getRawX();
            this.f45390l = (int) motionEvent.getRawY();
            if (Math.abs(this.f45387i - this.f45389k) < 6 && Math.abs(this.f45388j - this.f45390l) < 6) {
                return false;
            }
            int width = this.f45384f + (view.getWidth() / 2);
            int i2 = this.f45379a;
            if (width < i2 / 2) {
                f(this.f45384f, i2 / 2, true);
            } else {
                f(this.f45384f, i2 / 2, false);
            }
        } else if (action == 2) {
            this.f45391m = true;
            int rawX = ((int) motionEvent.getRawX()) - this.f45382d;
            int rawY2 = ((int) motionEvent.getRawY()) - this.f45383e;
            this.f45384f = view.getLeft() + rawX;
            this.f45385g = view.getTop() + rawY2;
            int right = view.getRight() + rawX;
            int bottom = view.getBottom() + rawY2;
            if (this.f45384f < 0) {
                this.f45384f = 0;
                right = 0 + view.getWidth();
            }
            int i4 = this.f45379a;
            if (right > i4) {
                this.f45384f = i4 - view.getWidth();
                right = i4;
            }
            int i5 = this.f45385g;
            int i6 = this.f45393o;
            if (i5 < i6) {
                this.f45385g = i6;
                bottom = view.getHeight() + i6;
            }
            int i7 = this.f45380b;
            if (bottom > i7) {
                this.f45385g = i7 - view.getHeight();
                bottom = i7;
            }
            view.layout(this.f45384f, this.f45385g, right, bottom);
            this.f45382d = (int) motionEvent.getRawX();
            this.f45383e = (int) motionEvent.getRawY();
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        StringBuilder sb = new StringBuilder();
        sb.append("onTouchEvent:");
        sb.append(motionEvent.getAction());
        if (this.f45392n != null && motionEvent.getAction() == 1) {
            this.f45392n.a();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(">>>>>>>>>onTouchEvent:");
            sb2.append(motionEvent.getAction());
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setOnDragViewClickListener(c cVar) {
        this.f45392n = cVar;
    }

    public DragView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45391m = false;
        this.f45381c = context;
        this.f45394p = getStatusBarHeight();
        this.f45393o = (int) getResources().getDimension(R.dimen.wdp172);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f45379a = displayMetrics.widthPixels;
        this.f45380b = (displayMetrics.heightPixels - this.f45394p) - ((int) getResources().getDimension(R.dimen.wdp100));
        e();
    }
}
