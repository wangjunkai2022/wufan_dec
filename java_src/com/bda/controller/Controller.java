package com.bda.controller;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import com.bda.controller.d;
import com.bda.controller.e;
import com.bda.controller.f;
/* loaded from: classes2.dex */
public final class Controller {
    public static final int ACTION_CONNECTED = 1;
    public static final int ACTION_CONNECTING = 2;
    public static final int ACTION_DISCONNECTED = 0;
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_FALSE = 0;
    public static final int ACTION_TRUE = 1;
    public static final int ACTION_UP = 1;
    public static final int ACTION_VERSION_MOGA = 0;
    public static final int ACTION_VERSION_MOGAPRO = 1;
    public static final int AXIS_LTRIGGER = 17;
    public static final int AXIS_RTRIGGER = 18;
    public static final int AXIS_RZ = 14;
    public static final int AXIS_X = 0;
    public static final int AXIS_Y = 1;
    public static final int AXIS_Z = 11;
    static final int CONTROLLER_ID = 1;
    public static final int INFO_ACTIVE_DEVICE_COUNT = 2;
    public static final int INFO_KNOWN_DEVICE_COUNT = 1;
    public static final int INFO_UNKNOWN = 0;
    public static final int KEYCODE_BUTTON_A = 96;
    public static final int KEYCODE_BUTTON_B = 97;
    public static final int KEYCODE_BUTTON_L1 = 102;
    public static final int KEYCODE_BUTTON_L2 = 104;
    public static final int KEYCODE_BUTTON_R1 = 103;
    public static final int KEYCODE_BUTTON_R2 = 105;
    public static final int KEYCODE_BUTTON_SELECT = 109;
    public static final int KEYCODE_BUTTON_START = 108;
    public static final int KEYCODE_BUTTON_THUMBL = 106;
    public static final int KEYCODE_BUTTON_THUMBR = 107;
    public static final int KEYCODE_BUTTON_X = 99;
    public static final int KEYCODE_BUTTON_Y = 100;
    public static final int KEYCODE_DPAD_DOWN = 20;
    public static final int KEYCODE_DPAD_LEFT = 21;
    public static final int KEYCODE_DPAD_RIGHT = 22;
    public static final int KEYCODE_DPAD_UP = 19;
    public static final int KEYCODE_UNKNOWN = 0;
    static final int LEGACY_KEYCODE_BUTTON_X = 98;
    static final int LEGACY_KEYCODE_BUTTON_Y = 99;
    public static final int STATE_CONNECTION = 1;
    public static final int STATE_CURRENT_PRODUCT_VERSION = 4;
    public static final int STATE_POWER_LOW = 2;
    @Deprecated
    public static final int STATE_SELECTED_VERSION = 4;
    public static final int STATE_SUPPORTED_PRODUCT_VERSION = 3;
    @Deprecated
    public static final int STATE_SUPPORTED_VERSION = 3;
    public static final int STATE_UNKNOWN = 0;
    final Context mContext;
    boolean mIsBound = false;
    com.bda.controller.f mService = null;
    final d.a mListenerStub = new a();
    final e.a mMonitorStub = new b();
    final e mServiceConnection = new e();
    int mActivityEvent = 6;
    Handler mHandler = null;
    com.bda.controller.b mListener = null;
    com.bda.controller.c mMonitor = null;

    /* loaded from: classes2.dex */
    class a extends d.a {
        a() {
        }

        @Override // com.bda.controller.d
        public void onKeyEvent(KeyEvent keyEvent) throws RemoteException {
            if (keyEvent.a() == 1) {
                Controller controller = Controller.this;
                if (controller.mListener != null) {
                    c cVar = new c(keyEvent);
                    Handler handler = Controller.this.mHandler;
                    if (handler != null) {
                        handler.post(cVar);
                    } else {
                        cVar.run();
                    }
                }
            }
        }

        @Override // com.bda.controller.d
        public void onMotionEvent(MotionEvent motionEvent) throws RemoteException {
            if (motionEvent.a() == 1) {
                Controller controller = Controller.this;
                if (controller.mListener != null) {
                    d dVar = new d(motionEvent);
                    Handler handler = Controller.this.mHandler;
                    if (handler != null) {
                        handler.post(dVar);
                    } else {
                        dVar.run();
                    }
                }
            }
        }

