package com.mob.apc.a;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.mob.MobACService;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private MobACService f52725a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f52726b = false;

    /* renamed from: c  reason: collision with root package name */
    private final d f52727c = new d() { // from class: com.mob.apc.a.a.1
        @Override // com.mob.apc.a.d
        public e a(e eVar) throws RemoteException {
            com.mob.apc.a aVar;
            f a4 = f.a();
            a4.b("APC msg received. msg: " + eVar, new Object[0]);
            if (a.this.f52726b) {
                f a5 = f.a();
                a5.b("inited: " + com.mob.apc.b.f52753a, new Object[0]);
                if (!com.mob.apc.b.f52753a) {
                    a.this.f52726b = false;
                    if (eVar != null && (aVar = eVar.f52747a) != null) {
                        Bundle bundle = new Bundle();
                        int i2 = aVar.f52719a;
                        if (i2 == 1001) {
                            bundle.putInt("acsActType", 1);
                        } else if (i2 == 9004) {
                            bundle.putInt("acsActType", 2);
                        }
                        bundle.putString("pkg", eVar.f52749c);
                        c.a().a(bundle);
                    }
                }
            }
            return c.a().a(eVar);
        }
    };

    public a(MobACService mobACService) {
        this.f52725a = mobACService;
    }

    public void b() {
        this.f52726b = false;
    }

    public boolean b(Intent intent) {
        return this.f52725a.a(intent);
    }

    public void a() {
        try {
            this.f52726b = true;
            com.mob.apc.b.a(this.f52725a.getApplicationContext());
        } catch (Throwable th) {
            f.a().a(th);
        }
    }

    public int a(Intent intent, int i2, int i4) {
        return this.f52725a.a(intent, i2, i4);
    }

    public IBinder a(Intent intent) {
        return this.f52727c;
    }
}
