package com.papa.controller.component.bluetooth;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: BluetoothManager.java */
@TargetApi(11)
/* loaded from: classes4.dex */
public class a {

    /* renamed from: k  reason: collision with root package name */
    private static a f54598k;

    /* renamed from: a  reason: collision with root package name */
    private Context f54599a;

    /* renamed from: b  reason: collision with root package name */
    private BluetoothAdapter f54600b;

    /* renamed from: f  reason: collision with root package name */
    private d f54604f;

    /* renamed from: g  reason: collision with root package name */
    private Map<String, BluetoothDevice> f54605g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f54606h;

    /* renamed from: c  reason: collision with root package name */
    private int f54601c = 0;

    /* renamed from: d  reason: collision with root package name */
    private BluetoothProfile f54602d = null;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54603e = false;

    /* renamed from: i  reason: collision with root package name */
    private BluetoothProfile.ServiceListener f54607i = new b();

    /* renamed from: j  reason: collision with root package name */
    private BroadcastReceiver f54608j = new c();

    /* compiled from: BluetoothManager.java */
    /* renamed from: com.papa.controller.component.bluetooth.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class HandlerC0266a extends Handler {
        HandlerC0266a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj;
            super.handleMessage(message);
            if (a.this.f54604f == null || (obj = message.obj) == null) {
                return;
            }
            BluetoothDevice bluetoothDevice = (BluetoothDevice) obj;
            int i2 = message.what;
            if (i2 == 0) {
                a.this.f54604f.b(bluetoothDevice);
            } else if (i2 == 1) {
                a.this.f54604f.a(bluetoothDevice);
            } else if (i2 == 2) {
                String address = bluetoothDevice.getAddress();
                if (a.this.f54605g.containsKey(address)) {
                    a.this.f54605g.remove(address);
                    a.this.v(0, bluetoothDevice);
                }
            } else if (i2 != 3) {
            } else {
                String address2 = bluetoothDevice.getAddress();
                if (a.this.f54605g.containsKey(address2)) {
                    return;
                }
                a.this.f54605g.put(address2, bluetoothDevice);
                a.this.v(1, bluetoothDevice);
            }
        }
    }

    /* compiled from: BluetoothManager.java */
    /* loaded from: classes4.dex */
    class b implements BluetoothProfile.ServiceListener {
        b() {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int i2, BluetoothProfile bluetoothProfile) {
            a.this.r("onServiceConnected");
            a.this.f54602d = bluetoothProfile;
            a.this.s();
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int i2) {
            a.this.r("onServiceDisconnected");
            a.this.f54602d = null;
        }
    }

    /* compiled from: BluetoothManager.java */
    /* loaded from: classes4.dex */
    class c extends BroadcastReceiver {

        /* compiled from: BluetoothManager.java */
        /* renamed from: com.papa.controller.component.bluetooth.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0267a implements Runnable {
            RunnableC0267a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.s();
            }
        }

        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            a.this.r("btReceiver-onReceive");
            String action = intent.getAction();
            if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                if (a.this.f54599a == null || !a.this.p() || !a.this.f54600b.isEnabled() || a.this.q()) {
                    return;
                }
                a.this.x();
                a.this.s();
            } else if (action.equals("android.bluetooth.adapter.action.DISCOVERY_STARTED") || action.equals("android.bluetooth.adapter.action.DISCOVERY_FINISHED")) {
            } else {
                if (action.equals("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED") || action.equals("android.bluetooth.device.action.ACL_CONNECTED") || action.equals("android.bluetooth.device.action.ACL_DISCONNECTED") || action.equals("android.bluetooth.device.action.BOND_STATE_CHANGED")) {
                    if (a.this.f54606h != null) {
                        a.this.f54606h.postDelayed(new RunnableC0267a(), 500L);
                        return;
                    }
                    a.w(500);
                    a.this.s();
                } else if (action.equals("android.bluetooth.device.action.NAME_CHANGED") || action.equals("android.bluetooth.device.action.CLASS_CHANGED") || action.equals("android.bluetooth.device.action.FOUND")) {
                    BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                }
            }
        }
    }

    /* compiled from: BluetoothManager.java */
    /* loaded from: classes4.dex */
    public interface d {
        void a(BluetoothDevice bluetoothDevice);

        void b(BluetoothDevice bluetoothDevice);
    }

    public a(Context context) {
        this.f54600b = null;
        this.f54606h = null;
        this.f54599a = context;
        this.f54600b = BluetoothAdapter.getDefaultAdapter();
        this.f54606h = new HandlerC0266a();
    }

