package androidx.viewpager2.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
final class FakeDrag {

    /* renamed from: a  reason: collision with root package name */
    private final ViewPager2 f8118a;

    /* renamed from: b  reason: collision with root package name */
    private final ScrollEventAdapter f8119b;

    /* renamed from: c  reason: collision with root package name */
    private final RecyclerView f8120c;

    /* renamed from: d  reason: collision with root package name */
    private VelocityTracker f8121d;

    /* renamed from: e  reason: collision with root package name */
    private int f8122e;

    /* renamed from: f  reason: collision with root package name */
    private float f8123f;

    /* renamed from: g  reason: collision with root package name */
    private int f8124g;

    /* renamed from: h  reason: collision with root package name */
    private long f8125h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FakeDrag(ViewPager2 viewPager2, ScrollEventAdapter scrollEventAdapter, RecyclerView recyclerView) {
        this.f8118a = viewPager2;
        this.f8119b = scrollEventAdapter;
        this.f8120c = recyclerView;
    }

    private void a(long j4, int i2, float f4, float f5) {
        MotionEvent obtain = MotionEvent.obtain(this.f8125h, j4, i2, f4, f5, 0);
        this.f8121d.addMovement(obtain);
        obtain.recycle();
    }

    private void c() {
        VelocityTracker velocityTracker = this.f8121d;
        if (velocityTracker == null) {
            this.f8121d = VelocityTracker.obtain();
            this.f8122e = ViewConfiguration.get(this.f8118a.getContext()).getScaledMaximumFlingVelocity();
            return;
        }
        velocityTracker.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public boolean b() {
        if (this.f8119b.h()) {
            return false;
        }
        this.f8124g = 0;
        this.f8123f = 0;
        this.f8125h = SystemClock.uptimeMillis();
        c();
        this.f8119b.l();
        if (!this.f8119b.j()) {
            this.f8120c.stopScroll();
        }
        a(this.f8125h, 0, 0.0f, 0.0f);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public boolean d() {
        if (this.f8119b.i()) {
            this.f8119b.n();
            VelocityTracker velocityTracker = this.f8121d;
            velocityTracker.computeCurrentVelocity(1000, this.f8122e);
            if (this.f8120c.fling((int) velocityTracker.getXVelocity(), (int) velocityTracker.getYVelocity())) {
                return true;
            }
            this.f8118a.h();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public boolean e(float f4) {
        if (this.f8119b.i()) {
            float f5 = this.f8123f - f4;
            this.f8123f = f5;
            int round = Math.round(f5 - this.f8124g);
            this.f8124g += round;
            long uptimeMillis = SystemClock.uptimeMillis();
            boolean z3 = this.f8118a.getOrientation() == 0;
            int i2 = z3 ? round : 0;
            int i4 = z3 ? 0 : round;
            float f6 = z3 ? this.f8123f : 0.0f;
            float f7 = z3 ? 0.0f : this.f8123f;
            this.f8120c.scrollBy(i2, i4);
            a(uptimeMillis, 2, f6, f7);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f8119b.i();
    }
}
