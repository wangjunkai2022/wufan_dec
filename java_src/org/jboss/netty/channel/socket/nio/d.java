package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.ChannelException;
/* compiled from: AbstractNioSelector.java */
/* loaded from: classes5.dex */
abstract class d implements p {

    /* renamed from: j  reason: collision with root package name */
    private static final AtomicInteger f73496j = new AtomicInteger();

    /* renamed from: k  reason: collision with root package name */
    private static final int f73497k = 256;

    /* renamed from: l  reason: collision with root package name */
    static final /* synthetic */ boolean f73498l = false;

    /* renamed from: a  reason: collision with root package name */
    private final int f73499a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f73500b;

    /* renamed from: c  reason: collision with root package name */
    protected volatile Thread f73501c;

    /* renamed from: d  reason: collision with root package name */
    protected volatile Selector f73502d;

    /* renamed from: e  reason: collision with root package name */
    protected final AtomicBoolean f73503e;

    /* renamed from: f  reason: collision with root package name */
    private final Queue<Runnable> f73504f;

    /* renamed from: g  reason: collision with root package name */
    private volatile int f73505g;

    /* renamed from: h  reason: collision with root package name */
    private final CountDownLatch f73506h;

    /* renamed from: i  reason: collision with root package name */
    private volatile boolean f73507i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractNioSelector.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.rebuildSelector();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Executor executor) {
        this(executor, null);
    }

    private void g(org.jboss.netty.util.d dVar) {
        try {
            this.f73502d = Selector.open();
            try {
                org.jboss.netty.util.internal.c.a(this.f73500b, f(this.f73499a, dVar));
            } catch (Throwable th) {
                try {
                    this.f73502d.close();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                this.f73502d = null;
                throw th;
            }
        } catch (Throwable th3) {
            throw new ChannelException("Failed to create a selector.", th3);
        }
    }

    private void i() {
        while (true) {
            Runnable poll = this.f73504f.poll();
            if (poll == null) {
                return;
            }
            poll.run();
            try {
                a();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a() throws IOException {
        if (this.f73505g >= 256) {
            this.f73505g = 0;
            this.f73502d.selectNow();
            return true;
        }
        return false;
    }

    protected abstract void b(SelectionKey selectionKey);

    protected abstract Runnable c(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        this.f73505g++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean e() {
        return Thread.currentThread() == this.f73501c;
    }

    protected abstract org.jboss.netty.util.e f(int i2, org.jboss.netty.util.d dVar);

    protected abstract void h(Selector selector) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j(Runnable runnable) {
        this.f73504f.add(runnable);
        Selector selector = this.f73502d;
        if (selector != null) {
            if (this.f73503e.compareAndSet(false, true)) {
                selector.wakeup();
            }
        } else if (this.f73504f.remove(runnable)) {
            throw new RejectedExecutionException("Worker has already been shutdown");
        }
    }

    protected int k(Selector selector) throws IOException {
        return v.a(selector);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
        continue;
     */
    @Override // org.jboss.netty.channel.socket.nio.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void rebuildSelector() {
        /*
            r7 = this;
            boolean r0 = r7.e()
            if (r0 != 0) goto L11
            java.util.Queue<java.lang.Runnable> r0 = r7.f73504f
            org.jboss.netty.channel.socket.nio.d$a r1 = new org.jboss.netty.channel.socket.nio.d$a
            r1.<init>()
            r0.add(r1)
            return
        L11:
            java.nio.channels.Selector r0 = r7.f73502d
            if (r0 != 0) goto L16
            return
        L16:
            java.nio.channels.Selector r1 = java.nio.channels.Selector.open()     // Catch: java.lang.Exception -> L5b
        L1a:
            java.util.Set r2 = r0.keys()     // Catch: java.util.ConcurrentModificationException -> L1a
            java.util.Iterator r2 = r2.iterator()     // Catch: java.util.ConcurrentModificationException -> L1a
        L22:
            boolean r3 = r2.hasNext()     // Catch: java.util.ConcurrentModificationException -> L1a
            if (r3 == 0) goto L50
            java.lang.Object r3 = r2.next()     // Catch: java.util.ConcurrentModificationException -> L1a
            java.nio.channels.SelectionKey r3 = (java.nio.channels.SelectionKey) r3     // Catch: java.util.ConcurrentModificationException -> L1a
            java.nio.channels.SelectableChannel r4 = r3.channel()     // Catch: java.lang.Exception -> L4c
            java.nio.channels.SelectionKey r4 = r4.keyFor(r1)     // Catch: java.lang.Exception -> L4c
            if (r4 == 0) goto L39
            goto L22
        L39:
            int r4 = r3.interestOps()     // Catch: java.lang.Exception -> L4c
            r3.cancel()     // Catch: java.lang.Exception -> L4c
            java.nio.channels.SelectableChannel r5 = r3.channel()     // Catch: java.lang.Exception -> L4c
            java.lang.Object r6 = r3.attachment()     // Catch: java.lang.Exception -> L4c
            r5.register(r1, r4, r6)     // Catch: java.lang.Exception -> L4c
            goto L22
        L4c:
            r7.b(r3)     // Catch: java.util.ConcurrentModificationException -> L1a
            goto L22
        L50:
            r7.f73502d = r1
            r0.close()     // Catch: java.lang.Throwable -> L56
            goto L5a
        L56:
            r0 = move-exception
            r0.printStackTrace()
        L5a:
            return
        L5b:
            r0 = move-exception
            r0.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.d.rebuildSelector():void");
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f73501c = Thread.currentThread();
        Selector selector = this.f73502d;
        if (selector == null) {
            return;
        }
        long j4 = (v.f73553d * 80) / 100;
        while (true) {
            boolean z3 = false;
            int i2 = 0;
            while (true) {
                this.f73503e.set(false);
                try {
                    long nanoTime = System.nanoTime();
                    int k4 = k(selector);
                    if (v.f73554e && k4 == 0 && !z3 && !this.f73503e.get()) {
                        if (System.nanoTime() - nanoTime < j4) {
                            boolean z4 = false;
                            for (SelectionKey selectionKey : selector.keys()) {
                                SelectableChannel channel = selectionKey.channel();
                                try {
                                    if (((channel instanceof DatagramChannel) && !((DatagramChannel) channel).isConnected()) || ((channel instanceof SocketChannel) && !((SocketChannel) channel).isConnected())) {
                                        try {
                                            selectionKey.cancel();
                                        } catch (CancelledKeyException unused) {
                                        }
                                        z4 = true;
                                    }
                                } catch (CancelledKeyException unused2) {
                                }
                            }
                            if (!z4) {
                                i2++;
                                if (i2 == 1024) {
                                    break;
                                }
                            }
                        }
                        i2 = 0;
                        if (i2 == 1024) {
                            break;
                        }
                    } else {
                        i2 = 0;
                    }
                    if (this.f73503e.get()) {
                        try {
                            selector.wakeup();
                            z3 = true;
                        } catch (Throwable th) {
                            th = th;
                            z3 = true;
                            th.printStackTrace();
                            try {
                                Thread.sleep(1000L);
                            } catch (InterruptedException unused3) {
                            }
                        }
                    } else {
                        z3 = false;
                    }
                    this.f73505g = 0;
                    i();
                    selector = this.f73502d;
                } catch (Throwable th2) {
                    th = th2;
                    th.printStackTrace();
                    Thread.sleep(1000L);
                }
                if (this.f73507i) {
                    this.f73502d = null;
                    i();
                    for (SelectionKey selectionKey2 : selector.keys()) {
                        b(selectionKey2);
                    }
                    try {
                        selector.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    this.f73506h.countDown();
                    return;
                }
                h(selector);
            }
            rebuildSelector();
            selector = this.f73502d;
        }
    }

    @Override // org.jboss.netty.channel.socket.nio.p
    public void s(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        j(c(eVar, jVar));
    }

    @Override // org.jboss.netty.channel.socket.nio.p
    public void shutdown() {
        if (!e()) {
            Selector selector = this.f73502d;
            this.f73507i = true;
            if (selector != null) {
                selector.wakeup();
            }
            try {
                this.f73506h.await();
                return;
            } catch (InterruptedException e4) {
                e4.printStackTrace();
                Thread.currentThread().interrupt();
                return;
            }
        }
        throw new IllegalStateException("Must not be called from a I/O-Thread to prevent deadlocks!");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Executor executor, org.jboss.netty.util.d dVar) {
        this.f73499a = f73496j.incrementAndGet();
        this.f73503e = new AtomicBoolean();
        this.f73504f = new ConcurrentLinkedQueue();
        this.f73506h = new CountDownLatch(1);
        this.f73500b = executor;
        g(dVar);
    }
}
