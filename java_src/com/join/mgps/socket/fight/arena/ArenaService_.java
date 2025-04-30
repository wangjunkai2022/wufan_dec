package com.join.mgps.socket.fight.arena;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.SocketError;
import com.join.mgps.Util.AccountUtil_;
import org.androidannotations.api.a;
/* loaded from: classes4.dex */
public final class ArenaService_ extends ArenaService {

    /* renamed from: s  reason: collision with root package name */
    private final IntentFilter f52139s = new IntentFilter();

    /* renamed from: t  reason: collision with root package name */
    private final BroadcastReceiver f52140t = new a();

    /* loaded from: classes4.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ArenaService_.this.x();
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f52142a;

        b(String str) {
            this.f52142a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArenaService_.super.a(this.f52142a);
        }
    }

    /* loaded from: classes4.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SocketError f52144a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, SocketError socketError) {
            super(str, j4, str2);
            this.f52144a = socketError;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.w(this.f52144a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaRequest f52146a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, ArenaRequest arenaRequest) {
            super(str, j4, str2);
            this.f52146a = arenaRequest;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.C(this.f52146a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f52148a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, Object obj) {
            super(str, j4, str2);
            this.f52148a = obj;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.r(this.f52148a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaRequest f52150a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, ArenaRequest arenaRequest) {
            super(str, j4, str2);
            this.f52150a = arenaRequest;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.k(this.f52150a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f52152a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f52152a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.t(this.f52152a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.i();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.x();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class j extends org.androidannotations.api.builder.g<j> {
        public j(Context context) {
            super(context, ArenaService_.class);
        }
    }

    private void P() {
        this.f52128h = AccountUtil_.getInstance_(this);
        this.f52139s.addAction(f1.a.B);
    }

    public static j Q(Context context) {
        return new j(context);
    }

    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void C(ArenaRequest arenaRequest) {
        org.androidannotations.api.a.l(new d("", 0L, "", arenaRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void a(String str) {
        org.androidannotations.api.b.e("", new b(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void i() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void k(ArenaRequest arenaRequest) {
        org.androidannotations.api.a.l(new f("", 0L, "", arenaRequest));
    }

    @Override // com.join.mgps.socket.fight.arena.ArenaService, android.app.Service
    public void onCreate() {
        P();
        super.onCreate();
        registerReceiver(this.f52140t, this.f52139s);
    }

    @Override // com.join.mgps.socket.fight.arena.ArenaService, android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.f52140t);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void r(Object obj) {
        org.androidannotations.api.a.l(new e("", 0L, "", obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void t(int i2) {
        org.androidannotations.api.a.l(new g("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void w(SocketError socketError) {
        org.androidannotations.api.a.l(new c("", 0L, "", socketError));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void x() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }
}
