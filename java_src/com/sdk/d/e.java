package com.sdk.d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.sdk.a.e;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public abstract class e<Params, Progress, Result> implements k {

    /* renamed from: a  reason: collision with root package name */
    public static final b f56603a = new b(null);

    /* renamed from: b  reason: collision with root package name */
    public static final Executor f56604b = new g();

    /* renamed from: c  reason: collision with root package name */
    public final c<Params, Result> f56605c;

    /* renamed from: d  reason: collision with root package name */
    public final FutureTask<Result> f56606d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicBoolean f56607e = new AtomicBoolean();

    /* renamed from: f  reason: collision with root package name */
    public final AtomicBoolean f56608f = new AtomicBoolean();

    /* renamed from: g  reason: collision with root package name */
    public volatile boolean f56609g = false;

    /* renamed from: h  reason: collision with root package name */
    public Boolean f56610h = Boolean.valueOf(com.sdk.f.g.f56648c);

    /* renamed from: i  reason: collision with root package name */
    public com.sdk.d.b f56611i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a<Data> {

        /* renamed from: a  reason: collision with root package name */
        public final e f56612a;

        /* renamed from: b  reason: collision with root package name */
        public final Data[] f56613b;

        public a(e eVar, Data... dataArr) {
            this.f56612a = eVar;
            this.f56613b = dataArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class b extends Handler {
        public /* synthetic */ b(com.sdk.d.c cVar) {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar = (a) message.obj;
            int i2 = message.what;
            if (i2 == 1) {
                e.c(aVar.f56612a, aVar.f56613b[0]);
            } else if (i2 != 2) {
            } else {
                e eVar = aVar.f56612a;
                Object[] objArr = aVar.f56613b;
                com.sdk.a.e eVar2 = (com.sdk.a.e) eVar;
                if (eVar2.f56534p == e.a.CANCELLED || objArr == null || objArr.length == 0 || eVar2.f56531m == null) {
                    return;
                }
                int intValue = ((Integer) objArr[0]).intValue();
                if (intValue == 1) {
                    eVar2.f56534p = e.a.STARTED;
                    eVar2.f56531m.b();
                } else if (intValue == 2) {
                    if (objArr.length != 3) {
                        return;
                    }
                    eVar2.f56534p = e.a.LOADING;
                    eVar2.f56531m.a(Long.parseLong(String.valueOf(objArr[1])), Long.parseLong(String.valueOf(objArr[2])), eVar2.f56536r);
                } else if (intValue != 3) {
                    if (intValue == 4 && objArr.length == 2) {
                        eVar2.f56534p = e.a.SUCCESS;
                        eVar2.f56531m.a((com.sdk.a.i) objArr[1], eVar2.f56543y.f56573d);
                    }
                } else if (objArr.length != 3) {
                } else {
                    eVar2.f56534p = e.a.FAILURE;
                    Object obj = eVar2.f56531m;
                    int intValue2 = ((Integer) objArr[1]).intValue();
                    com.sdk.g.b bVar = ((com.sdk.g.a) obj).f56654b;
                    String str = ((Object) ((String) objArr[2])) + "";
                    com.sdk.e.a<T> aVar2 = bVar.f56661g;
                    if (aVar2 != 0) {
                        aVar2.a(intValue2, 302002, str);
                        bVar.f56661g = null;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static abstract class c<Params, Result> implements Callable<Result> {

        /* renamed from: a  reason: collision with root package name */
        public Params[] f56614a;

        public /* synthetic */ c(com.sdk.d.c cVar) {
        }
    }

    public e() {
        com.sdk.d.c cVar = new com.sdk.d.c(this);
        this.f56605c = cVar;
        this.f56606d = new d(this, cVar);
    }

    public static /* synthetic */ void b(e eVar, Object obj) {
        if (eVar.f56608f.get()) {
            return;
        }
        eVar.a((e) obj);
    }

    public static /* synthetic */ void c(e eVar, Object obj) {
        eVar.f56607e.get();
    }

    public final Result a(Result result) {
        f56603a.obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    public final void a(Progress... progressArr) {
        if (this.f56607e.get()) {
            return;
        }
        f56603a.obtainMessage(2, new a(this, progressArr)).sendToTarget();
    }
}
