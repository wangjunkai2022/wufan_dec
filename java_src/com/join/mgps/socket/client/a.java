package com.join.mgps.socket.client;

import android.content.Context;
import com.join.mgps.socket.c;
import com.join.mgps.socket.d;
import java.io.IOException;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
/* compiled from: ClientService.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: i  reason: collision with root package name */
    private static final String f52036i = "a";

    /* renamed from: a  reason: collision with root package name */
    private Context f52037a;

    /* renamed from: c  reason: collision with root package name */
    c f52039c;

    /* renamed from: d  reason: collision with root package name */
    d f52040d;

    /* renamed from: e  reason: collision with root package name */
    Socket f52041e;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.socket.b f52044h;

    /* renamed from: b  reason: collision with root package name */
    ExecutorService f52038b = Executors.newCachedThreadPool();

    /* renamed from: f  reason: collision with root package name */
    b f52042f = null;

    /* renamed from: g  reason: collision with root package name */
    Future f52043g = null;

    /* compiled from: ClientService.java */
    /* renamed from: com.join.mgps.socket.client.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class RunnableC0225a implements Runnable {
        RunnableC0225a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f();
            a.this.c();
            a.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClientService.java */
    /* loaded from: classes4.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f52046a = true;

        b() {
        }

        public void a(boolean z3) {
            this.f52046a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f52046a) {
                try {
                    a.this.f52044h.k();
                    Thread.sleep(1000L);
                } catch (InterruptedException e4) {
                    Thread.currentThread().interrupt();
                    e4.printStackTrace();
                }
            }
        }
    }

    public a(Context context, Socket socket) {
        this.f52037a = context;
        this.f52041e = socket;
        a(socket);
        this.f52044h = com.join.mgps.socket.b.d();
    }

    void a(Socket socket) {
        if (socket == null || !socket.isConnected()) {
            return;
        }
        this.f52039c = new c(socket, this.f52037a);
        this.f52040d = new d(socket, this.f52037a);
        this.f52038b.execute(this.f52039c);
        this.f52038b.execute(this.f52040d);
    }

    public void b() {
        new Thread(new RunnableC0225a()).start();
    }

    void c() {
        c cVar = this.f52039c;
        if (cVar != null) {
            cVar.h(false);
            this.f52039c.a();
        }
        d dVar = this.f52040d;
        if (dVar != null) {
            dVar.g(false);
            this.f52040d.a();
        }
        ExecutorService executorService = this.f52038b;
        if (executorService != null) {
            executorService.shutdownNow();
        }
    }

    void d() {
        Socket socket = this.f52041e;
        if (socket == null || socket.isClosed()) {
            return;
        }
        try {
            this.f52041e.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public void e() {
        b bVar = new b();
        this.f52042f = bVar;
        this.f52043g = this.f52038b.submit(bVar);
    }

    public void f() {
        if (this.f52043g == null || this.f52042f == null) {
            return;
        }
        this.f52042f.a(false);
        this.f52043g.cancel(true);
    }
}
