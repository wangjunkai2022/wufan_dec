package com.danikula.videocache;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: HttpProxyCacheServer.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: i  reason: collision with root package name */
    private static final String f11106i = "127.0.0.1";

    /* renamed from: a  reason: collision with root package name */
    private final Object f11107a;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f11108b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, j> f11109c;

    /* renamed from: d  reason: collision with root package name */
    private final ServerSocket f11110d;

    /* renamed from: e  reason: collision with root package name */
    private final int f11111e;

    /* renamed from: f  reason: collision with root package name */
    private final Thread f11112f;

    /* renamed from: g  reason: collision with root package name */
    private final e f11113g;

    /* renamed from: h  reason: collision with root package name */
    private final m f11114h;

    /* compiled from: HttpProxyCacheServer.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: f  reason: collision with root package name */
        private static final long f11115f = 536870912;

        /* renamed from: a  reason: collision with root package name */
        private File f11116a;

        /* renamed from: d  reason: collision with root package name */
        private com.danikula.videocache.sourcestorage.c f11119d;

        /* renamed from: c  reason: collision with root package name */
        private com.danikula.videocache.file.a f11118c = new com.danikula.videocache.file.h(536870912);

        /* renamed from: b  reason: collision with root package name */
        private com.danikula.videocache.file.c f11117b = new com.danikula.videocache.file.f();

        /* renamed from: e  reason: collision with root package name */
        private w.b f11120e = new w.a();

        public b(Context context) {
            this.f11119d = com.danikula.videocache.sourcestorage.d.b(context);
            this.f11116a = s.c(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e c() {
            return new e(this.f11116a, this.f11117b, this.f11118c, this.f11119d, this.f11120e);
        }

        public i b() {
            return new i(c());
        }

        public b d(File file) {
            this.f11116a = (File) n.d(file);
            return this;
        }

        public b e(com.danikula.videocache.file.a aVar) {
            this.f11118c = (com.danikula.videocache.file.a) n.d(aVar);
            return this;
        }

        public b f(com.danikula.videocache.file.c cVar) {
            this.f11117b = (com.danikula.videocache.file.c) n.d(cVar);
            return this;
        }

        public b g(w.b bVar) {
            this.f11120e = (w.b) n.d(bVar);
            return this;
        }

        public b h(int i2) {
            this.f11118c = new com.danikula.videocache.file.g(i2);
            return this;
        }

        public b i(long j4) {
            this.f11118c = new com.danikula.videocache.file.h(j4);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HttpProxyCacheServer.java */
    /* loaded from: classes2.dex */
    public final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Socket f11121a;

        public c(Socket socket) {
            this.f11121a = socket;
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.o(this.f11121a);
        }
    }

    /* compiled from: HttpProxyCacheServer.java */
    /* loaded from: classes2.dex */
    private final class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final CountDownLatch f11123a;

        public d(CountDownLatch countDownLatch) {
            this.f11123a = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11123a.countDown();
            i.this.w();
        }
    }

    private String c(String str) {
        return String.format(Locale.US, "http://%s:%d/%s", f11106i, Integer.valueOf(this.f11111e), p.f(str));
    }

    private void d(Socket socket) {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException unused) {
        }
    }

    private void e(Socket socket) {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException | IOException unused) {
        }
    }

    private void f(Socket socket) {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException e4) {
            h.k("Failed to close socket on proxy side: {}. It seems client have already closed connection.", e4.getMessage());
        }
    }

    private File g(String str) {
        e eVar = this.f11113g;
        return new File(eVar.f11080a, eVar.f11081b.a(str));
    }

    private j h(String str) throws ProxyCacheException {
        j jVar;
        synchronized (this.f11107a) {
            jVar = this.f11109c.get(str);
            if (jVar == null) {
                jVar = new j(str, this.f11113g);
                this.f11109c.put(str, jVar);
            }
        }
        return jVar;
    }

    private int i() {
        int i2;
        synchronized (this.f11107a) {
            i2 = 0;
            for (j jVar : this.f11109c.values()) {
                i2 += jVar.b();
            }
        }
        return i2;
    }

    private boolean l() {
        return this.f11114h.e(3, 70);
    }

    private void n(Throwable th) {
        h.g("HttpProxyCacheServer error", th.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(Socket socket) {
        StringBuilder sb;
        try {
            try {
                f c4 = f.c(socket.getInputStream());
                String e4 = p.e(c4.f11087a);
                if (this.f11114h.d(e4)) {
                    this.f11114h.g(socket);
                } else {
                    h(e4).d(c4, socket);
                }
                q(socket);
                sb = new StringBuilder();
            } catch (Throwable th) {
                q(socket);
                h.h("Opened connections: " + i());
                throw th;
            }
        } catch (ProxyCacheException e5) {
            e = e5;
            n(new ProxyCacheException("Error processing request", e));
            q(socket);
            sb = new StringBuilder();
        } catch (SocketException unused) {
            q(socket);
            sb = new StringBuilder();
        } catch (IOException e6) {
            e = e6;
            n(new ProxyCacheException("Error processing request", e));
            q(socket);
            sb = new StringBuilder();
        }
        sb.append("Opened connections: ");
        sb.append(i());
        h.h(sb.toString());
    }

    private void q(Socket socket) {
        e(socket);
        f(socket);
        d(socket);
    }

    private void s() {
        synchronized (this.f11107a) {
            for (j jVar : this.f11109c.values()) {
                jVar.f();
            }
            this.f11109c.clear();
        }
    }

    private void t(File file) {
        try {
            this.f11113g.f11082c.a(file);
        } catch (IOException e4) {
            h.f("Error touching file " + file, e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                this.f11108b.submit(new c(this.f11110d.accept()));
            } catch (IOException e4) {
                n(new ProxyCacheException("Error during waiting connection", e4));
                return;
            }
        }
    }

    public String j(String str) {
        return k(str, true);
    }

    public String k(String str, boolean z3) {
        if (!z3 || !m(str)) {
            return l() ? c(str) : str;
        }
        File g4 = g(str);
        t(g4);
        return Uri.fromFile(g4).toString();
    }

    public boolean m(String str) {
        n.e(str, "Url can't be null!");
        return g(str).exists();
    }

    public void p(com.danikula.videocache.d dVar, String str) {
        n.a(dVar, str);
        synchronized (this.f11107a) {
            try {
                h(str).e(dVar);
            } catch (ProxyCacheException e4) {
                h.k("Error registering cache listener", e4.getMessage());
            }
        }
    }

    public void r() {
        h.h("Shutdown proxy server");
        s();
        this.f11113g.f11083d.release();
        this.f11112f.interrupt();
        try {
            if (this.f11110d.isClosed()) {
                return;
            }
            this.f11110d.close();
        } catch (IOException e4) {
            n(new ProxyCacheException("Error shutting down proxy server", e4));
        }
    }

    public void u(com.danikula.videocache.d dVar) {
        n.d(dVar);
        synchronized (this.f11107a) {
            for (j jVar : this.f11109c.values()) {
                jVar.h(dVar);
            }
        }
    }

    public void v(com.danikula.videocache.d dVar, String str) {
        n.a(dVar, str);
        synchronized (this.f11107a) {
            try {
                h(str).h(dVar);
            } catch (ProxyCacheException e4) {
                h.k("Error registering cache listener", e4.getMessage());
            }
        }
    }

    public i(Context context) {
        this(new b(context).c());
    }

    private i(e eVar) {
        this.f11107a = new Object();
        this.f11108b = Executors.newFixedThreadPool(8);
        this.f11109c = new ConcurrentHashMap();
        this.f11113g = (e) n.d(eVar);
        try {
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName(f11106i));
            this.f11110d = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f11111e = localPort;
            l.a(f11106i, localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new d(countDownLatch));
            this.f11112f = thread;
            thread.start();
            countDownLatch.await();
            this.f11114h = new m(f11106i, localPort);
            h.h("Proxy cache server started. Is it alive? " + l());
        } catch (IOException | InterruptedException e4) {
            this.f11108b.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e4);
        }
    }
}
