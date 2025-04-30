package com.papa.controller.core;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.papa.controller.core.ControllerManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: ControllerMonitor.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: q  reason: collision with root package name */
    private static d f54777q;

    /* renamed from: b  reason: collision with root package name */
    private Context f54779b;

    /* renamed from: c  reason: collision with root package name */
    private c f54780c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f54781d;

    /* renamed from: p  reason: collision with root package name */
    private Map<String, e> f54793p;

    /* renamed from: a  reason: collision with root package name */
    private final String f54778a = getClass().getSimpleName();

    /* renamed from: e  reason: collision with root package name */
    private boolean f54782e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54783f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54784g = false;

    /* renamed from: h  reason: collision with root package name */
    private int f54785h = -1;

    /* renamed from: i  reason: collision with root package name */
    private ControllerManager f54786i = null;

    /* renamed from: j  reason: collision with root package name */
    private ControllerManager.d f54787j = null;

    /* renamed from: k  reason: collision with root package name */
    private Handler f54788k = null;

    /* renamed from: l  reason: collision with root package name */
    private final int f54789l = 1;

    /* renamed from: m  reason: collision with root package name */
    private final int f54790m = 2;

    /* renamed from: n  reason: collision with root package name */
    private final int f54791n = 3;

    /* renamed from: o  reason: collision with root package name */
    private final int f54792o = 4;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ControllerMonitor.java */
    /* loaded from: classes4.dex */
    public class a extends Handler {
        a() {
        }

        void a(ControllerManager.c cVar) {
            if (!d.this.f54783f || !d.this.f54782e || cVar == null || cVar.b() == null) {
                return;
            }
            Object b4 = cVar.b();
            if (b4 instanceof BluetoothDevice) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) b4;
                String address = bluetoothDevice.getAddress();
                String name = bluetoothDevice.getName();
                if (d.this.f54793p.containsKey(address)) {
                    d.this.m((e) d.this.f54793p.get(address));
                    return;
                }
                e eVar = new e(d.this.f54779b, address, name);
                eVar.E(d.this.f54780c);
                d.this.f54793p.put(address, eVar);
                d.this.D(eVar);
            }
        }

        void b(ControllerManager.c cVar) {
            if (cVar == null || cVar.b() == null) {
                return;
            }
            Object b4 = cVar.b();
            if (b4 instanceof BluetoothDevice) {
                String address = ((BluetoothDevice) b4).getAddress();
                if (d.this.f54793p.containsKey(address)) {
                    d.this.H((e) d.this.f54793p.get(address));
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 1) {
                Object obj = message.obj;
                if (obj != null) {
                    a((ControllerManager.c) obj);
                }
            } else if (i2 == 2) {
                Object obj2 = message.obj;
                if (obj2 != null) {
                    b((ControllerManager.c) obj2);
                }
            } else if (i2 != 3) {
                if (i2 == 4 && d.this.f54787j != null) {
                    d.this.f54787j.b((ControllerManager.c) message.obj);
                }
            } else if (d.this.f54787j != null) {
                d.this.f54787j.a((ControllerManager.c) message.obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ControllerMonitor.java */
    /* loaded from: classes4.dex */
    public class b implements ControllerManager.d {
        b() {
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void a(ControllerManager.c cVar) {
            if (d.this.f54788k != null) {
                d.this.f54788k.obtainMessage(3, -1, -1, cVar).sendToTarget();
            }
            c(cVar);
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void b(ControllerManager.c cVar) {
            if (d.this.f54788k != null) {
                d.this.f54788k.obtainMessage(4, -1, -1, cVar).sendToTarget();
            }
        }

        void c(ControllerManager.c cVar) {
            if (!d.this.f54783f || !d.this.f54782e || cVar == null || cVar.b() == null) {
                return;
            }
            Object b4 = cVar.b();
            if (b4 instanceof BluetoothDevice) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) b4;
                String address = bluetoothDevice.getAddress();
                String name = bluetoothDevice.getName();
                if (d.this.f54793p.containsKey(address)) {
                    d.this.m((e) d.this.f54793p.get(address));
                    return;
                }
                e eVar = new e(d.this.f54779b, address, name);
                eVar.E(d.this.f54780c);
                eVar.F(d.this.f54781d);
                eVar.G(d.this.f54784g);
                d.this.f54793p.put(address, eVar);
                d.this.D(eVar);
            }
        }
    }

    public d(Context context) {
        this.f54779b = context;
    }

    private void A() {
        if (this.f54793p == null) {
            this.f54793p = new HashMap();
        }
        Context context = this.f54779b;
        if (context == null) {
            return;
        }
        if (this.f54786i == null) {
            this.f54786i = new ControllerManager(context);
            this.f54788k = new a();
            this.f54786i.c(new b());
        }
        this.f54786i.u();
    }

    private void C() {
        Map<String, e> map = this.f54793p;
        if (map == null) {
            return;
        }
        for (e eVar : map.values()) {
            if (!eVar.y()) {
                D(eVar);
            } else if (eVar.x()) {
                D(eVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(e eVar) {
        if (eVar == null) {
            return;
        }
        try {
            m(eVar);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void E() {
        ControllerManager controllerManager = this.f54786i;
        if (controllerManager != null) {
            controllerManager.x();
        }
    }

    private void G() {
        Map<String, e> map = this.f54793p;
        if (map == null) {
            return;
        }
        for (e eVar : map.values()) {
            H(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(e eVar) {
        if (eVar == null) {
            return;
        }
        try {
            eVar.n();
            eVar.K();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m(e eVar) {
        if (eVar != null && eVar.u() != null) {
            String[] strArr = {"mocute"};
            String G = eVar.u().G();
            if (!TextUtils.isEmpty(G)) {
                G.toLowerCase().contains(strArr[0]);
            }
        }
        return false;
    }

    public static d r(Context context) {
        if (f54777q == null) {
            f54777q = new d(context);
        }
        return f54777q;
    }

    private PadMotionEvent t(int i2, String str, int i4, float f4, float f5) {
        try {
            return new PadMotionEvent(System.currentTimeMillis(), i2, str, i4, f4, f5);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private void z(String str, int i2, int i4) {
        if (this.f54793p.containsKey(str)) {
            this.f54793p.get(str).H(i2, i4);
        }
    }

    public void B() {
        this.f54782e = true;
        A();
        C();
    }

    public void F() {
        this.f54782e = false;
        E();
        G();
    }

    @TargetApi(12)
    public boolean n(MotionEvent motionEvent) {
        int deviceId = motionEvent.getDeviceId();
        if (motionEvent.getDevice() != null) {
            String name = motionEvent.getDevice().getName();
            float axisValue = motionEvent.getAxisValue(0);
            float axisValue2 = motionEvent.getAxisValue(1);
            float axisValue3 = motionEvent.getAxisValue(11);
            float axisValue4 = motionEvent.getAxisValue(14);
            if ((motionEvent.getAction() & 255) == 2) {
                c cVar = this.f54780c;
                if (cVar != null) {
                    cVar.F(axisValue, axisValue2, t(deviceId, name, 200, axisValue, axisValue2));
                    this.f54780c.G(axisValue3, axisValue4, t(deviceId, name, 201, axisValue3, axisValue4));
                }
                motionEvent.getAxisValue(17);
                motionEvent.getAxisValue(18);
                return s(motionEvent) == 0;
            }
            return false;
        }
        return false;
    }

    public boolean o(KeyEvent keyEvent) {
        int i2 = keyEvent.getAction() == 0 ? 1 : 0;
        long currentTimeMillis = System.currentTimeMillis();
        int i4 = this.f54785h;
        String name = keyEvent.getDevice().getName();
        int keyCode = keyEvent.getKeyCode();
        PadKeyEvent padKeyEvent = new PadKeyEvent(currentTimeMillis, i4, name, keyCode, i2 ^ 1, i2 != 0 ? 1.0f : 0.0f);
        c cVar = this.f54780c;
        if (cVar != null) {
            if (i2 != 0) {
                cVar.h(keyCode, padKeyEvent);
            } else {
                cVar.R(keyCode, padKeyEvent);
            }
        }
        return true;
    }

    public int p() {
        ControllerManager controllerManager = this.f54786i;
        if (controllerManager != null) {
            return controllerManager.e();
        }
        return 0;
    }

    public List<ControllerManager.c> q() {
        ControllerManager controllerManager = this.f54786i;
        if (controllerManager != null) {
            return controllerManager.f();
        }
        return null;
    }

    @TargetApi(12)
    int s(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(15);
        float axisValue2 = motionEvent.getAxisValue(16);
        int i2 = axisValue == -1.0f ? 21 : axisValue == 1.0f ? 22 : 0;
        return axisValue2 == -1.0f ? i2 | 19 : axisValue2 == 1.0f ? i2 | 20 : i2;
    }

    public void u() {
        this.f54780c = null;
        this.f54781d = null;
        this.f54785h = -1;
    }

    public void v(ControllerManager.d dVar) {
        this.f54787j = dVar;
    }

    public void w(c cVar, Handler handler) {
        this.f54780c = cVar;
        this.f54781d = handler;
    }

    public void x(boolean z3) {
        this.f54784g = z3;
    }

    public void y(int i2, int i4) {
        for (e eVar : this.f54793p.values()) {
            z(eVar.q(), i2, i4);
        }
    }
}
