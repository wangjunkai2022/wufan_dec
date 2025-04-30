package com.mob.mcl.c;

import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    final Socket f53185a;

    /* renamed from: b  reason: collision with root package name */
    public final d f53186b;

    /* renamed from: c  reason: collision with root package name */
    public SocketAddress f53187c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f53188d;

    /* renamed from: e  reason: collision with root package name */
    final Map<c, Long> f53189e;

    /* renamed from: com.mob.mcl.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0242a extends Thread {
        public C0242a(String str) {
            super(str);
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            a.this.a();
        }
    }

    public a(Socket socket, d dVar) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f53188d = atomicBoolean;
        this.f53189e = new WeakHashMap();
        this.f53185a = socket;
        this.f53186b = dVar;
        atomicBoolean.getAndSet(true);
        dVar.a(this);
        new C0242a("mlp-worker").start();
    }

    public c a(e eVar) {
        c cVar = new c();
        synchronized (this.f53189e) {
            this.f53189e.put(cVar, Long.valueOf(eVar.f53207c));
        }
        try {
            OutputStream outputStream = this.f53185a.getOutputStream();
            outputStream.write(eVar.a());
            outputStream.flush();
            return cVar;
        } catch (Throwable th) {
            this.f53186b.a(this, th);
            return null;
        }
    }

    void a() {
        try {
            InputStream inputStream = this.f53185a.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[HttpPostBodyUtil.chunkSize];
            while (true) {
                int read = inputStream.read(bArr);
                if (-1 == read) {
                    return;
                }
                int i2 = 0;
                byteArrayOutputStream.write(bArr, 0, read);
                if (read < 8096) {
                    byteArrayOutputStream.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    ByteBuffer wrap = ByteBuffer.wrap(byteArray);
                    while (wrap.hasRemaining() && wrap.get() != 1) {
                        i2++;
                    }
                    wrap.position(i2);
                    List<e> a4 = e.a(wrap);
                    for (e eVar : a4) {
                        i2 += eVar.b();
                    }
                    a(a4);
                    byteArrayOutputStream.reset();
                    if (byteArray.length - i2 > 0) {
                        byteArrayOutputStream.write(byteArray, i2, byteArray.length - i2);
                    }
                }
            }
        } catch (Throwable th) {
            this.f53186b.a(this, th);
            a(true);
        }
    }

    void a(List<e> list) {
        for (e eVar : list) {
            d dVar = this.f53186b;
            if (dVar != null && eVar.f53206b >= 9001) {
                dVar.a(this, eVar);
            }
            if (eVar.f53206b < 9001) {
                Iterator<Map.Entry<c, Long>> it2 = this.f53189e.entrySet().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        Map.Entry<c, Long> next = it2.next();
                        if (next.getValue().equals(Long.valueOf(eVar.f53207c))) {
                            next.getKey().a(eVar);
                            break;
                        }
                    }
                }
            }
        }
    }

    public void a(boolean z3) {
        if (this.f53188d.getAndSet(false)) {
            try {
                this.f53185a.close();
                this.f53186b.a(this, z3);
            } catch (Throwable unused) {
            }
            this.f53188d.getAndSet(false);
            this.f53189e.clear();
        }
    }
}
