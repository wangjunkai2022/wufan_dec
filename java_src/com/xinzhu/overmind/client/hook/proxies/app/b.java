package com.xinzhu.overmind.client.hook.proxies.app;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Handler;
import android.os.IBinder;
import com.xinzhu.haunted.android.app.b;
import com.xinzhu.haunted.android.app.g;
import com.xinzhu.haunted.android.app.l;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubActivityRecord;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: HCallbackStub.java */
/* loaded from: classes.dex */
public class b implements com.xinzhu.overmind.client.hook.e, Handler.Callback {

    /* renamed from: c  reason: collision with root package name */
    public static final String f64156c = "HCallbackStub";

    /* renamed from: a  reason: collision with root package name */
    private Handler.Callback f64157a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f64158b = new AtomicBoolean(false);

    private Handler b() {
        return new g(Overmind.mainThread()).S();
    }

    private Handler.Callback d() {
        return new com.xinzhu.haunted.android.os.e(b()).b();
    }

    private Object e(Object clientTransaction) {
        for (Object obj : new com.xinzhu.haunted.android.app.servertransaction.a(clientTransaction).d()) {
            if (com.xinzhu.haunted.android.app.servertransaction.b.f62776c.getName().equals(obj.getClass().getCanonicalName())) {
                return obj;
            }
        }
        return null;
    }

    private boolean f(Object client) {
        Intent j4;
        IBinder l4;
        StubActivityRecord create;
        ActivityInfo activityInfo;
        Object e4 = com.xinzhu.overmind.utils.e.x() ? e(client) : client;
        if (e4 == null) {
            return false;
        }
        com.xinzhu.haunted.android.app.servertransaction.b bVar = null;
        if (com.xinzhu.overmind.utils.e.x()) {
            bVar = new com.xinzhu.haunted.android.app.servertransaction.b(e4);
            j4 = bVar.f();
            l4 = new com.xinzhu.haunted.android.app.servertransaction.a(client).e();
        } else {
            g.a aVar = new g.a(e4);
            j4 = aVar.j();
            l4 = aVar.l();
        }
        if (j4 != null && (activityInfo = (create = StubActivityRecord.create(j4)).mActivityInfo) != null) {
            if (com.xinzhu.overmind.client.e.getClientConfig() == null) {
                Overmind.getMindActivityManager().v(activityInfo.packageName, activityInfo.processName, create.mUserId);
                return true;
            } else if (!com.xinzhu.overmind.client.e.getClient().isInit()) {
                com.xinzhu.overmind.client.e.getClient().bindApplication(activityInfo.packageName, activityInfo.processName);
                return true;
            } else {
                Overmind.getMindActivityManager().l(new l(com.xinzhu.haunted.android.app.d.c()).k(l4, false), l4, create.mActivityRecord);
                if (com.xinzhu.overmind.utils.e.x()) {
                    bVar.i(create.mTarget);
                    bVar.h(activityInfo);
                    g gVar = new g(Overmind.mainThread());
                    if (com.xinzhu.overmind.utils.e.h()) {
                        if (!com.xinzhu.overmind.utils.e.j()) {
                            if (gVar.q(l4)) {
                                Object K = gVar.K(l4);
                                if (K != null) {
                                    g.a aVar2 = new g.a(K);
                                    Object L = gVar.L(activityInfo.applicationInfo, aVar2.i());
                                    aVar2.p(create.mTarget);
                                    aVar2.n(activityInfo);
                                    aVar2.q(L);
                                }
                            } else {
                                throw new RuntimeException("break circle");
                            }
                        }
                        if (bVar.a()) {
                            if (bVar.d() != null) {
                                new b.a(com.xinzhu.haunted.android.app.b.d()).c(com.xinzhu.overmind.client.hook.proxies.am.a.f64148e);
                            }
                        } else {
                            throw new RuntimeException("break circle");
                        }
                    }
                } else {
                    g.a aVar3 = new g.a(e4);
                    aVar3.p(create.mTarget);
                    aVar3.n(activityInfo);
                }
            }
        }
        return false;
    }

