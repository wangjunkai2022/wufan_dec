package com.papa.controller.component.bluetooth.spp;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Set;
/* compiled from: BluetoothSPP.java */
@SuppressLint({"NewApi"})
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private Context f54617e;

    /* renamed from: f  reason: collision with root package name */
    private BluetoothAdapter f54618f;

    /* renamed from: q  reason: collision with root package name */
    private e f54629q;

    /* renamed from: a  reason: collision with root package name */
    private f f54613a = null;

    /* renamed from: b  reason: collision with root package name */
    private g f54614b = null;

    /* renamed from: c  reason: collision with root package name */
    private e f54615c = null;

    /* renamed from: d  reason: collision with root package name */
    private d f54616d = null;

    /* renamed from: g  reason: collision with root package name */
    private com.papa.controller.component.bluetooth.spp.b f54619g = null;

    /* renamed from: h  reason: collision with root package name */
    private String f54620h = null;

    /* renamed from: i  reason: collision with root package name */
    private String f54621i = null;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54622j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54623k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54624l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f54625m = false;

    /* renamed from: n  reason: collision with root package name */
    private boolean f54626n = false;

    /* renamed from: o  reason: collision with root package name */
    private String f54627o = "";

    /* renamed from: p  reason: collision with root package name */
    private boolean f54628p = true;

    /* renamed from: r  reason: collision with root package name */
    private int f54630r = 0;
    @SuppressLint({"HandlerLeak"})

    /* renamed from: s  reason: collision with root package name */
    private final Handler f54631s = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BluetoothSPP.java */
    /* renamed from: com.papa.controller.component.bluetooth.spp.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0268a implements Runnable {
        RunnableC0268a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f54619g != null) {
                a.this.f54626n = false;
                a.this.f54619g.q();
            }
        }
    }

    /* compiled from: BluetoothSPP.java */
    /* loaded from: classes4.dex */
    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 == 2) {
                    byte[] bArr = (byte[]) message.obj;
                    String str = new String(bArr);
                    if (bArr == null || bArr.length <= 0 || a.this.f54614b == null) {
                        return;
                    }
                    a.this.f54614b.a(bArr, str);
                    return;
                } else if (i2 != 4) {
                    if (i2 != 5) {
                        return;
                    }
                    Toast.makeText(a.this.f54617e, message.getData().getString(com.papa.controller.component.bluetooth.spp.c.f54675o), 0).show();
                    return;
                } else {
                    a.this.f54620h = message.getData().getString("device_name");
                    a.this.f54621i = message.getData().getString(com.papa.controller.component.bluetooth.spp.c.f54674n);
                    if (a.this.f54615c != null) {
                        a.this.f54615c.c(a.this.f54620h, a.this.f54621i);
                    }
                    a.this.f54624l = true;
                    return;
                }
            }
            if (a.this.f54613a != null) {
                a.this.f54613a.a(message.arg1);
            }
            if (a.this.f54624l && message.arg1 != 3) {
                if (a.this.f54615c != null) {
                    a.this.f54615c.b();
                }
                if (a.this.f54623k) {
                    a.this.f54623k = false;
                    a aVar = a.this;
                    aVar.y(aVar.f54627o);
                }
                a.this.f54624l = false;
                a.this.f54620h = null;
                a.this.f54621i = null;
            }
            if (a.this.f54625m || message.arg1 != 2) {
                if (a.this.f54625m) {
                    if (message.arg1 != 3 && a.this.f54615c != null) {
                        a.this.f54615c.a();
                    }
                    a.this.f54625m = false;
                    return;
                }
                return;
            }
            a.this.f54625m = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BluetoothSPP.java */
    /* loaded from: classes4.dex */
    public class c implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f54634a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f54635b;

        c(ArrayList arrayList, ArrayList arrayList2) {
            this.f54634a = arrayList;
            this.f54635b = arrayList2;
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void a() {
            if (a.this.f54626n) {
                if (!a.this.f54623k) {
                    a.this.f54629q = null;
                    a.this.f54622j = false;
                    return;
                }
                a.k(a.this);
                if (a.this.f54630r >= this.f54634a.size()) {
                    a.this.f54630r = 0;
                }
                a aVar = a.this;
                aVar.B((String) this.f54634a.get(aVar.f54630r));
                if (a.this.f54616d != null) {
                    a.this.f54616d.b((String) this.f54635b.get(a.this.f54630r), (String) this.f54634a.get(a.this.f54630r));
                }
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void b() {
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void c(String str, String str2) {
            a.this.f54629q = null;
            a.this.f54622j = false;
        }
    }

    /* compiled from: BluetoothSPP.java */
    /* loaded from: classes4.dex */
    public interface d {
        void a();

        void b(String str, String str2);
    }

    /* compiled from: BluetoothSPP.java */
    /* loaded from: classes4.dex */
    public interface e {
        void a();

        void b();

        void c(String str, String str2);
    }

    /* compiled from: BluetoothSPP.java */
    /* loaded from: classes4.dex */
    public interface f {
        void a(int i2);
    }

    /* compiled from: BluetoothSPP.java */
    /* loaded from: classes4.dex */
    public interface g {
        void a(byte[] bArr, String str);
    }

    public a(Context context) {
        this.f54618f = null;
        this.f54617e = context;
        this.f54618f = BluetoothAdapter.getDefaultAdapter();
    }

    static /* synthetic */ int k(a aVar) {
        int i2 = aVar.f54630r;
        aVar.f54630r = i2 + 1;
        return i2;
    }

    public void A(Intent intent) {
        this.f54619g.j(this.f54618f.getRemoteDevice(intent.getExtras().getString(com.papa.controller.component.bluetooth.spp.c.f54678r)));
    }

    public void B(String str) {
        this.f54619g.j(this.f54618f.getRemoteDevice(str));
    }

    public void C() {
        com.papa.controller.component.bluetooth.spp.b bVar = this.f54619g;
        if (bVar != null) {
            this.f54626n = false;
            bVar.q();
            if (this.f54619g.n() == 0) {
                this.f54626n = true;
                this.f54619g.p(this.f54628p);
            }
        }
    }

    public void D() {
        this.f54618f.enable();
    }

    public BluetoothAdapter E() {
        return this.f54618f;
    }

    public String F() {
        return this.f54621i;
    }

    public String G() {
        return this.f54620h;
    }

    public String[] H() {
        Set<BluetoothDevice> bondedDevices = this.f54618f.getBondedDevices();
        String[] strArr = new String[bondedDevices.size()];
        int i2 = 0;
        for (BluetoothDevice bluetoothDevice : bondedDevices) {
            strArr[i2] = bluetoothDevice.getAddress();
            i2++;
        }
        return strArr;
    }

    public String[] I() {
        Set<BluetoothDevice> bondedDevices = this.f54618f.getBondedDevices();
        String[] strArr = new String[bondedDevices.size()];
        int i2 = 0;
        for (BluetoothDevice bluetoothDevice : bondedDevices) {
            strArr[i2] = bluetoothDevice.getName();
            i2++;
        }
        return strArr;
    }

    public int J() {
        com.papa.controller.component.bluetooth.spp.b bVar = this.f54619g;
        if (bVar != null) {
            return bVar.n();
        }
        return -1;
    }

    public boolean K() {
        return this.f54622j;
    }

    public boolean L() {
        try {
            BluetoothAdapter bluetoothAdapter = this.f54618f;
            if (bluetoothAdapter != null) {
                return !bluetoothAdapter.getAddress().equals(null);
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public boolean M() {
        return this.f54618f.isEnabled();
    }

    public boolean N() {
        return this.f54618f.isDiscovering();
    }

    public boolean O() {
        return this.f54619g != null;
    }

    public void P(String str, boolean z3) {
        if (this.f54619g.n() == 3) {
            if (z3) {
                str = str + "\r\n";
            }
            this.f54619g.r(str.getBytes());
        }
    }

    public void Q(byte[] bArr, boolean z3) {
        if (this.f54619g.n() == 3) {
            if (z3) {
                int length = bArr.length + 2;
                byte[] bArr2 = new byte[length];
                for (int i2 = 0; i2 < bArr.length; i2++) {
                    bArr2[i2] = bArr[i2];
                }
                bArr2[length - 2] = 10;
                bArr2[length - 1] = 13;
                this.f54619g.r(bArr2);
                return;
            }
            this.f54619g.r(bArr);
        }
    }

    public void R(d dVar) {
        this.f54616d = dVar;
    }

    public void S(e eVar) {
        this.f54615c = eVar;
    }

    public void T(f fVar) {
        this.f54613a = fVar;
    }

    public void U(boolean z3) {
        stopService();
        startService(z3);
        this.f54628p = z3;
    }

    public void V(g gVar) {
        this.f54614b = gVar;
    }

    public void W() {
        this.f54619g = new com.papa.controller.component.bluetooth.spp.b(this.f54617e, this.f54631s);
    }

    public boolean X() {
        return this.f54618f.startDiscovery();
    }

    public void Y() {
        this.f54623k = false;
    }

    public void startService(boolean z3) {
        com.papa.controller.component.bluetooth.spp.b bVar = this.f54619g;
        if (bVar == null || bVar.n() != 0) {
            return;
        }
        this.f54626n = true;
        this.f54619g.p(z3);
        this.f54628p = z3;
    }

    public void stopService() {
        com.papa.controller.component.bluetooth.spp.b bVar = this.f54619g;
        if (bVar != null) {
            this.f54626n = false;
            bVar.q();
        }
        new Handler().postDelayed(new RunnableC0268a(), 500L);
    }

    public void y(String str) {
        if (this.f54623k) {
            return;
        }
        this.f54627o = str;
        this.f54623k = true;
        this.f54622j = true;
        d dVar = this.f54616d;
        if (dVar != null) {
            dVar.a();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String[] I = I();
        String[] H = H();
        for (int i2 = 0; i2 < I.length; i2++) {
            if (I[i2].contains(str)) {
                arrayList.add(H[i2]);
                arrayList2.add(I[i2]);
            }
        }
        c cVar = new c(arrayList, arrayList2);
        this.f54629q = cVar;
        S(cVar);
        this.f54630r = 0;
        d dVar2 = this.f54616d;
        if (dVar2 != null) {
            dVar2.b(I[0], H[0]);
        }
        if (arrayList.size() > 0) {
            B((String) arrayList.get(this.f54630r));
        } else {
            Toast.makeText(this.f54617e, "Device name mismatch", 0).show();
        }
    }

    public boolean z() {
        return this.f54618f.cancelDiscovery();
    }
}
