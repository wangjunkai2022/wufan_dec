package com.danikula.videocache;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Pinger.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: d  reason: collision with root package name */
    private static final String f11146d = "ping";

    /* renamed from: e  reason: collision with root package name */
    private static final String f11147e = "ping ok";

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f11148a = Executors.newSingleThreadExecutor();

    /* renamed from: b  reason: collision with root package name */
    private final String f11149b;

    /* renamed from: c  reason: collision with root package name */
    private final int f11150c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Pinger.java */
    /* loaded from: classes2.dex */
    public class b implements Callable<Boolean> {
        private b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            return Boolean.valueOf(m.this.f());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(String str, int i2) {
        this.f11149b = (String) n.d(str);
        this.f11150c = i2;
    }

    private List<Proxy> b() {
        try {
            return ProxySelector.getDefault().select(new URI(c()));
        } catch (URISyntaxException e4) {
            throw new IllegalStateException(e4);
        }
    }

    private String c() {
        return String.format(Locale.US, "http://%s:%d/%s", this.f11149b, Integer.valueOf(this.f11150c), f11146d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() throws ProxyCacheException {
        k kVar = new k(c());
        try {
            byte[] bytes = f11147e.getBytes();
            kVar.a(0L);
            byte[] bArr = new byte[bytes.length];
            kVar.read(bArr);
            boolean equals = Arrays.equals(bytes, bArr);
            h.h("Ping response: `" + new String(bArr) + "`, pinged? " + equals);
            return equals;
        } catch (ProxyCacheException e4) {
            h.f("Error reading ping response", e4);
            return false;
        } finally {
            kVar.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(String str) {
        return f11146d.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(int i2, int i4) {
        n.b(i2 >= 1);
        n.b(i4 > 0);
        int i5 = 0;
        while (i5 < i2) {
            try {
            } catch (InterruptedException e4) {
                e = e4;
                h.f("Error pinging server due to unexpected error", e);
            } catch (ExecutionException e5) {
                e = e5;
                h.f("Error pinging server due to unexpected error", e);
            } catch (TimeoutException unused) {
                h.j("Error pinging server (attempt: " + i5 + ", timeout: " + i4 + "). ");
            }
            if (((Boolean) this.f11148a.submit(new b()).get(i4, TimeUnit.MILLISECONDS)).booleanValue()) {
                return true;
            }
            i5++;
            i4 *= 2;
        }
        String format = String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s", Integer.valueOf(i5), Integer.valueOf(i4 / 2), b());
        h.f(format, new ProxyCacheException(format));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write(f11147e.getBytes());
    }
}
