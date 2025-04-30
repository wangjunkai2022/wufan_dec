package com.danikula.videocache;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpProxyCacheServerClients.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f11125a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    private final String f11126b;

    /* renamed from: c  reason: collision with root package name */
    private volatile g f11127c;

    /* renamed from: d  reason: collision with root package name */
    private final List<d> f11128d;

    /* renamed from: e  reason: collision with root package name */
    private final d f11129e;

    /* renamed from: f  reason: collision with root package name */
    private final e f11130f;

    /* compiled from: HttpProxyCacheServerClients.java */
    /* loaded from: classes2.dex */
    private static final class a extends Handler implements d {

        /* renamed from: a  reason: collision with root package name */
        private final String f11131a;

        /* renamed from: b  reason: collision with root package name */
        private final List<d> f11132b;

        public a(String str, List<d> list) {
            super(Looper.getMainLooper());
            this.f11131a = str;
            this.f11132b = list;
        }

        @Override // com.danikula.videocache.d
        public void g(File file, String str, int i2) {
            Message obtainMessage = obtainMessage();
            obtainMessage.arg1 = i2;
            obtainMessage.obj = file;
            sendMessage(obtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            for (d dVar : this.f11132b) {
                dVar.g((File) message.obj, this.f11131a, message.arg1);
            }
        }
    }

    public j(String str, e eVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f11128d = copyOnWriteArrayList;
        this.f11126b = (String) n.d(str);
        this.f11130f = (e) n.d(eVar);
        this.f11129e = new a(str, copyOnWriteArrayList);
    }

    private synchronized void a() {
        if (this.f11125a.decrementAndGet() <= 0) {
            this.f11127c.m();
            this.f11127c = null;
        }
    }

    private g c() throws ProxyCacheException {
        String str = this.f11126b;
        e eVar = this.f11130f;
        g gVar = new g(new k(str, eVar.f11083d, eVar.f11084e), new com.danikula.videocache.file.b(this.f11130f.a(this.f11126b), this.f11130f.f11082c));
        gVar.t(this.f11129e);
        return gVar;
    }

    private synchronized void g() throws ProxyCacheException {
        this.f11127c = this.f11127c == null ? c() : this.f11127c;
    }

    public int b() {
        return this.f11125a.get();
    }

    public void d(f fVar, Socket socket) throws ProxyCacheException, IOException {
        g();
        try {
            this.f11125a.incrementAndGet();
            this.f11127c.s(fVar, socket);
        } finally {
            a();
        }
    }

    public void e(d dVar) {
        this.f11128d.add(dVar);
    }

    public void f() {
        this.f11128d.clear();
        if (this.f11127c != null) {
            this.f11127c.t(null);
            this.f11127c.m();
            this.f11127c = null;
        }
        this.f11125a.set(0);
    }

    public void h(d dVar) {
        this.f11128d.remove(dVar);
    }
}
