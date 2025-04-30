package me.relex.photodraweeview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.core.view.MotionEventCompat;
/* compiled from: ScaleDragDetector.java */
/* loaded from: classes5.dex */
public class i implements ScaleGestureDetector.OnScaleGestureListener {

    /* renamed from: k  reason: collision with root package name */
    private static final int f72677k = -1;

    /* renamed from: a  reason: collision with root package name */
    private final float f72678a;

    /* renamed from: b  reason: collision with root package name */
    private final float f72679b;

    /* renamed from: c  reason: collision with root package name */
    private final ScaleGestureDetector f72680c;

    /* renamed from: d  reason: collision with root package name */
    private final g f72681d;

    /* renamed from: e  reason: collision with root package name */
    private VelocityTracker f72682e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f72683f;

    /* renamed from: g  reason: collision with root package name */
    float f72684g;

    /* renamed from: h  reason: collision with root package name */
    float f72685h;

    /* renamed from: i  reason: collision with root package name */
    private int f72686i = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f72687j = 0;

    public i(Context context, g gVar) {
        this.f72680c = new ScaleGestureDetector(context, this);
        this.f72681d = gVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f72679b = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f72678a = viewConfiguration.getScaledTouchSlop();
    }

    private float a(MotionEvent motionEvent) {
        try {
            return MotionEventCompat.getX(motionEvent, this.f72687j);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    private float b(MotionEvent motionEvent) {
        try {
            return MotionEventCompat.getY(motionEvent, this.f72687j);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    private void e(int i2, MotionEvent motionEvent) {
        if (i2 != 0) {
            if (i2 == 1 || i2 == 3) {
                this.f72686i = -1;
            } else if (i2 == 6) {
                int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.f72686i) {
                    int i4 = actionIndex != 0 ? 0 : 1;
                    this.f72686i = MotionEventCompat.getPointerId(motionEvent, i4);
                    this.f72684g = MotionEventCompat.getX(motionEvent, i4);
                    this.f72685h = MotionEventCompat.getY(motionEvent, i4);
                }
            }
        } else {
            this.f72686i = motionEvent.getPointerId(0);
        }
        int i5 = this.f72686i;
        this.f72687j = MotionEventCompat.findPointerIndex(motionEvent, i5 != -1 ? i5 : 0);
    }

    private void f(int i2, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (i2 == 0) {
            VelocityTracker obtain = VelocityTracker.obtain();
            this.f72682e = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            }
            this.f72684g = a(motionEvent);
            this.f72685h = b(motionEvent);
            this.f72683f = false;
        } else if (i2 == 1) {
            if (this.f72683f && this.f72682e != null) {
                this.f72684g = a(motionEvent);
                this.f72685h = b(motionEvent);
                this.f72682e.addMovement(motionEvent);
                this.f72682e.computeCurrentVelocity(1000);
                float xVelocity = this.f72682e.getXVelocity();
                float yVelocity = this.f72682e.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f72679b) {
                    this.f72681d.d(this.f72684g, this.f72685h, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker2 = this.f72682e;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f72682e = null;
            }
        } else if (i2 != 2) {
            if (i2 == 3 && (velocityTracker = this.f72682e) != null) {
                velocityTracker.recycle();
                this.f72682e = null;
            }
        } else {
            float a4 = a(motionEvent);
            float b4 = b(motionEvent);
            float f4 = a4 - this.f72684g;
            float f5 = b4 - this.f72685h;
            if (!this.f72683f) {
                this.f72683f = Math.sqrt((double) ((f4 * f4) + (f5 * f5))) >= ((double) this.f72678a);
            }
            if (this.f72683f) {
                this.f72681d.a(f4, f5);
                this.f72684g = a4;
                this.f72685h = b4;
                VelocityTracker velocityTracker3 = this.f72682e;
                if (velocityTracker3 != null) {
                    velocityTracker3.addMovement(motionEvent);
                }
            }
        }
    }

    public boolean c() {
        return this.f72683f;
    }

    public boolean d() {
        return this.f72680c.isInProgress();
    }

    public boolean g(MotionEvent motionEvent) {
        this.f72680c.onTouchEvent(motionEvent);
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        e(actionMasked, motionEvent);
        f(actionMasked, motionEvent);
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
            return false;
        }
        this.f72681d.c(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.f72681d.b();
    }
}
