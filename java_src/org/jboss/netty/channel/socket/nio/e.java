package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.NotYetConnectedException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.i0;
import org.jboss.netty.channel.socket.nio.x;
/* compiled from: AbstractNioWorker.java */
/* loaded from: classes5.dex */
abstract class e extends d implements k3.f {

    /* renamed from: m  reason: collision with root package name */
    protected final x f73509m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractNioWorker.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f73510a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.j f73511b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f73512c;

        a(b bVar, org.jboss.netty.channel.j jVar, int i2) {
            this.f73510a = bVar;
            this.f73511b = jVar;
            this.f73512c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.t(this.f73510a, this.f73511b, this.f73512c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Executor executor) {
        super(executor);
        this.f73509m = new x();
    }

    protected static void l(b<?> bVar) {
        Throwable th;
        boolean z3;
        Throwable closedChannelException;
        Throwable closedChannelException2;
        synchronized (bVar.f73479o) {
            i0 i0Var = bVar.f73485u;
            th = null;
            if (i0Var != null) {
                if (bVar.isOpen()) {
                    closedChannelException2 = new NotYetConnectedException();
                } else {
                    closedChannelException2 = new ClosedChannelException();
                }
                org.jboss.netty.channel.j d4 = i0Var.d();
                x.g gVar = bVar.f73486v;
                if (gVar != null) {
                    gVar.release();
                    bVar.f73486v = null;
                }
                bVar.f73485u = null;
                d4.setFailure(closedChannelException2);
                th = closedChannelException2;
                z3 = true;
            } else {
                z3 = false;
            }
            Queue<i0> queue = bVar.f73482r;
            while (true) {
                i0 poll = queue.poll();
                if (poll == null) {
                    break;
                }
                if (th == null) {
                    if (bVar.isOpen()) {
                        closedChannelException = new NotYetConnectedException();
                    } else {
                        closedChannelException = new ClosedChannelException();
                    }
                    th = closedChannelException;
                    z3 = true;
                }
                poll.d().setFailure(th);
            }
        }
        if (z3) {
            if (p(bVar)) {
                org.jboss.netty.channel.s.D(bVar, th);
            } else {
                org.jboss.netty.channel.s.F(bVar, th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean p(b<?> bVar) {
        return Thread.currentThread() == bVar.f73478n.f73501c;
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected void b(SelectionKey selectionKey) {
        b<?> bVar = (b) selectionKey.attachment();
        n(bVar, org.jboss.netty.channel.s.W(bVar));
    }

    @Override // k3.f
    public void e0(Runnable runnable) {
        o(runnable, false);
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected org.jboss.netty.util.e f(int i2, org.jboss.netty.util.d dVar) {
        return new org.jboss.netty.util.e(this, "New I/O worker #" + i2, dVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected void h(Selector selector) throws IOException {
        int readyOps;
        Set<SelectionKey> selectedKeys = selector.selectedKeys();
        if (selectedKeys.isEmpty()) {
            return;
        }
        Iterator<SelectionKey> it2 = selectedKeys.iterator();
        while (it2.hasNext()) {
            SelectionKey next = it2.next();
            it2.remove();
            try {
                readyOps = next.readyOps();
            } catch (CancelledKeyException unused) {
                b(next);
            }
            if (((readyOps & 1) == 0 && readyOps != 0) || q(next)) {
                if ((readyOps & 4) != 0) {
                    w(next);
                }
                if (a()) {
                    return;
                }
            }
        }
    }

    protected void m(b<?> bVar) {
        SelectionKey keyFor = bVar.A.keyFor(this.f73502d);
        if (keyFor == null) {
            return;
        }
        if (!keyFor.isValid()) {
            b(keyFor);
            return;
        }
        int m02 = bVar.m0();
        if ((m02 & 4) != 0) {
            int i2 = m02 & (-5);
            keyFor.interestOps(i2);
            bVar.L0(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n(b<?> bVar, org.jboss.netty.channel.j jVar) {
        boolean isConnected = bVar.isConnected();
        boolean r3 = bVar.r();
        boolean p3 = p(bVar);
        try {
            bVar.A.close();
            d();
            if (bVar.Y()) {
                jVar.setSuccess();
                if (isConnected) {
                    if (p3) {
                        org.jboss.netty.channel.s.r(bVar);
                    } else {
                        org.jboss.netty.channel.s.t(bVar);
                    }
                }
                if (r3) {
                    if (p3) {
                        org.jboss.netty.channel.s.z(bVar);
                    } else {
                        org.jboss.netty.channel.s.B(bVar);
                    }
                }
                l(bVar);
                if (p3) {
                    org.jboss.netty.channel.s.m(bVar);
                    return;
                } else {
                    org.jboss.netty.channel.s.o(bVar);
                    return;
                }
            }
            jVar.setSuccess();
        } catch (Throwable th) {
            jVar.setFailure(th);
            if (p3) {
                org.jboss.netty.channel.s.D(bVar, th);
            } else {
                org.jboss.netty.channel.s.F(bVar, th);
            }
        }
    }

    public void o(Runnable runnable, boolean z3) {
        if (!z3 && e()) {
            runnable.run();
        } else {
            j(runnable);
        }
    }

    protected abstract boolean q(SelectionKey selectionKey);

    protected abstract boolean r(b<?> bVar);

    @Override // org.jboss.netty.channel.socket.nio.d, java.lang.Runnable
    public void run() {
        super.run();
        this.f73509m.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(b<?> bVar, org.jboss.netty.channel.j jVar, int i2) {
        boolean p3 = p(bVar);
        if (!p3) {
            bVar.getPipeline().execute(new a(bVar, jVar, i2));
            return;
        }
        try {
            Selector selector = this.f73502d;
            SelectionKey keyFor = bVar.A.keyFor(selector);
            int m02 = (i2 & (-5)) | (bVar.m0() & 4);
            boolean z3 = true;
            if (keyFor != null && selector != null) {
                if (bVar.m0() != m02) {
                    keyFor.interestOps(m02);
                    if (Thread.currentThread() != this.f73501c && this.f73503e.compareAndSet(false, true)) {
                        selector.wakeup();
                    }
                    bVar.L0(m02);
                }
                jVar.setSuccess();
                return;
            }
            if (bVar.m0() == m02) {
                z3 = false;
            }
            bVar.L0(m02);
            jVar.setSuccess();
            if (z3) {
                if (p3) {
                    org.jboss.netty.channel.s.u(bVar);
                } else {
                    org.jboss.netty.channel.s.w(bVar);
                }
            }
        } catch (CancelledKeyException unused) {
            ClosedChannelException closedChannelException = new ClosedChannelException();
            jVar.setFailure(closedChannelException);
            org.jboss.netty.channel.s.D(bVar, closedChannelException);
        } catch (Throwable th) {
            jVar.setFailure(th);
            org.jboss.netty.channel.s.D(bVar, th);
        }
    }

    protected void u(b<?> bVar) {
        SelectionKey keyFor = bVar.A.keyFor(this.f73502d);
        if (keyFor == null) {
            return;
        }
        if (!keyFor.isValid()) {
            b(keyFor);
            return;
        }
        int m02 = bVar.m0();
        if ((m02 & 4) == 0) {
            int i2 = m02 | 4;
            keyFor.interestOps(i2);
            bVar.L0(i2);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:6|7|(12:9|10|(4:90|91|93|94)(5:12|13|14|15|16)|86|61|(1:63)|64|(1:66)|(1:68)(1:74)|69|(2:71|72)(1:73)|33)(4:102|103|104|105)|17|(1:(2:19|(2:79|80)(2:21|(1:24)(1:23)))(1:81))|25|26|27|(5:29|30|31|32|33)(5:34|35|36|37|(2:39|41)(1:57))) */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b7, code lost:
        r4 = r15;
        r6 = false;
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00db, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00dc, code lost:
        r10 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00f6 A[Catch: all -> 0x011d, TRY_ENTER, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:105:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00ff A[Catch: all -> 0x011d, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:105:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0104 A[Catch: all -> 0x011d, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:105:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0108 A[Catch: all -> 0x011d, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:105:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x010f A[Catch: all -> 0x011d, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:105:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void v(org.jboss.netty.channel.socket.nio.b<?> r29) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.e.v(org.jboss.netty.channel.socket.nio.b):void");
    }

    void w(SelectionKey selectionKey) {
        b<?> bVar = (b) selectionKey.attachment();
        bVar.f73488x = false;
        v(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(b<?> bVar) {
        if (bVar.f73488x) {
            return;
        }
        v(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(b<?> bVar) {
        if (!bVar.isConnected()) {
            l(bVar);
        } else if (r(bVar) || bVar.f73488x || bVar.f73487w) {
        } else {
            v(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Executor executor, org.jboss.netty.util.d dVar) {
        super(executor, dVar);
        this.f73509m = new x();
    }
}
