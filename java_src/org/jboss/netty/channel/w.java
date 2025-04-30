package org.jboss.netty.channel;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
/* compiled from: DefaultChannelFuture.java */
/* loaded from: classes5.dex */
public class w implements j {

    /* renamed from: i  reason: collision with root package name */
    private static final Throwable f73583i = new Throwable();

    /* renamed from: j  reason: collision with root package name */
    private static volatile boolean f73584j = true;

    /* renamed from: k  reason: collision with root package name */
    private static boolean f73585k;

    /* renamed from: a  reason: collision with root package name */
    private final e f73586a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f73587b;

    /* renamed from: c  reason: collision with root package name */
    private k f73588c;

    /* renamed from: d  reason: collision with root package name */
    private List<k> f73589d;

    /* renamed from: e  reason: collision with root package name */
    private List<l> f73590e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f73591f;

    /* renamed from: g  reason: collision with root package name */
    private Throwable f73592g;

    /* renamed from: h  reason: collision with root package name */
    private int f73593h;

    public w(e eVar, boolean z3) {
        this.f73586a = eVar;
        this.f73587b = z3;
    }

    private boolean f(long j4, boolean z3) throws InterruptedException {
        if (z3 && Thread.interrupted()) {
            throw new InterruptedException();
        }
        long nanoTime = j4 <= 0 ? 0L : System.nanoTime();
        boolean z4 = false;
        try {
            synchronized (this) {
                boolean z5 = this.f73591f;
                if (!z5 && j4 > 0) {
                    g();
                    this.f73593h++;
                    long j5 = j4;
                    do {
                        try {
                            wait(j5 / 1000000, (int) (j5 % 1000000));
                        } catch (InterruptedException e4) {
                            if (z3) {
                                throw e4;
                            }
                            z4 = true;
                        }
                        if (this.f73591f) {
                            this.f73593h--;
                            return true;
                        }
                        j5 = j4 - (System.nanoTime() - nanoTime);
                    } while (j5 > 0);
                    boolean z6 = this.f73591f;
                    this.f73593h--;
                    if (z4) {
                        Thread.currentThread().interrupt();
                    }
                    return z6;
                }
                return z5;
            }
        } finally {
            if (0 != 0) {
                Thread.currentThread().interrupt();
            }
        }
    }

    private static void g() {
        if (h() && org.jboss.netty.util.internal.c.f73730a.get() != null) {
            throw new IllegalStateException("await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread.");
        }
    }

    public static boolean h() {
        return f73584j;
    }