    private void j() {
        r("closeProfileProxy");
        try {
            if (p() && q()) {
                this.f54600b.closeProfileProxy(this.f54601c, this.f54602d);
                this.f54602d = null;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private Collection<BluetoothDevice> l(Map<String, BluetoothDevice> map, Map<String, BluetoothDevice> map2) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap.putAll(map);
        hashMap2.putAll(map2);
        Collection<BluetoothDevice> values = hashMap.values();
        values.removeAll(hashMap2.values());
        return values;
    }

    @TargetApi(11)
    private int m() {
        Field[] fields;
        for (Field field : BluetoothProfile.class.getFields()) {
            int modifiers = field.getModifiers();
            if (Modifier.isStatic(modifiers) && Modifier.isPublic(modifiers) && Modifier.isFinal(modifiers)) {
                try {
                    if (field.getName().equals("INPUT_DEVICE")) {
                        return field.getInt(null);
                    }
                    if (field.getName().equals("HID_HOST")) {
                        return field.getInt(null);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
        return 4;
    }

    public static a n(Context context) {
        if (f54598k == null) {
            f54598k = new a(context);
        }
        return f54598k;
    }

    private void o() {
        try {
            if (this.f54599a == null) {
                return;
            }
            if (this.f54601c == 0) {
                this.f54601c = m();
            }
            if (!p() || q()) {
                return;
            }
            this.f54600b.getProfileProxy(this.f54599a, this.f54607i, this.f54601c);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q() {
        return this.f54602d != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(String str) {
    }

    private void t() {
        r("Registering BluetoothReceiver...");
        try {
            if (this.f54603e) {
                z();
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.device.action.CLASS_CHANGED");
            intentFilter.addAction("android.bluetooth.device.action.FOUND");
            intentFilter.addAction("android.bluetooth.device.action.NAME_CHANGED");
            intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
            intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
            intentFilter.addAction("android.bluetooth.adapter.action.LOCAL_NAME_CHANGED");
            intentFilter.addAction("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
            intentFilter.addAction("android.bluetooth.adapter.action.REQUEST_ENABLE");
            intentFilter.addAction("android.bluetooth.adapter.action.SCAN_MODE_CHANGED");
            intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
            this.f54599a.registerReceiver(this.f54608j, intentFilter);
            this.f54603e = true;
        } catch (Exception e4) {
            r("Registering BluetoothReceiver failed.");
            e4.printStackTrace();
        }
        r("Registering BluetoothReceiver finished.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(int i2, BluetoothDevice bluetoothDevice) {
        Handler handler = this.f54606h;
        if (handler == null) {
            return;
        }
        Message obtainMessage = handler.obtainMessage();
        obtainMessage.what = i2;
        obtainMessage.obj = bluetoothDevice;
        obtainMessage.sendToTarget();
    }

    public static void w(int i2) {
        try {
            Thread.sleep(i2);
        } catch (InterruptedException unused) {
        }
    }

    private void z() {
        if (this.f54599a == null) {
            return;
        }
        r("Unregistering BluetoothReceiver...");
        try {
            if (this.f54603e) {
                this.f54599a.unregisterReceiver(this.f54608j);
                this.f54603e = false;
            }
        } catch (Exception e4) {
            r("Unregistering BluetoothReceiver failed.");
            e4.printStackTrace();
        }
        r("Unregistering BluetoothReceiver finished.");
    }

    public List<BluetoothDevice> k() {
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                return new ArrayList(this.f54600b.getBondedDevices());
            }
            BluetoothProfile bluetoothProfile = this.f54602d;
            if (bluetoothProfile != null) {
                return bluetoothProfile.getConnectedDevices();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public boolean p() {
        try {
            BluetoothAdapter bluetoothAdapter = this.f54600b;
            if (bluetoothAdapter != null && !bluetoothAdapter.getAddress().equals(null)) {
                return true;
            }
            r("Bluetooth is not available.");
            return false;
        } catch (NullPointerException unused) {
            r("Bluetooth is not available. Cannot get bluetooth address.");
            return false;
        }
    }

    synchronized void s() {
        if (q()) {
            if (this.f54605g == null) {
                this.f54605g = new HashMap();
            }
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap.putAll(this.f54605g);
            List<BluetoothDevice> k4 = k();
            for (int i2 = 0; k4 != null && i2 < k4.size(); i2++) {
                BluetoothDevice bluetoothDevice = k4.get(i2);
                hashMap2.put(bluetoothDevice.getAddress(), bluetoothDevice);
            }
            for (BluetoothDevice bluetoothDevice2 : l(hashMap, hashMap2)) {
                this.f54606h.obtainMessage(2, -1, -1, bluetoothDevice2).sendToTarget();
            }
            for (BluetoothDevice bluetoothDevice3 : l(hashMap2, hashMap)) {
                this.f54606h.obtainMessage(3, -1, -1, bluetoothDevice3).sendToTarget();
            }
        }
    }

    public void u(d dVar) {
        this.f54604f = dVar;
        s();
    }

    public void x() {
        r("BluetoothManager starting ...");
        if (!p()) {
            r("BluetoothManager start failed.");
            return;
        }
        t();
        try {
            if (q()) {
                j();
            }
            o();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        r("BluetoothManager start finished.");
    }

    public void y() {
        try {
            j();
            z();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
