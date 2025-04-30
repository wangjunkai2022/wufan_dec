package com.join.mgps.socket.fight.arena;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import app.mgsim.arena.ArenaRequest;
import com.join.mgps.socket.fight.arena.ArenaService;
/* compiled from: ArenaServiceBinderDelegate.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private Activity f52254a;

    /* renamed from: b  reason: collision with root package name */
    private ArenaService_ f52255b;

    /* renamed from: c  reason: collision with root package name */
    private InterfaceC0228b f52256c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f52257d = false;

    /* renamed from: e  reason: collision with root package name */
    private final ServiceConnection f52258e = new a();

    /* compiled from: ArenaServiceBinderDelegate.java */
    /* loaded from: classes4.dex */
    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            b.this.f52257d = true;
            b.this.f52255b = (ArenaService_) ((ArenaService.b) iBinder).getService();
            if (b.this.f52256c != null) {
                b.this.f52256c.c();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b.this.f52257d = false;
            if (b.this.f52256c != null) {
                b.this.f52256c.a();
            }
            b.this.f52255b = null;
        }
    }

    /* compiled from: ArenaServiceBinderDelegate.java */
    /* renamed from: com.join.mgps.socket.fight.arena.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0228b {
        void a();

        void b(boolean z3);

        void c();
    }

    /* compiled from: ArenaServiceBinderDelegate.java */
    /* loaded from: classes4.dex */
    public static class c implements InterfaceC0228b {
        @Override // com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void a() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void b(boolean z3) {
        }

        @Override // com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void c() {
        }
    }

    public b(Activity activity, InterfaceC0228b interfaceC0228b) {
        this.f52254a = activity;
        this.f52256c = interfaceC0228b;
    }

    public void bindService() {
        try {
            if (this.f52257d || this.f52254a == null) {
                return;
            }
            Intent intent = new Intent(this.f52254a, ArenaService_.class);
            this.f52254a.bindService(intent, this.f52258e, 1);
            this.f52254a.startService(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public ArenaService_ d() {
        return this.f52255b;
    }

    public boolean e() {
        return this.f52255b != null;
    }

    public void f(ArenaRequest arenaRequest) {
        if (e()) {
            if (d() != null) {
                d().C(arenaRequest);
                return;
            }
            return;
        }
        this.f52257d = false;
        InterfaceC0228b interfaceC0228b = this.f52256c;
        if (interfaceC0228b != null) {
            interfaceC0228b.a();
        }
        this.f52255b = null;
    }

    public void g() {
        try {
            if (d() == null || !this.f52257d) {
                return;
            }
            this.f52254a.unbindService(this.f52258e);
            this.f52257d = false;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void h() {
    }

    public void stopService() {
        this.f52254a.stopService(new Intent(this.f52254a, ArenaService_.class));
    }
}
