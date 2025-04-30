package org.ppsspp.ppsspp;

import android.annotation.TargetApi;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.SurfaceView;
import com.bda.controller.Controller;
import com.bda.controller.KeyEvent;
import com.bda.controller.StateEvent;
import com.umeng.analytics.pro.ai;
import org.ppsspp.ppsspp.NativeGLView;
/* loaded from: classes5.dex */
public class NativeSurfaceView extends SurfaceView implements SensorEventListener, com.bda.controller.b {

    /* renamed from: l  reason: collision with root package name */
    private static String f73800l = "NativeSurfaceView";

    /* renamed from: m  reason: collision with root package name */
    public static final int f73801m = 0;

    /* renamed from: n  reason: collision with root package name */
    public static final int f73802n = 1;

    /* renamed from: o  reason: collision with root package name */
    public static final int f73803o = 2;

    /* renamed from: p  reason: collision with root package name */
    public static final int f73804p = 3;

    /* renamed from: q  reason: collision with root package name */
    public static final int f73805q = 4;

    /* renamed from: r  reason: collision with root package name */
    public static final int f73806r = 5;

    /* renamed from: s  reason: collision with root package name */
    public static final int f73807s = 6;

    /* renamed from: t  reason: collision with root package name */
    public static final int f73808t = 7;

    /* renamed from: u  reason: collision with root package name */
    public static final int f73809u = 8;

    /* renamed from: v  reason: collision with root package name */
    private static final float f73810v = 15.0f;

    /* renamed from: a  reason: collision with root package name */
    private SensorManager f73811a;

    /* renamed from: b  reason: collision with root package name */
    private Sensor f73812b;

    /* renamed from: c  reason: collision with root package name */
    private Controller f73813c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f73814d;

    /* renamed from: e  reason: collision with root package name */
    private int f73815e;

    /* renamed from: f  reason: collision with root package name */
    private float f73816f;

    /* renamed from: g  reason: collision with root package name */
    private float f73817g;

    /* renamed from: h  reason: collision with root package name */
    private long f73818h;

    /* renamed from: i  reason: collision with root package name */
    private float f73819i;

    /* renamed from: j  reason: collision with root package name */
    private GestureDetector f73820j;

    /* renamed from: k  reason: collision with root package name */
    NativeGLView.a f73821k;

    /* loaded from: classes5.dex */
    interface a {
        void getMode(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            super.onLongPress(motionEvent);
            if (NativeSurfaceView.this.f73815e == 7 || NativeSurfaceView.this.f73815e == 8) {
                return;
            }
            NativeSurfaceView.this.f73815e = 6;
            NativeSurfaceView nativeSurfaceView = NativeSurfaceView.this;
            NativeGLView.a aVar = nativeSurfaceView.f73821k;
            if (aVar != null) {
                aVar.getMode(nativeSurfaceView.f73815e);
            }
        }
    }

    public NativeSurfaceView(NativeActivity nativeActivity) {
        super(nativeActivity);
        this.f73813c = null;
        this.f73814d = false;
        SensorManager sensorManager = (SensorManager) nativeActivity.getSystemService(ai.ac);
        this.f73811a = sensorManager;
        this.f73812b = sensorManager.getDefaultSensor(1);
        Controller controller = Controller.getInstance(nativeActivity);
        this.f73813c = controller;
        try {
            f.a(controller, nativeActivity);
            this.f73813c.setListener(this, new Handler());
        } catch (Exception unused) {
        }
        e();
    }

