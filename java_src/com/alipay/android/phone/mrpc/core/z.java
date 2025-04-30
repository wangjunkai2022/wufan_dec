package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class z implements m {

    /* renamed from: h  reason: collision with root package name */
    private static z f9505h;

    /* renamed from: i  reason: collision with root package name */
    private static final ThreadFactory f9506i = new b0();

    /* renamed from: a  reason: collision with root package name */
    Context f9507a;

    /* renamed from: b  reason: collision with root package name */
    private ThreadPoolExecutor f9508b;

    /* renamed from: c  reason: collision with root package name */
    private p f9509c = p.b(q.a.f73954a);

    /* renamed from: d  reason: collision with root package name */
    private long f9510d;

    /* renamed from: e  reason: collision with root package name */
    private long f9511e;

    /* renamed from: f  reason: collision with root package name */
    private long f9512f;

    /* renamed from: g  reason: collision with root package name */
    private int f9513g;

    private z(Context context) {
        this.f9507a = context;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(10, 11, 3L, TimeUnit.SECONDS, new ArrayBlockingQueue(20), f9506i, new ThreadPoolExecutor.CallerRunsPolicy());
        this.f9508b = threadPoolExecutor;
        try {
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Exception unused) {
        }
        CookieSyncManager.createInstance(this.f9507a);
        CookieManager.getInstance().setAcceptCookie(true);
    }

    public static final z c(Context context) {
        z zVar = f9505h;
        return zVar != null ? zVar : e(context);
    }

    private static final synchronized z e(Context context) {
        synchronized (z.class) {
            z zVar = f9505h;
            if (zVar != null) {
                return zVar;
            }
            z zVar2 = new z(context);
            f9505h = zVar2;
            return zVar2;
        }
    }

    @Override // com.alipay.android.phone.mrpc.core.m
    public final Future<e> a(d dVar) {
        if (g0.a(this.f9507a)) {
            String str = "HttpManager" + hashCode() + ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times";
            Object[] objArr = new Object[9];
            objArr[0] = Integer.valueOf(this.f9508b.getActiveCount());
            objArr[1] = Long.valueOf(this.f9508b.getCompletedTaskCount());
            objArr[2] = Long.valueOf(this.f9508b.getTaskCount());
            long j4 = this.f9512f;
            objArr[3] = Long.valueOf(j4 == 0 ? 0L : ((this.f9510d * 1000) / j4) >> 10);
            int i2 = this.f9513g;
            objArr[4] = Long.valueOf(i2 != 0 ? this.f9511e / i2 : 0L);
            objArr[5] = Long.valueOf(this.f9510d);
            objArr[6] = Long.valueOf(this.f9511e);
            objArr[7] = Long.valueOf(this.f9512f);
            objArr[8] = Integer.valueOf(this.f9513g);
            String.format(str, objArr);
        }
        e0 e0Var = new e0(this, (c0) dVar);
        a0 a0Var = new a0(this, e0Var, e0Var);
        this.f9508b.execute(a0Var);
        return a0Var;
    }

    public final p b() {
        return this.f9509c;
    }

    public final void d(long j4) {
        this.f9510d += j4;
    }

    public final void f(long j4) {
        this.f9511e += j4;
        this.f9513g++;
    }

    public final void g(long j4) {
        this.f9512f += j4;
    }
}
