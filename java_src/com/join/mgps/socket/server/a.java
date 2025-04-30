package com.join.mgps.socket.server;

import android.content.Context;
import com.join.mgps.socket.c;
import com.join.mgps.socket.d;
import java.io.IOException;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: SocketService.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: f  reason: collision with root package name */
    private static final String f52260f = "a";

    /* renamed from: a  reason: collision with root package name */
    private ExecutorService f52261a = Executors.newCachedThreadPool();

    /* renamed from: b  reason: collision with root package name */
    private Context f52262b;

    /* renamed from: c  reason: collision with root package name */
    Socket f52263c;

    /* renamed from: d  reason: collision with root package name */
    c f52264d;

    /* renamed from: e  reason: collision with root package name */
    d f52265e;

    /* compiled from: SocketService.java */
    /* renamed from: com.join.mgps.socket.server.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class RunnableC0229a implements Runnable {
        RunnableC0229a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.c();
            a.this.d();
        }
    }

    public a(Context context, Socket socket) {
        this.f52262b = context;
        this.f52263c = socket;
        a(socket);
    }

    void a(Socket socket) {
        if (socket == null || !socket.isConnected()) {
            return;
        }
        this.f52264d = new c(socket, this.f52262b);
        this.f52265e = new d(socket, this.f52262b);
        this.f52261a.execute(this.f52264d);
        this.f52261a.execute(this.f52265e);
    }

    public void b() {
        new Thread(new RunnableC0229a()).start();
    }

    void c() {
        c cVar = this.f52264d;
        if (cVar != null) {
            cVar.h(false);
            this.f52264d.a();
        }
        d dVar = this.f52265e;
        if (dVar != null) {
            dVar.g(false);
            this.f52265e.a();
        }
        ExecutorService executorService = this.f52261a;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        this.f52261a.shutdownNow();
    }

    void d() {
        Socket socket = this.f52263c;
        if (socket == null || socket.isClosed()) {
            return;
        }
        try {
            this.f52263c.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }
}