    private void i(k kVar) {
        try {
            kVar.b(this);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void j() {
        k kVar = this.f73588c;
        if (kVar != null) {
            i(kVar);
            this.f73588c = null;
            List<k> list = this.f73589d;
            if (list != null) {
                for (k kVar2 : list) {
                    i(kVar2);
                }
                this.f73589d = null;
            }
        }
    }

    private void k(l lVar, long j4, long j5, long j6) {
        try {
            lVar.c(this, j4, j5, j6);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void l() {
        Throwable a4 = a();
        if (a4 == null) {
            return;
        }
        if (!(a4 instanceof RuntimeException)) {
            if (a4 instanceof Error) {
                throw ((Error) a4);
            }
            throw new ChannelException(a4);
        }
        throw ((RuntimeException) a4);
    }

    public static void m(boolean z3) {
        if (!z3 && !f73585k) {
            f73585k = true;
        }
        f73584j = z3;
    }

    @Override // org.jboss.netty.channel.j
    public synchronized Throwable a() {
        Throwable th = this.f73592g;
        if (th != f73583i) {
            return th;
        }
        return null;
    }

    @Override // org.jboss.netty.channel.j
    public j await() throws InterruptedException {
        if (!Thread.interrupted()) {
            synchronized (this) {
                while (!this.f73591f) {
                    g();
                    this.f73593h++;
                    wait();
                    this.f73593h--;
                }
            }
            return this;
        }
        throw new InterruptedException();
    }

    @Override // org.jboss.netty.channel.j
    public j awaitUninterruptibly() {
        boolean z3;
        synchronized (this) {
            z3 = false;
            while (!this.f73591f) {
                g();
                this.f73593h++;
                try {
                    wait();
                    this.f73593h--;
                } catch (InterruptedException unused) {
                    this.f73593h--;
                    z3 = true;
                }
            }
        }
        if (z3) {
            Thread.currentThread().interrupt();
        }
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public void b(k kVar) {
        Objects.requireNonNull(kVar, "listener");
        boolean z3 = false;
        synchronized (this) {
            if (this.f73591f) {
                z3 = true;
            } else {
                if (this.f73588c == null) {
                    this.f73588c = kVar;
                } else {
                    if (this.f73589d == null) {
                        this.f73589d = new ArrayList(1);
                    }
                    this.f73589d.add(kVar);
                }
                if (kVar instanceof l) {
                    if (this.f73590e == null) {
                        this.f73590e = new ArrayList(1);
                    }
                    this.f73590e.add((l) kVar);
                }
            }
        }
        if (z3) {
            i(kVar);
        }
    }

    @Override // org.jboss.netty.channel.j
    public void c(k kVar) {
        Objects.requireNonNull(kVar, "listener");
        synchronized (this) {
            if (!this.f73591f) {
                if (kVar == this.f73588c) {
                    List<k> list = this.f73589d;
                    if (list != null && !list.isEmpty()) {
                        this.f73588c = this.f73589d.remove(0);
                    } else {
                        this.f73588c = null;
                    }
                } else {
                    List<k> list2 = this.f73589d;
                    if (list2 != null) {
                        list2.remove(kVar);
                    }
                }
                if (kVar instanceof l) {
                    this.f73590e.remove(kVar);
                }
            }
        }
    }

    @Override // org.jboss.netty.channel.j
    public boolean cancel() {
        if (this.f73587b) {
            synchronized (this) {
                if (this.f73591f) {
                    return false;
                }
                this.f73592g = f73583i;
                this.f73591f = true;
                if (this.f73593h > 0) {
                    notifyAll();
                }
                j();
                return true;
            }
        }
        return false;
    }

    @Override // org.jboss.netty.channel.j
    public boolean d(long j4, long j5, long j6) {
        synchronized (this) {
            if (this.f73591f) {
                return false;
            }
            List<l> list = this.f73590e;
            if (list != null && !list.isEmpty()) {
                for (l lVar : (l[]) list.toArray(new l[list.size()])) {
                    k(lVar, j4, j5, j6);
                }
                return true;
            }
            return true;
        }
    }

    @Override // org.jboss.netty.channel.j
    @Deprecated
    public j e() throws Exception {
        Throwable a4;
        if (isDone() && (a4 = a()) != null) {
            if (!(a4 instanceof Exception)) {
                if (a4 instanceof Error) {
                    throw ((Error) a4);
                }
                throw new RuntimeException(a4);
            }
            throw ((Exception) a4);
        }
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public e getChannel() {
        return this.f73586a;
    }

    @Override // org.jboss.netty.channel.j
    public synchronized boolean isCancelled() {
        return this.f73592g == f73583i;
    }

    @Override // org.jboss.netty.channel.j
    public synchronized boolean isDone() {
        return this.f73591f;
    }

    @Override // org.jboss.netty.channel.j
    public synchronized boolean isSuccess() {
        boolean z3;
        if (this.f73591f) {
            z3 = this.f73592g == null;
        }
        return z3;
    }

    @Override // org.jboss.netty.channel.j
    public boolean setFailure(Throwable th) {
        synchronized (this) {
            if (this.f73591f) {
                return false;
            }
            this.f73592g = th;
            this.f73591f = true;
            if (this.f73593h > 0) {
                notifyAll();
            }
            j();
            return true;
        }
    }

    @Override // org.jboss.netty.channel.j
    public boolean setSuccess() {
        synchronized (this) {
            if (this.f73591f) {
                return false;
            }
            this.f73591f = true;
            if (this.f73593h > 0) {
                notifyAll();
            }
            j();
            return true;
        }
    }

    @Override // org.jboss.netty.channel.j
    public j sync() throws InterruptedException {
        await();
        l();
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public j syncUninterruptibly() {
        awaitUninterruptibly();
        l();
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public boolean await(long j4, TimeUnit timeUnit) throws InterruptedException {
        return f(timeUnit.toNanos(j4), true);
    }

    @Override // org.jboss.netty.channel.j
    public boolean awaitUninterruptibly(long j4, TimeUnit timeUnit) {
        try {
            return f(timeUnit.toNanos(j4), false);
        } catch (InterruptedException unused) {
            throw new InternalError();
        }
    }

    @Override // org.jboss.netty.channel.j
    public boolean await(long j4) throws InterruptedException {
        return f(TimeUnit.MILLISECONDS.toNanos(j4), true);
    }

    @Override // org.jboss.netty.channel.j
    public boolean awaitUninterruptibly(long j4) {
        try {
            return f(TimeUnit.MILLISECONDS.toNanos(j4), false);
        } catch (InterruptedException unused) {
            throw new InternalError();
        }
    }
}