    @SuppressLint({"BlockedPrivateApi"})
    private void g() {
        if (com.xinzhu.overmind.utils.e.h()) {
            try {
                Method declaredMethod = Class.forName("android.app.ActivityThread").getDeclaredMethod("getLaunchingActivity", IBinder.class);
                Field declaredField = Class.forName("android.app.servertransaction.LaunchActivityItem").getDeclaredField("mActivityClientController");
                com.xinzhu.overmind.b.c(f64156c, "reflectTrickForAndroid12 get " + declaredMethod + " " + declaredField);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        Handler.Callback d4 = d();
        return (d4 == null || d4 == this) ? false : true;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public void c() {
        Handler.Callback d4 = d();
        this.f64157a = d4;
        if (d4 != null && (d4 == this || d4.getClass().getName().equals(getClass().getName()))) {
            this.f64157a = null;
        }
        new com.xinzhu.haunted.android.os.e(b()).c(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0051 A[Catch: all -> 0x0061, TRY_LEAVE, TryCatch #0 {all -> 0x0061, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x0018, B:10:0x0020, B:18:0x004d, B:20:0x0051, B:13:0x0031, B:15:0x0039, B:17:0x0041), top: B:29:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005b A[DONT_GENERATE] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(@androidx.annotation.NonNull android.os.Message r5) {
        /*
            r4 = this;
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.f64158b
            r1 = 1
            boolean r0 = r0.getAndSet(r1)
            r2 = 0
            if (r0 != 0) goto L68
            boolean r0 = com.xinzhu.overmind.utils.e.x()     // Catch: java.lang.Throwable -> L61
            if (r0 == 0) goto L31
            int r0 = r5.what     // Catch: java.lang.Throwable -> L61
            int r3 = com.xinzhu.haunted.android.app.g.c.d()     // Catch: java.lang.Throwable -> L61
            if (r0 != r3) goto L4d
            java.lang.Object r0 = r5.obj     // Catch: java.lang.Throwable -> L61
            boolean r0 = r4.f(r0)     // Catch: java.lang.Throwable -> L61
            if (r0 == 0) goto L4d
            android.os.Handler r0 = r4.b()     // Catch: java.lang.Throwable -> L61
            android.os.Message r5 = android.os.Message.obtain(r5)     // Catch: java.lang.Throwable -> L61
            r0.sendMessageAtFrontOfQueue(r5)     // Catch: java.lang.Throwable -> L61
        L2b:
            java.util.concurrent.atomic.AtomicBoolean r5 = r4.f64158b
            r5.set(r2)
            return r1
        L31:
            int r0 = r5.what     // Catch: java.lang.Throwable -> L61
            int r3 = com.xinzhu.haunted.android.app.g.c.e()     // Catch: java.lang.Throwable -> L61
            if (r0 != r3) goto L4d
            java.lang.Object r0 = r5.obj     // Catch: java.lang.Throwable -> L61
            boolean r0 = r4.f(r0)     // Catch: java.lang.Throwable -> L61
            if (r0 == 0) goto L4d
            android.os.Handler r0 = r4.b()     // Catch: java.lang.Throwable -> L61
            android.os.Message r5 = android.os.Message.obtain(r5)     // Catch: java.lang.Throwable -> L61
            r0.sendMessageAtFrontOfQueue(r5)     // Catch: java.lang.Throwable -> L61
            goto L2b
        L4d:
            android.os.Handler$Callback r0 = r4.f64157a     // Catch: java.lang.Throwable -> L61
            if (r0 == 0) goto L5b
            boolean r5 = r0.handleMessage(r5)     // Catch: java.lang.Throwable -> L61
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.f64158b
            r0.set(r2)
            return r5
        L5b:
            java.util.concurrent.atomic.AtomicBoolean r5 = r4.f64158b
            r5.set(r2)
            return r2
        L61:
            r5 = move-exception
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.f64158b
            r0.set(r2)
            throw r5
        L68:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.client.hook.proxies.app.b.handleMessage(android.os.Message):boolean");
    }
}
