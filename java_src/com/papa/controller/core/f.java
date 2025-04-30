package com.papa.controller.core;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Handler;
import com.join.mgps.Util.g0;
import com.papa.controller.component.bluetooth.a;
import com.papa.controller.component.bluetooth.spp.a;
import com.papa.controller.core.hardware.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: PaBluetoothSppMonitor.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: j  reason: collision with root package name */
    private static f f54811j;

    /* renamed from: b  reason: collision with root package name */
    private Context f54813b;

    /* renamed from: c  reason: collision with root package name */
    private com.papa.controller.core.c f54814c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f54815d;

    /* renamed from: g  reason: collision with root package name */
    com.papa.controller.component.bluetooth.a f54818g;

    /* renamed from: h  reason: collision with root package name */
    a.d f54819h;

    /* renamed from: i  reason: collision with root package name */
    Map<String, e> f54820i;

    /* renamed from: a  reason: collision with root package name */
    private final String f54812a = getClass().getSimpleName();

    /* renamed from: e  reason: collision with root package name */
    private boolean f54816e = true;

    /* renamed from: f  reason: collision with root package name */
    private int f54817f = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaBluetoothSppMonitor.java */
    /* loaded from: classes4.dex */
    public class a implements a.d {
        a() {
        }

        @Override // com.papa.controller.component.bluetooth.a.d
        public void a(BluetoothDevice bluetoothDevice) {
            if (bluetoothDevice != null && f.this.f54816e) {
                f.this.g(bluetoothDevice.getAddress(), bluetoothDevice.getName());
            }
        }

        @Override // com.papa.controller.component.bluetooth.a.d
        public void b(BluetoothDevice bluetoothDevice) {
            if (bluetoothDevice == null) {
                return;
            }
            f.this.h(bluetoothDevice.getAddress());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaBluetoothSppMonitor.java */
    /* loaded from: classes4.dex */
    public class b implements a.g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54822a;

        b(String str) {
            this.f54822a = str;
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.g
        public void a(byte[] bArr, String str) {
            try {
                f.this.m(this.f54822a, bArr);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaBluetoothSppMonitor.java */
    /* loaded from: classes4.dex */
    public class c implements a.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54824a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f54825b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.papa.controller.component.bluetooth.spp.a f54826c;

        c(String str, String str2, com.papa.controller.component.bluetooth.spp.a aVar) {
            this.f54824a = str;
            this.f54825b = str2;
            this.f54826c = aVar;
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.f
        public void a(int i2) {
            PadStateEvent padStateEvent;
            if (i2 == 2) {
                padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, this.f54824a, 2, 2, this.f54825b);
            } else if (i2 == 3) {
                padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, this.f54824a, 1, 1, this.f54825b);
                f.this.z(this.f54826c);
            } else {
                padStateEvent = null;
            }
            if (f.this.f54814c == null || padStateEvent == null) {
                return;
            }
            f.this.f54814c.c0(padStateEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaBluetoothSppMonitor.java */
    /* loaded from: classes4.dex */
    public class d implements a.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54828a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f54829b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.papa.controller.component.bluetooth.spp.a f54830c;

        d(String str, String str2, com.papa.controller.component.bluetooth.spp.a aVar) {
            this.f54828a = str;
            this.f54829b = str2;
            this.f54830c = aVar;
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void a() {
            if (this.f54830c.J() == 3 || this.f54830c.J() == 1) {
                return;
            }
            PadStateEvent padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, this.f54828a, 8, 2, this.f54829b);
            if (f.this.f54814c != null) {
                f.this.f54814c.c0(padStateEvent);
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void b() {
            PadStateEvent padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, this.f54828a, 0, 0, this.f54829b);
            if (f.this.f54814c != null) {
                f.this.f54814c.c0(padStateEvent);
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void c(String str, String str2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaBluetoothSppMonitor.java */
    /* loaded from: classes4.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        public com.papa.controller.component.bluetooth.spp.a f54832a;

        /* renamed from: b  reason: collision with root package name */
        public PadInfo f54833b;

        public e() {
        }
    }

    public f(Context context) {
        this.f54813b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(String str, String str2) {
        if (str == null || str.trim() == "") {
            return;
        }
        if (this.f54820i == null) {
            this.f54820i = new HashMap();
        }
        e eVar = new e();
        com.papa.controller.component.bluetooth.spp.a aVar = new com.papa.controller.component.bluetooth.spp.a(this.f54813b);
        aVar.W();
        aVar.startService(false);
        eVar.f54832a = aVar;
        PadInfo padInfo = new PadInfo();
        eVar.f54833b = padInfo;
        int i2 = this.f54817f;
        this.f54817f = i2 + 1;
        padInfo.F(i2);
        this.f54820i.put(str, eVar);
        if (aVar.L()) {
            aVar.V(new b(str));
            aVar.T(new c(str2, str, aVar));
            aVar.S(new d(str2, str, aVar));
            aVar.B(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(String str) {
        Map<String, e> map;
        if (str == null || str.trim() == "" || (map = this.f54820i) == null || map.size() == 0 || !this.f54820i.containsKey(str)) {
            return;
        }
        com.papa.controller.component.bluetooth.spp.a aVar = this.f54820i.get(str).f54832a;
        if (aVar.J() == 3) {
            aVar.C();
        }
    }

    private void i() {
        Map<String, e> map = this.f54820i;
        if (map == null || map.size() == 0) {
            return;
        }
        for (e eVar : this.f54820i.values()) {
            com.papa.controller.component.bluetooth.spp.a aVar = eVar.f54832a;
            if (aVar.J() == 3) {
                aVar.C();
            }
        }
    }

    private void j(String str, com.papa.controller.core.hardware.d dVar) {
        try {
            if (this.f54814c == null) {
                return;
            }
            this.f54820i.get(str).f54833b.a(this.f54814c, dVar);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static f l(Context context) {
        f fVar = f54811j;
        if (fVar == null) {
            f54811j = new f(context);
            return null;
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(String str, byte[] bArr) {
        int type = new com.papa.controller.core.hardware.a(bArr).getType();
        if (type == 1) {
            j(str, new com.papa.controller.core.hardware.d(bArr));
        } else if (type == 5) {
            r(str, new com.papa.controller.core.hardware.f(bArr));
        } else if (type == 20) {
            p(str, new com.papa.controller.core.hardware.b(bArr));
        } else if (type != 246) {
        } else {
            q(str, new com.papa.controller.core.hardware.c(bArr));
        }
    }

    private void n() {
        Context context = this.f54813b;
        if (context == null) {
            return;
        }
        com.papa.controller.component.bluetooth.a aVar = new com.papa.controller.component.bluetooth.a(context);
        this.f54818g = aVar;
        try {
            if (aVar.p()) {
                a aVar2 = new a();
                this.f54819h = aVar2;
                this.f54818g.u(aVar2);
                this.f54818g.x();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void o() {
        this.f54820i = new HashMap();
    }

    private void p(String str, com.papa.controller.core.hardware.b bVar) {
        try {
            this.f54820i.get(str).f54833b.J(b2.a.a(bVar.k()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void q(String str, com.papa.controller.core.hardware.c cVar) {
        try {
            PadInfo padInfo = this.f54820i.get(str).f54833b;
            Integer num = new Integer(cVar.f());
            String str2 = ((num.intValue() >> 4) & 255) + g0.f27568a + (num.intValue() & 15);
            String n4 = cVar.n();
            byte[] o3 = cVar.o();
            byte[] m4 = cVar.m();
            boolean z3 = cVar.k() == 1;
            boolean z4 = cVar.l() == 1;
            padInfo.R(n4);
            padInfo.V(n4);
            padInfo.b0(b2.a.a(o3));
            padInfo.T(b2.a.a(m4));
            padInfo.d0(str2);
            padInfo.O(str);
            padInfo.K(z3);
            padInfo.L(z4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void r(String str, com.papa.controller.core.hardware.f fVar) {
        try {
            PadInfo padInfo = this.f54820i.get(str).f54833b;
            int k4 = fVar.k();
            boolean z3 = fVar.l() == 1;
            boolean z4 = fVar.m() == 1;
            padInfo.E(k4);
            padInfo.W(z3);
            padInfo.f0(z4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void w() throws Exception {
        Map<String, e> map = this.f54820i;
        if (map == null || map.size() == 0) {
            return;
        }
        for (e eVar : this.f54820i.values()) {
            com.papa.controller.component.bluetooth.spp.a aVar = eVar.f54832a;
            if (aVar.M()) {
                if (!aVar.O()) {
                    aVar.W();
                    aVar.startService(false);
                }
            } else {
                throw new Exception("Bluetooth is not enable!");
            }
        }
    }

    private void y() {
        Map<String, e> map = this.f54820i;
        if (map == null || map.size() == 0) {
            return;
        }
        for (e eVar : this.f54820i.values()) {
            eVar.f54832a.stopService();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(com.papa.controller.component.bluetooth.spp.a aVar) {
        aVar.Q(new com.papa.controller.core.hardware.e().k(1), false);
        aVar.Q(new com.papa.controller.core.hardware.c().a(), false);
        aVar.Q(new com.papa.controller.core.hardware.f().a(), false);
        aVar.Q(new com.papa.controller.core.hardware.b().a(), false);
    }

    public List<com.papa.controller.core.b> k() {
        ArrayList arrayList = new ArrayList();
        Map<String, e> map = this.f54820i;
        if (map != null && map.size() != 0) {
            for (e eVar : this.f54820i.values()) {
                PadInfo padInfo = eVar.f54833b;
                if (padInfo != null) {
                    String valueOf = String.valueOf(padInfo.c());
                    String q3 = padInfo.q();
                    String y3 = padInfo.y();
                    String k4 = padInfo.k();
                    padInfo.b();
                    arrayList.add(new com.papa.controller.core.b(valueOf, q3, y3, k4, "", "", padInfo.d()));
                }
            }
        }
        return arrayList;
    }

    public void s() {
        this.f54814c = null;
        this.f54815d = null;
        this.f54817f = -1;
        x();
    }

    public void t(com.papa.controller.core.c cVar, Handler handler) {
        this.f54814c = cVar;
        this.f54815d = handler;
        v();
    }

    public void u(int i2, int i4) {
        for (e eVar : this.f54820i.values()) {
            eVar.f54832a.Q(new g().k(i2, i4), false);
        }
    }

    public void v() {
        try {
            o();
            n();
            if (this.f54816e) {
                w();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void x() {
        y();
        com.papa.controller.component.bluetooth.a aVar = this.f54818g;
        if (aVar != null) {
            aVar.y();
        }
    }
}