        @Override // com.bda.controller.d
        public void onStateEvent(StateEvent stateEvent) throws RemoteException {
            if (stateEvent.a() == 1) {
                Controller controller = Controller.this;
                if (controller.mListener != null) {
                    f fVar = new f(stateEvent);
                    Handler handler = Controller.this.mHandler;
                    if (handler != null) {
                        handler.post(fVar);
                    } else {
                        fVar.run();
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class b extends e.a {
        b() {
        }

        @Override // com.bda.controller.e
        public void onLog(int i2, int i4, String str) throws RemoteException {
            com.bda.controller.c cVar = Controller.this.mMonitor;
            if (cVar != null) {
                cVar.onLog(i2, i4, str);
            }
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final KeyEvent f9972a;

        public c(KeyEvent keyEvent) {
            this.f9972a = keyEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bda.controller.b bVar = Controller.this.mListener;
            if (bVar != null) {
                bVar.onKeyEvent(this.f9972a);
            }
        }
    }

    /* loaded from: classes2.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final MotionEvent f9974a;

        public d(MotionEvent motionEvent) {
            this.f9974a = motionEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bda.controller.b bVar = Controller.this.mListener;
            if (bVar != null) {
                bVar.onMotionEvent(this.f9974a);
            }
        }
    }

    /* loaded from: classes2.dex */
    class e implements ServiceConnection {
        e() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Controller.this.mService = f.a.asInterface(iBinder);
            Controller.this.registerListener();
            Controller.this.registerMonitor();
            Controller controller = Controller.this;
            if (controller.mActivityEvent == 5) {
                controller.sendMessage(1, 5);
                Controller.this.sendMessage(1, 7);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            Controller.this.mService = null;
        }
    }

    /* loaded from: classes2.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final StateEvent f9977a;

        public f(StateEvent stateEvent) {
            this.f9977a = stateEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bda.controller.b bVar = Controller.this.mListener;
            if (bVar != null) {
                bVar.onStateEvent(this.f9977a);
            }
        }
    }

    Controller(Context context) {
        this.mContext = context;
    }

    public static final Controller getInstance(Context context) {
        return new Controller(context);
    }

    public void allowNewConnections() {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                fVar.F();
            } catch (RemoteException unused) {
            }
        }
    }

    public void disallowNewConnections() {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                fVar.v();
            } catch (RemoteException unused) {
            }
        }
    }

    public final void exit() {
        setListener(null, null);
        setMonitor(null);
        if (this.mIsBound) {
            this.mContext.unbindService(this.mServiceConnection);
            this.mIsBound = false;
        }
    }

    public final float getAxisValue(int i2) {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                return fVar.y(1, i2);
            } catch (RemoteException unused) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    public final int getInfo(int i2) {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                return fVar.t(i2);
            } catch (RemoteException unused) {
                return 0;
            }
        }
        return 0;
    }

    public final int getKeyCode(int i2) {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                return fVar.D(1, i2);
            } catch (RemoteException unused) {
                if (i2 == 99) {
                    i2 = 98;
                } else if (i2 == 100) {
                    i2 = 99;
                }
                try {
                    return this.mService.A(1, i2);
                } catch (RemoteException unused2) {
                }
            }
        }
        return 1;
    }

    public final int getState(int i2) {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                return fVar.u(1, i2);
            } catch (RemoteException unused) {
                return 0;
            }
        }
        return 0;
    }

    public final boolean init() {
        if (!this.mIsBound) {
            Intent intent = new Intent(com.bda.controller.f.class.getName());
            this.mContext.startService(intent);
            this.mContext.bindService(intent, this.mServiceConnection, 1);
            this.mIsBound = true;
        }
        return this.mIsBound;
    }

    public void isAllowingNewConnections() {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                fVar.E();
            } catch (RemoteException unused) {
            }
        }
    }

    public final void onPause() {
        this.mActivityEvent = 6;
        sendMessage(1, 6);
        registerListener();
    }

    public final void onResume() {
        this.mActivityEvent = 5;
        sendMessage(1, 5);
        registerListener();
    }

    void registerListener() {
        com.bda.controller.f fVar;
        if (this.mListener == null || (fVar = this.mService) == null) {
            return;
        }
        try {
            try {
                fVar.w(this.mListenerStub, this.mActivityEvent);
            } catch (RemoteException unused) {
                this.mService.G(this.mListenerStub, this.mActivityEvent);
            }
        } catch (RemoteException unused2) {
        }
    }

    void registerMonitor() {
        com.bda.controller.f fVar;
        if (this.mMonitor == null || (fVar = this.mService) == null) {
            return;
        }
        try {
            fVar.C(this.mMonitorStub, this.mActivityEvent);
        } catch (RemoteException unused) {
        }
    }

    void sendMessage(int i2, int i4) {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                fVar.x(i2, i4);
            } catch (RemoteException unused) {
            }
        }
    }

    public final void setListener(com.bda.controller.b bVar, Handler handler) {
        unregisterListener();
        this.mListener = bVar;
        this.mHandler = handler;
        registerListener();
    }

    public final void setMonitor(com.bda.controller.c cVar) {
        unregisterMonitor();
        this.mMonitor = cVar;
        registerMonitor();
    }

    void unregisterListener() {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                fVar.B(this.mListenerStub, this.mActivityEvent);
            } catch (RemoteException unused) {
            }
        }
    }

    void unregisterMonitor() {
        com.bda.controller.f fVar = this.mService;
        if (fVar != null) {
            try {
                fVar.z(this.mMonitorStub, this.mActivityEvent);
            } catch (RemoteException unused) {
            }
        }
    }
}
