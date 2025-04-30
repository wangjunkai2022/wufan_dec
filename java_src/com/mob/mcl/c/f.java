package com.mob.mcl.c;

import java.net.Socket;
import java.net.SocketAddress;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    a f53209a;

    /* renamed from: b  reason: collision with root package name */
    final d f53210b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicLong f53211c = new AtomicLong();

    public f(d dVar) {
        this.f53210b = dVar;
    }

    public void a() {
        a aVar = this.f53209a;
        if (aVar != null) {
            aVar.a(false);
        }
    }

    public boolean b() {
        a aVar = this.f53209a;
        return aVar != null && aVar.f53188d.get();
    }

    public void a(SocketAddress socketAddress, boolean z3, boolean z4, int i2) throws Throwable {
        a aVar = this.f53209a;
        if (aVar != null) {
            if (!socketAddress.equals(aVar.f53187c)) {
                this.f53209a.a(false);
            } else if (b()) {
                return;
            }
        }
        Socket socket = new Socket();
        socket.setKeepAlive(z3);
        socket.setTcpNoDelay(z4);
        socket.connect(socketAddress, i2);
        a aVar2 = new a(socket, this.f53210b);
        this.f53209a = aVar2;
        aVar2.f53187c = socketAddress;
    }

    public c a(e eVar) {
        if (eVar.f53207c == 0) {
            eVar.f53207c = this.f53211c.incrementAndGet();
        }
        return this.f53209a.a(eVar);
    }
}
