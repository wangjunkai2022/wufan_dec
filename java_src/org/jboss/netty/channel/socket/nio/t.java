package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SocketChannel;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelException;
/* compiled from: NioWorker.java */
/* loaded from: classes5.dex */
public class t extends e {

    /* renamed from: n  reason: collision with root package name */
    private final w f73544n;

    /* compiled from: NioWorker.java */
    /* loaded from: classes5.dex */
    private final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final r f73545a;

        /* renamed from: b  reason: collision with root package name */
        private final org.jboss.netty.channel.j f73546b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f73547c;

        a(r rVar, org.jboss.netty.channel.j jVar, boolean z3) {
            this.f73545a = rVar;
            this.f73546b = jVar;
            this.f73547c = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            InetSocketAddress localAddress = this.f73545a.getLocalAddress();
            InetSocketAddress remoteAddress = this.f73545a.getRemoteAddress();
            if (localAddress != null && remoteAddress != null) {
                try {
                    if (this.f73547c) {
                        ((SocketChannel) this.f73545a.A).configureBlocking(false);
                    }
                    ((SocketChannel) this.f73545a.A).register(t.this.f73502d, this.f73545a.m0(), this.f73545a);
                    if (this.f73546b != null) {
                        this.f73545a.P0();
                        this.f73546b.setSuccess();
                    }
                    if (this.f73547c || !((m) this.f73545a).J) {
                        org.jboss.netty.channel.s.k(this.f73545a, localAddress);
                    }
                    org.jboss.netty.channel.s.p(this.f73545a, remoteAddress);
                    return;
                } catch (IOException e4) {
                    org.jboss.netty.channel.j jVar = this.f73546b;
                    if (jVar != null) {
                        jVar.setFailure(e4);
                    }
                    t tVar = t.this;
                    r rVar = this.f73545a;
                    tVar.n(rVar, org.jboss.netty.channel.s.W(rVar));
                    if (!(e4 instanceof ClosedChannelException)) {
                        throw new ChannelException("Failed to register a socket to the selector.", e4);
                    }
                    return;
                }
            }
            org.jboss.netty.channel.j jVar2 = this.f73546b;
            if (jVar2 != null) {
                jVar2.setFailure(new ClosedChannelException());
            }
            t tVar2 = t.this;
            r rVar2 = this.f73545a;
            tVar2.n(rVar2, org.jboss.netty.channel.s.W(rVar2));
        }
    }

    public t(Executor executor) {
        super(executor);
        this.f73544n = new w();
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected Runnable c(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        return new a((r) eVar, jVar, !(eVar instanceof m));
    }

    @Override // org.jboss.netty.channel.socket.nio.e, k3.f
    public /* bridge */ /* synthetic */ void e0(Runnable runnable) {
        super.e0(runnable);
    }

    @Override // org.jboss.netty.channel.socket.nio.e
    public /* bridge */ /* synthetic */ void o(Runnable runnable, boolean z3) {
        super.o(runnable, z3);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d A[ADDED_TO_REGION] */
    @Override // org.jboss.netty.channel.socket.nio.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean q(java.nio.channels.SelectionKey r11) {
        /*
            r10 = this;
            java.nio.channels.SelectableChannel r0 = r11.channel()
            java.nio.channels.SocketChannel r0 = (java.nio.channels.SocketChannel) r0
            java.lang.Object r1 = r11.attachment()
            org.jboss.netty.channel.socket.nio.r r1 = (org.jboss.netty.channel.socket.nio.r) r1
            org.jboss.netty.channel.socket.nio.s r2 = r1.getConfig()
            org.jboss.netty.channel.j0 r2 = r2.f()
            int r3 = r2.a()
            org.jboss.netty.channel.socket.nio.s r4 = r1.getConfig()
            org.jboss.netty.buffer.f r4 = r4.g()
            org.jboss.netty.channel.socket.nio.w r5 = r10.f73544n
            java.nio.ByteBuffer r3 = r5.c(r3)
            java.nio.ByteOrder r5 = r4.d()
            java.nio.ByteBuffer r3 = r3.order(r5)
            r5 = 0
            r6 = 0
            r7 = 0
        L31:
            r8 = 1
            int r7 = r0.read(r3)     // Catch: java.lang.Throwable -> L41 java.nio.channels.ClosedChannelException -> L45
            if (r7 <= 0) goto L3f
            int r6 = r6 + r7
            boolean r9 = r3.hasRemaining()     // Catch: java.lang.Throwable -> L41 java.nio.channels.ClosedChannelException -> L45
            if (r9 != 0) goto L31
        L3f:
            r0 = 0
            goto L46
        L41:
            r0 = move-exception
            org.jboss.netty.channel.s.D(r1, r0)
        L45:
            r0 = 1
        L46:
            if (r6 <= 0) goto L5b
            r3.flip()
            org.jboss.netty.buffer.e r4 = r4.a(r6)
            r4.G0(r5, r3)
            r4.u0(r6)
            r2.b(r6)
            org.jboss.netty.channel.s.H(r1, r4)
        L5b:
            if (r7 < 0) goto L61
            if (r0 == 0) goto L60
            goto L61
        L60:
            return r8
        L61:
            r11.cancel()
            org.jboss.netty.channel.j r11 = org.jboss.netty.channel.s.W(r1)
            r10.n(r1, r11)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.t.q(java.nio.channels.SelectionKey):boolean");
    }

    @Override // org.jboss.netty.channel.socket.nio.e
    protected boolean r(b<?> bVar) {
        if (Thread.currentThread() != this.f73501c) {
            if (bVar.f73481q.compareAndSet(false, true)) {
                j(bVar.f73480p);
            }
            return true;
        }
        return false;
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void rebuildSelector() {
        super.rebuildSelector();
    }

    @Override // org.jboss.netty.channel.socket.nio.e, org.jboss.netty.channel.socket.nio.d, java.lang.Runnable
    public void run() {
        super.run();
        this.f73544n.b();
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void s(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        super.s(eVar, jVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void shutdown() {
        super.shutdown();
    }

    public t(Executor executor, org.jboss.netty.util.d dVar) {
        super(executor, dVar);
        this.f73544n = new w();
    }
}
