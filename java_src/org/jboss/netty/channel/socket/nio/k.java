package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.ConnectException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* compiled from: NioClientBoss.java */
/* loaded from: classes5.dex */
public final class k extends d implements g {

    /* renamed from: m  reason: collision with root package name */
    private final org.jboss.netty.util.h f73524m;

    /* renamed from: n  reason: collision with root package name */
    private final org.jboss.netty.util.g f73525n;

    /* compiled from: NioClientBoss.java */
    /* loaded from: classes5.dex */
    class a implements org.jboss.netty.util.h {
        a() {
        }

        @Override // org.jboss.netty.util.h
        public void a(org.jboss.netty.util.f fVar) throws Exception {
            Selector selector = k.this.f73502d;
            if (selector == null || !k.this.f73503e.compareAndSet(false, true)) {
                return;
            }
            selector.wakeup();
        }
    }

    /* compiled from: NioClientBoss.java */
    /* loaded from: classes5.dex */
    private final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final k f73527a;

        /* renamed from: b  reason: collision with root package name */
        private final m f73528b;

        b(k kVar, m mVar) {
            this.f73527a = kVar;
            this.f73528b = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            int connectTimeoutMillis = this.f73528b.getConfig().getConnectTimeoutMillis();
            if (connectTimeoutMillis > 0 && !this.f73528b.isConnected()) {
                this.f73528b.f73533n0 = k.this.f73525n.a(k.this.f73524m, connectTimeoutMillis, TimeUnit.MILLISECONDS);
            }
            try {
                ((SocketChannel) this.f73528b.A).register(this.f73527a.f73502d, 8, this.f73528b);
            } catch (ClosedChannelException unused) {
                m mVar = this.f73528b;
                mVar.f73478n.n(mVar, org.jboss.netty.channel.s.W(mVar));
            }
            int connectTimeoutMillis2 = this.f73528b.getConfig().getConnectTimeoutMillis();
            if (connectTimeoutMillis2 > 0) {
                this.f73528b.K = System.nanoTime() + (connectTimeoutMillis2 * 1000000);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Executor executor, org.jboss.netty.util.g gVar, org.jboss.netty.util.d dVar) {
        super(executor, dVar);
        this.f73524m = new a();
        this.f73525n = gVar;
    }

    private static void n(SelectionKey selectionKey) throws IOException {
        m mVar = (m) selectionKey.attachment();
        if (((SocketChannel) mVar.A).finishConnect()) {
            selectionKey.cancel();
            if (mVar.f73533n0 != null) {
                mVar.f73533n0.cancel();
            }
            mVar.f73478n.s(mVar, mVar.I);
        }
    }

    private static void o(Set<SelectionKey> set, long j4) {
        ConnectException connectException = null;
        for (SelectionKey selectionKey : set) {
            if (selectionKey.isValid()) {
                m mVar = (m) selectionKey.attachment();
                long j5 = mVar.K;
                if (j5 > 0 && j4 >= j5) {
                    if (connectException == null) {
                        connectException = new ConnectException("connection timed out");
                    }
                    mVar.I.setFailure(connectException);
                    org.jboss.netty.channel.s.D(mVar, connectException);
                    mVar.f73478n.n(mVar, org.jboss.netty.channel.s.W(mVar));
                }
            }
        }
    }

    private void p(Set<SelectionKey> set) {
        if (set.isEmpty()) {
            return;
        }
        Iterator<SelectionKey> it2 = set.iterator();
        while (it2.hasNext()) {
            SelectionKey next = it2.next();
            it2.remove();
            if (!next.isValid()) {
                b(next);
            } else {
                try {
                    if (next.isConnectable()) {
                        n(next);
                    }
                } catch (Throwable th) {
                    m mVar = (m) next.attachment();
                    mVar.I.setFailure(th);
                    org.jboss.netty.channel.s.D(mVar, th);
                    next.cancel();
                    mVar.f73478n.n(mVar, org.jboss.netty.channel.s.W(mVar));
                }
            }
        }
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected void b(SelectionKey selectionKey) {
        m mVar = (m) selectionKey.attachment();
        mVar.f73478n.n(mVar, org.jboss.netty.channel.s.W(mVar));
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected Runnable c(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        return new b(this, (m) eVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected org.jboss.netty.util.e f(int i2, org.jboss.netty.util.d dVar) {
        return new org.jboss.netty.util.e(this, "New I/O boss #" + i2, dVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected void h(Selector selector) {
        p(selector.selectedKeys());
        o(selector.keys(), System.nanoTime());
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void rebuildSelector() {
        super.rebuildSelector();
    }

    @Override // org.jboss.netty.channel.socket.nio.d, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void s(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        super.s(eVar, jVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void shutdown() {
        super.shutdown();
    }
}