    private void c(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() >= 2) {
            float x3 = motionEvent.getX(0) - motionEvent.getX(1);
            float y3 = motionEvent.getY(0) - motionEvent.getY(1);
            float sqrt = (float) Math.sqrt((x3 * x3) + (y3 * y3));
            if (this.f73819i == 0.0f) {
                this.f73819i = sqrt;
            } else if (System.currentTimeMillis() - this.f73818h <= 50 || Math.abs(sqrt - this.f73819i) <= 15.0f) {
                return;
            } else {
                if (sqrt / this.f73819i > 1.0f) {
                    this.f73815e = 7;
                } else {
                    this.f73815e = 8;
                }
                this.f73818h = System.currentTimeMillis();
                this.f73816f = motionEvent.getX();
                this.f73817g = motionEvent.getY();
                this.f73819i = sqrt;
                return;
            }
        }
        float abs = Math.abs(motionEvent.getX() - this.f73816f);
        float abs2 = Math.abs(motionEvent.getY() - motionEvent.getY());
        if (System.currentTimeMillis() - this.f73818h > 1500 && Math.abs(abs) < 15.0f && Math.abs(abs2) < 15.0f) {
            this.f73815e = 6;
        } else if (System.currentTimeMillis() - this.f73818h > 50) {
            float x4 = motionEvent.getX() - this.f73816f;
            float y4 = motionEvent.getY() - this.f73817g;
            if (Math.abs(x4) > Math.abs(y4)) {
                if (x4 > 0.0f) {
                    this.f73815e = 3;
                } else {
                    this.f73815e = 2;
                }
            } else if (y4 > 0.0f) {
                this.f73815e = 5;
            } else {
                this.f73815e = 4;
            }
            this.f73818h = System.currentTimeMillis();
            this.f73816f = motionEvent.getX();
            this.f73817g = motionEvent.getY();
        }
    }

    @TargetApi(14)
    private int d(MotionEvent motionEvent, int i2) {
        return motionEvent.getToolType(i2);
    }

    private void e() {
        this.f73820j = new GestureDetector(getContext(), new b());
    }

    public void f() {
        Controller controller = this.f73813c;
        if (controller != null) {
            controller.exit();
        }
    }

    public void g() {
        this.f73811a.unregisterListener(this);
        Controller controller = this.f73813c;
        if (controller != null) {
            controller.onPause();
        }
    }

    public void h() {
        this.f73811a.registerListener(this, this.f73812b, 1);
        Controller controller = this.f73813c;
        if (controller != null) {
            controller.onResume();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
        if (r0 != 6) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean i(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getAction()
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 1
            if (r0 == 0) goto L37
            r2 = 0
            if (r0 == r1) goto L2d
            r3 = 2
            if (r0 == r3) goto L20
            r5 = 3
            if (r0 == r5) goto L16
            r5 = 6
            if (r0 == r5) goto L2d
            goto L5c
        L16:
            r4.f73815e = r2
            org.ppsspp.ppsspp.NativeGLView$a r5 = r4.f73821k
            if (r5 == 0) goto L5c
            r5.getMode(r2)
            goto L5c
        L20:
            r4.c(r5)
            org.ppsspp.ppsspp.NativeGLView$a r5 = r4.f73821k
            if (r5 == 0) goto L5c
            int r0 = r4.f73815e
            r5.getMode(r0)
            goto L5c
        L2d:
            r4.f73815e = r2
            org.ppsspp.ppsspp.NativeGLView$a r5 = r4.f73821k
            if (r5 == 0) goto L5c
            r5.getMode(r2)
            goto L5c
        L37:
            android.view.GestureDetector r0 = r4.f73820j
            r0.onTouchEvent(r5)
            r4.f73815e = r1
            float r0 = r5.getRawX()
            r4.f73816f = r0
            float r5 = r5.getRawY()
            r4.f73817g = r5
            long r2 = java.lang.System.currentTimeMillis()
            r4.f73818h = r2
            r5 = 0
            r4.f73819i = r5
            org.ppsspp.ppsspp.NativeGLView$a r5 = r4.f73821k
            if (r5 == 0) goto L5c
            int r0 = r4.f73815e
            r5.getMode(r0)
        L5c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ppsspp.ppsspp.NativeSurfaceView.i(android.view.MotionEvent):boolean");
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // com.bda.controller.b
    public void onKeyEvent(KeyEvent keyEvent) {
        if (!this.f73814d) {
            switch (keyEvent.d()) {
                case 19:
                case 20:
                case 21:
                case 22:
                    return;
            }
        }
        int c4 = keyEvent.c();
        if (c4 == 0) {
            NativeApp.keyDown(10, keyEvent.d(), false);
        } else if (c4 != 1) {
        } else {
            NativeApp.keyUp(10, keyEvent.d());
        }
    }

    @Override // com.bda.controller.b
    public void onMotionEvent(com.bda.controller.MotionEvent motionEvent) {
        NativeApp.joystickAxis(10, 0, motionEvent.d(0));
        NativeApp.joystickAxis(10, 1, motionEvent.d(1));
        NativeApp.joystickAxis(10, 11, motionEvent.d(11));
        NativeApp.joystickAxis(10, 14, motionEvent.d(14));
        NativeApp.joystickAxis(10, 17, motionEvent.d(17));
        NativeApp.joystickAxis(10, 18, motionEvent.d(18));
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() != 1) {
            return;
        }
        float[] fArr = sensorEvent.values;
        NativeApp.accelerometer(fArr[0], fArr[1], fArr[2]);
    }

    @Override // com.bda.controller.b
    public void onStateEvent(StateEvent stateEvent) {
        int d4 = stateEvent.d();
        if (d4 != 1) {
            if (d4 != 2) {
                return;
            }
            stateEvent.c();
            return;
        }
        int c4 = stateEvent.c();
        if (c4 == 0) {
            NativeApp.sendMessage("moga", "");
        } else if (c4 != 1) {
        } else {
            if (this.f73813c.getState(4) == 0) {
                NativeApp.sendMessage("moga", "Moga");
                return;
            }
            this.f73814d = true;
            NativeApp.sendMessage("moga", "MogaPro");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
        if (r6 != 6) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0037, code lost:
        if (r10.getActionIndex() == r3) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0053 A[SYNTHETIC] */
    @Override // android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 1
            r2 = 0
            r3 = 14
            if (r0 < r3) goto La
            r0 = 1
            goto Lb
        La:
            r0 = 0
        Lb:
            r3 = 0
            r4 = 0
        Ld:
            int r5 = r10.getPointerCount()
            if (r3 >= r5) goto L56
            int r5 = r10.getPointerId(r3)
            int r6 = r10.getActionMasked()
            r7 = 2
            if (r6 == 0) goto L33
            if (r6 == r1) goto L2b
            if (r6 == r7) goto L29
            r8 = 5
            if (r6 == r8) goto L33
            r7 = 6
            if (r6 == r7) goto L2b
            goto L3a
        L29:
            r7 = 1
            goto L3b
        L2b:
            int r6 = r10.getActionIndex()
            if (r6 != r3) goto L3a
            r7 = 4
            goto L3b
        L33:
            int r6 = r10.getActionIndex()
            if (r6 != r3) goto L3a
            goto L3b
        L3a:
            r7 = 0
        L3b:
            if (r7 == 0) goto L53
            if (r0 == 0) goto L46
            int r6 = r9.d(r10, r3)
            int r6 = r6 << 10
            r7 = r7 | r6
        L46:
            float r6 = r10.getX(r3)
            float r8 = r10.getY(r3)
            boolean r5 = org.ppsspp.ppsspp.NativeApp.touch(r6, r8, r7, r5)
            int r4 = r4 + r5
        L53:
            int r3 = r3 + 1
            goto Ld
        L56:
            if (r4 <= 0) goto L59
            goto L5a
        L59:
            r1 = 0
        L5a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ppsspp.ppsspp.NativeSurfaceView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setListener(NativeGLView.a aVar) {
        this.f73821k = aVar;
    }
}
