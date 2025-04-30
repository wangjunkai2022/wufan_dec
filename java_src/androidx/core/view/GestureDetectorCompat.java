package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
/* loaded from: classes.dex */
public final class GestureDetectorCompat {

    /* renamed from: a  reason: collision with root package name */
    private final GestureDetectorCompatImpl f4761a;

    /* loaded from: classes.dex */
    interface GestureDetectorCompatImpl {
        boolean isLongpressEnabled();

        boolean onTouchEvent(MotionEvent motionEvent);

        void setIsLongpressEnabled(boolean z3);

        void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener);
    }

    /* loaded from: classes.dex */
    static class GestureDetectorCompatImplBase implements GestureDetectorCompatImpl {

        /* renamed from: v  reason: collision with root package name */
        private static final int f4762v = ViewConfiguration.getTapTimeout();

        /* renamed from: w  reason: collision with root package name */
        private static final int f4763w = ViewConfiguration.getDoubleTapTimeout();

        /* renamed from: x  reason: collision with root package name */
        private static final int f4764x = 1;

        /* renamed from: y  reason: collision with root package name */
        private static final int f4765y = 2;

        /* renamed from: z  reason: collision with root package name */
        private static final int f4766z = 3;

        /* renamed from: a  reason: collision with root package name */
        private int f4767a;

        /* renamed from: b  reason: collision with root package name */
        private int f4768b;

        /* renamed from: c  reason: collision with root package name */
        private int f4769c;

        /* renamed from: d  reason: collision with root package name */
        private int f4770d;

        /* renamed from: e  reason: collision with root package name */
        private final Handler f4771e;

        /* renamed from: f  reason: collision with root package name */
        final GestureDetector.OnGestureListener f4772f;

        /* renamed from: g  reason: collision with root package name */
        GestureDetector.OnDoubleTapListener f4773g;

        /* renamed from: h  reason: collision with root package name */
        boolean f4774h;

        /* renamed from: i  reason: collision with root package name */
        boolean f4775i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f4776j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f4777k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f4778l;

        /* renamed from: m  reason: collision with root package name */
        MotionEvent f4779m;

        /* renamed from: n  reason: collision with root package name */
        private MotionEvent f4780n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f4781o;

        /* renamed from: p  reason: collision with root package name */
        private float f4782p;

        /* renamed from: q  reason: collision with root package name */
        private float f4783q;

        /* renamed from: r  reason: collision with root package name */
        private float f4784r;

        /* renamed from: s  reason: collision with root package name */
        private float f4785s;

        /* renamed from: t  reason: collision with root package name */
        private boolean f4786t;

        /* renamed from: u  reason: collision with root package name */
        private VelocityTracker f4787u;

        GestureDetectorCompatImplBase(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.f4771e = new GestureHandler(handler);
            } else {
                this.f4771e = new GestureHandler();
            }
            this.f4772f = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                setOnDoubleTapListener((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            d(context);
        }

        private void a() {
            this.f4771e.removeMessages(1);
            this.f4771e.removeMessages(2);
            this.f4771e.removeMessages(3);
            this.f4787u.recycle();
            this.f4787u = null;
            this.f4781o = false;
            this.f4774h = false;
            this.f4777k = false;
            this.f4778l = false;
            this.f4775i = false;
            if (this.f4776j) {
                this.f4776j = false;
            }
        }

        private void b() {
            this.f4771e.removeMessages(1);
            this.f4771e.removeMessages(2);
            this.f4771e.removeMessages(3);
            this.f4781o = false;
            this.f4777k = false;
            this.f4778l = false;
            this.f4775i = false;
            if (this.f4776j) {
                this.f4776j = false;
            }
        }

        private void d(Context context) {
            if (context != null) {
                if (this.f4772f != null) {
                    this.f4786t = true;
                    ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                    int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                    int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
                    this.f4769c = viewConfiguration.getScaledMinimumFlingVelocity();
                    this.f4770d = viewConfiguration.getScaledMaximumFlingVelocity();
                    this.f4767a = scaledTouchSlop * scaledTouchSlop;
                    this.f4768b = scaledDoubleTapSlop * scaledDoubleTapSlop;
                    return;
                }
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
            throw new IllegalArgumentException("Context must not be null");
        }

        private boolean e(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (this.f4778l && motionEvent3.getEventTime() - motionEvent2.getEventTime() <= f4763w) {
                int x3 = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
                int y3 = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
                return (x3 * x3) + (y3 * y3) < this.f4768b;
            }
            return false;
        }

        void c() {
            this.f4771e.removeMessages(3);
            this.f4775i = false;
            this.f4776j = true;
            this.f4772f.onLongPress(this.f4779m);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean isLongpressEnabled() {
            return this.f4786t;
        }

        /* JADX WARN: Removed duplicated region for block: B:107:0x0208  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x021f  */
        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r13) {
            /*
                Method dump skipped, instructions count: 593
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImplBase.onTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setIsLongpressEnabled(boolean z3) {
            this.f4786t = z3;
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f4773g = onDoubleTapListener;
        }

        /* loaded from: classes.dex */
        private class GestureHandler extends Handler {
            GestureHandler() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    GestureDetectorCompatImplBase gestureDetectorCompatImplBase = GestureDetectorCompatImplBase.this;
                    gestureDetectorCompatImplBase.f4772f.onShowPress(gestureDetectorCompatImplBase.f4779m);
                } else if (i2 == 2) {
                    GestureDetectorCompatImplBase.this.c();
                } else if (i2 == 3) {
                    GestureDetectorCompatImplBase gestureDetectorCompatImplBase2 = GestureDetectorCompatImplBase.this;
                    GestureDetector.OnDoubleTapListener onDoubleTapListener = gestureDetectorCompatImplBase2.f4773g;
                    if (onDoubleTapListener != null) {
                        if (!gestureDetectorCompatImplBase2.f4774h) {
                            onDoubleTapListener.onSingleTapConfirmed(gestureDetectorCompatImplBase2.f4779m);
                        } else {
                            gestureDetectorCompatImplBase2.f4775i = true;
                        }
                    }
                } else {
                    throw new RuntimeException("Unknown message " + message);
                }
            }

            GestureHandler(Handler handler) {
                super(handler.getLooper());
            }
        }
    }

    /* loaded from: classes.dex */
    static class GestureDetectorCompatImplJellybeanMr2 implements GestureDetectorCompatImpl {

        /* renamed from: a  reason: collision with root package name */
        private final GestureDetector f4789a;

        GestureDetectorCompatImplJellybeanMr2(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f4789a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean isLongpressEnabled() {
            return this.f4789a.isLongpressEnabled();
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.f4789a.onTouchEvent(motionEvent);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setIsLongpressEnabled(boolean z3) {
            this.f4789a.setIsLongpressEnabled(z3);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f4789a.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public boolean isLongpressEnabled() {
        return this.f4761a.isLongpressEnabled();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f4761a.onTouchEvent(motionEvent);
    }

    public void setIsLongpressEnabled(boolean z3) {
        this.f4761a.setIsLongpressEnabled(z3);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f4761a.setOnDoubleTapListener(onDoubleTapListener);
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.f4761a = new GestureDetectorCompatImplJellybeanMr2(context, onGestureListener, handler);
        } else {
            this.f4761a = new GestureDetectorCompatImplBase(context, onGestureListener, handler);
        }
    }
}
