package com.papa.controller.core;

import android.content.Context;
import android.os.Handler;
import com.join.mgps.Util.g0;
import com.papa.controller.component.bluetooth.spp.a;
import com.papa.controller.core.hardware.g;
/* compiled from: PaBluetoothSpp.java */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private Context f54796a;

    /* renamed from: b  reason: collision with root package name */
    private String f54797b;

    /* renamed from: c  reason: collision with root package name */
    private String f54798c;

    /* renamed from: d  reason: collision with root package name */
    private com.papa.controller.component.bluetooth.spp.a f54799d;

    /* renamed from: e  reason: collision with root package name */
    private PadInfo f54800e;

    /* renamed from: f  reason: collision with root package name */
    private com.papa.controller.core.c f54801f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54802g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54803h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54804i = false;

    /* renamed from: j  reason: collision with root package name */
    private Handler f54805j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaBluetoothSpp.java */
    /* loaded from: classes4.dex */
    public class a implements a.g {
        a() {
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.g
        public void a(byte[] bArr, String str) {
            try {
                e eVar = e.this;
                eVar.w(eVar.f54797b, bArr);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaBluetoothSpp.java */
    /* loaded from: classes4.dex */
    public class b implements a.f {
        b() {
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.f
        public void a(int i2) {
            PadStateEvent padStateEvent;
            if (i2 == 2) {
                padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, e.this.f54798c, 2, 2, e.this.f54797b);
            } else if (i2 == 3) {
                padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, e.this.f54798c, 1, 1, e.this.f54797b);
                e.this.t();
            } else {
                padStateEvent = null;
            }
            if (e.this.f54801f == null || padStateEvent == null) {
                return;
            }
            e.this.f54801f.c0(padStateEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaBluetoothSpp.java */
    /* loaded from: classes4.dex */
    public class c implements a.e {
        c() {
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void a() {
            if (e.this.f54799d.J() == 3 || e.this.f54799d.J() == 1) {
                return;
            }
            PadStateEvent padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, e.this.f54798c, 8, 2, e.this.f54797b);
            if (e.this.f54801f != null) {
                e.this.f54801f.c0(padStateEvent);
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void b() {
            PadStateEvent padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, e.this.f54798c, 0, 0, e.this.f54797b);
            if (e.this.f54801f != null) {
                e.this.f54801f.c0(padStateEvent);
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void c(String str, String str2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PaBluetoothSpp.java */
    /* loaded from: classes4.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f54809a;

        d(long j4) {
            this.f54809a = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            do {
                try {
                    if (System.currentTimeMillis() - this.f54809a >= 3000) {
                        e.this.f54804i = true;
                        if (e.this.f54805j != null) {
                            e.this.f54805j.obtainMessage(10000, 0, 0, e.this.r()).sendToTarget();
                        }
                        e.this.n();
                        return;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            } while (!e.this.f54803h);
            e.this.z(1);
            e.this.f54804i = true;
            if (e.this.f54805j != null) {
                e.this.f54805j.obtainMessage(10000, 1, 0, e.this.r()).sendToTarget();
            }
            if (e.this.f54802g) {
                e.this.n();
            }
        }
    }

    public e(Context context, String str, String str2) {
        this.f54796a = context;
        this.f54797b = str;
        this.f54798c = str2;
        if (context != null) {
            this.f54799d = new com.papa.controller.component.bluetooth.spp.a(context);
            PadInfo padInfo = new PadInfo();
            this.f54800e = padInfo;
            padInfo.R(str2);
            this.f54800e.O(str);
        }
        D();
    }

    private void A(String str, com.papa.controller.core.hardware.b bVar) {
        try {
            this.f54800e.J(b2.a.a(bVar.k()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void B(String str, com.papa.controller.core.hardware.c cVar) {
        try {
            Integer num = new Integer(cVar.f());
            String str2 = ((num.intValue() >> 4) & 255) + g0.f27568a + (num.intValue() & 15);
            String n4 = cVar.n();
            byte[] o3 = cVar.o();
            byte[] m4 = cVar.m();
            boolean z3 = cVar.k() == 1;
            boolean z4 = cVar.l() == 1;
            this.f54800e.R(n4);
            this.f54800e.V(n4);
            this.f54800e.b0(b2.a.a(o3));
            this.f54800e.T(b2.a.a(m4));
            this.f54800e.d0(str2);
            this.f54800e.O(str);
            this.f54800e.K(z3);
            this.f54800e.L(z4);
            this.f54803h = true;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void C(String str, com.papa.controller.core.hardware.f fVar) {
        try {
            int k4 = fVar.k();
            boolean z3 = fVar.l() == 1;
            boolean z4 = fVar.m() == 1;
            this.f54800e.E(k4);
            this.f54800e.W(z3);
            this.f54800e.f0(z4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void D() {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f54799d;
        if (aVar == null) {
            return;
        }
        aVar.V(new a());
        this.f54799d.T(new b());
        this.f54799d.S(new c());
    }

    private void J() {
        new Thread(new d(System.currentTimeMillis())).start();
    }

    private void m(String str) {
        com.papa.controller.component.bluetooth.spp.a aVar;
        if (str == null || str.trim() == "" || (aVar = this.f54799d) == null) {
            return;
        }
        this.f54797b = str;
        if (!aVar.L() || this.f54799d.J() == 2 || this.f54799d.J() == 3) {
            return;
        }
        try {
            I();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f54799d.B(str);
        J();
    }

    private void o(String str) {
        if (this.f54799d == null || str == null || str.trim() == "") {
            return;
        }
        if (this.f54799d.J() == 3 || this.f54799d.J() == 2) {
            this.f54799d.C();
        }
    }

    private void p(String str, com.papa.controller.core.hardware.d dVar) {
        try {
            com.papa.controller.core.c cVar = this.f54801f;
            if (cVar == null) {
                return;
            }
            this.f54800e.a(cVar, dVar);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.papa.controller.core.b r() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8 = this.f54798c;
        String str9 = this.f54797b;
        PadInfo padInfo = this.f54800e;
        if (padInfo != null) {
            String h4 = padInfo.h();
            String q3 = this.f54800e.q();
            String y3 = this.f54800e.y();
            String k4 = this.f54800e.k();
            String v3 = this.f54800e.v();
            str = q3;
            str4 = y3;
            str2 = k4;
            str3 = h4;
            str5 = v3;
            str6 = this.f54800e.s();
            str7 = this.f54800e.d();
        } else {
            str = str8;
            str2 = str9;
            str3 = "";
            str4 = str3;
            str5 = str4;
            str6 = str5;
            str7 = str6;
        }
        return new com.papa.controller.core.b(str3, str, str4, str2, str5, str6, str7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f54799d;
        if (aVar == null) {
            return;
        }
        aVar.Q(new com.papa.controller.core.hardware.c().a(), false);
        this.f54799d.Q(new com.papa.controller.core.hardware.f().a(), false);
        this.f54799d.Q(new com.papa.controller.core.hardware.b().a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(String str, byte[] bArr) {
        int type = new com.papa.controller.core.hardware.a(bArr).getType();
        if (type == 1) {
            p(str, new com.papa.controller.core.hardware.d(bArr));
        } else if (type == 5) {
            C(str, new com.papa.controller.core.hardware.f(bArr));
        } else if (type == 20) {
            A(str, new com.papa.controller.core.hardware.b(bArr));
        } else if (type != 246) {
        } else {
            B(str, new com.papa.controller.core.hardware.c(bArr));
        }
    }

    public void E(com.papa.controller.core.c cVar) {
        this.f54801f = cVar;
    }

    public void F(Handler handler) {
        this.f54805j = handler;
    }

    public void G(boolean z3) {
        this.f54802g = z3;
    }

    public void H(int i2, int i4) {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f54799d;
        if (aVar == null || !aVar.O()) {
            return;
        }
        this.f54799d.Q(new g().k(i2, i4), false);
    }

    public void I() throws Exception {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f54799d;
        if (aVar == null) {
            return;
        }
        if (aVar.M()) {
            if (this.f54799d.O()) {
                return;
            }
            this.f54799d.W();
            this.f54799d.startService(false);
            return;
        }
        throw new Exception("Bluetooth is not enable!");
    }

    public void K() {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f54799d;
        if (aVar == null) {
            return;
        }
        try {
            aVar.stopService();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void l() {
        String str = this.f54797b;
        if (str == null || str.equals("")) {
            return;
        }
        m(this.f54797b);
    }

    public void n() {
        String str = this.f54797b;
        if (str == null || str.equals("")) {
            return;
        }
        o(this.f54797b);
    }

    public String q() {
        return this.f54797b;
    }

    public com.papa.controller.core.c s() {
        return this.f54801f;
    }

    public com.papa.controller.component.bluetooth.spp.a u() {
        return this.f54799d;
    }

    public PadInfo v() {
        return this.f54800e;
    }

    public boolean x() {
        return this.f54803h;
    }

    public boolean y() {
        return this.f54804i;
    }

    public void z(int i2) {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f54799d;
        if (aVar != null) {
            aVar.Q(new com.papa.controller.core.hardware.e().k(i2), false);
        }
    }
}
