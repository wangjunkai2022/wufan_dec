package com.mob.mgs.impl;

import android.text.TextUtils;
import com.mob.tools.network.NetCommunicator;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f53307a;

    /* renamed from: c  reason: collision with root package name */
    private volatile String f53309c;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f53311e;

    /* renamed from: f  reason: collision with root package name */
    private volatile String f53312f;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f53308b = false;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f53310d = new byte[0];

    private f() {
    }

    public void b() {
        if (!this.f53308b) {
            new h() { // from class: com.mob.mgs.impl.f.1
                @Override // com.mob.mgs.impl.h
                protected void a() throws Throwable {
                    e.a().a("MgsGlobal init: start");
                    f.this.f();
                    f.this.f53308b = true;
                    e.a().a("MgsGlobal init: done");
                }
            }.start();
        } else {
            e.a().a("MgsGlobal already initialized");
        }
    }

    public String c() {
        if (TextUtils.isEmpty(this.f53309c)) {
            e.a().b("WARNING: getDuidQuick got null!");
        }
        return this.f53309c;
    }

    public boolean d() {
        return this.f53311e;
    }

    public String e() {
        return this.f53312f;
    }

    public String f() {
        HashMap<String, Object> b4;
        if (TextUtils.isEmpty(this.f53309c)) {
            synchronized (this.f53310d) {
                if (TextUtils.isEmpty(this.f53309c) && (b4 = com.mob.commons.e.b(null)) != null) {
                    this.f53309c = (String) b4.get(NetCommunicator.KEY_DUID);
                    this.f53311e = ((Boolean) b4.get(NetCommunicator.KEY_IS_MODIFIED)).booleanValue();
                    this.f53312f = (String) b4.get(NetCommunicator.KEY_DUID_PREVIOUS);
                    e a4 = e.a();
                    a4.a("MC Global -> duid: " + this.f53309c + ", duidPre: " + this.f53312f + ", isModified: " + this.f53311e);
                }
            }
        }
        return this.f53309c;
    }

    public static f a() {
        if (f53307a == null) {
            synchronized (f.class) {
                if (f53307a == null) {
                    f53307a = new f();
                }
            }
        }
        return f53307a;
    }
}
