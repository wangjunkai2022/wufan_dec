package org.jboss.netty.channel.socket.nio;

import java.net.InetSocketAddress;
import java.nio.channels.SelectableChannel;
import java.nio.channels.WritableByteChannel;
import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.i0;
import org.jboss.netty.channel.socket.nio.x;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractNioChannel.java */
/* loaded from: classes5.dex */
public abstract class b<C extends SelectableChannel & WritableByteChannel> extends org.jboss.netty.channel.a {
    final C A;

    /* renamed from: n  reason: collision with root package name */
    final e f73478n;

    /* renamed from: o  reason: collision with root package name */
    final Object f73479o;

    /* renamed from: p  reason: collision with root package name */
    final Runnable f73480p;

    /* renamed from: q  reason: collision with root package name */
    final AtomicBoolean f73481q;

    /* renamed from: r  reason: collision with root package name */
    final Queue<i0> f73482r;

    /* renamed from: s  reason: collision with root package name */
    final AtomicInteger f73483s;

    /* renamed from: t  reason: collision with root package name */
    final AtomicInteger f73484t;

    /* renamed from: u  reason: collision with root package name */
    i0 f73485u;

    /* renamed from: v  reason: collision with root package name */
    x.g f73486v;

    /* renamed from: w  reason: collision with root package name */
    boolean f73487w;

    /* renamed from: x  reason: collision with root package name */
    boolean f73488x;

    /* renamed from: y  reason: collision with root package name */
    private volatile InetSocketAddress f73489y;

    /* renamed from: z  reason: collision with root package name */
    volatile InetSocketAddress f73490z;

    /* compiled from: AbstractNioChannel.java */
    /* loaded from: classes5.dex */
    private final class a implements Queue<i0> {

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ boolean f73491d = false;

        /* renamed from: a  reason: collision with root package name */
        private final org.jboss.netty.util.internal.k f73492a = new org.jboss.netty.util.internal.k();

        /* renamed from: b  reason: collision with root package name */
        private final Queue<i0> f73493b = new ConcurrentLinkedQueue();

        public a() {
        }

        private int c(i0 i0Var) {
            Object message = i0Var.getMessage();
            if (message instanceof org.jboss.netty.buffer.e) {
                return ((org.jboss.netty.buffer.e) message).readableBytes();
            }
            return 0;
        }

        @Override // java.util.Queue, java.util.Collection
        /* renamed from: a */
        public boolean add(i0 i0Var) {
            return this.f73493b.add(i0Var);
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends i0> collection) {
            return this.f73493b.addAll(collection);
        }

        @Override // java.util.Queue
        /* renamed from: b */
        public i0 element() {
            return this.f73493b.element();
        }

        @Override // java.util.Collection
        public void clear() {
            this.f73493b.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return this.f73493b.contains(obj);
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return this.f73493b.containsAll(collection);
        }

        @Override // java.util.Queue
        /* renamed from: d */
        public boolean offer(i0 i0Var) {
            this.f73493b.offer(i0Var);
            int c4 = c(i0Var);
            int addAndGet = b.this.f73483s.addAndGet(c4);
            int writeBufferHighWaterMark = b.this.getConfig().getWriteBufferHighWaterMark();
            if (addAndGet < writeBufferHighWaterMark || addAndGet - c4 >= writeBufferHighWaterMark) {
                return true;
            }
            b.this.f73484t.incrementAndGet();
            if (this.f73492a.get().booleanValue()) {
                return true;
            }
            this.f73492a.set(Boolean.TRUE);
            org.jboss.netty.channel.s.u(b.this);
            this.f73492a.set(Boolean.FALSE);
            return true;
        }

        @Override // java.util.Queue
        /* renamed from: f */
        public i0 peek() {
            return this.f73493b.peek();
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.f73493b.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<i0> iterator() {
            return this.f73493b.iterator();
        }

        @Override // java.util.Queue
        /* renamed from: j */
        public i0 poll() {
            i0 poll = this.f73493b.poll();
            if (poll != null) {
                int c4 = c(poll);
                int addAndGet = b.this.f73483s.addAndGet(-c4);
                int writeBufferLowWaterMark = b.this.getConfig().getWriteBufferLowWaterMark();
                if ((addAndGet == 0 || addAndGet < writeBufferLowWaterMark) && addAndGet + c4 >= writeBufferLowWaterMark) {
                    b.this.f73484t.decrementAndGet();
                    if (b.this.isConnected() && !this.f73492a.get().booleanValue()) {
                        this.f73492a.set(Boolean.TRUE);
                        org.jboss.netty.channel.s.u(b.this);
                        this.f73492a.set(Boolean.FALSE);
                    }
                }
            }
            return poll;
        }

        @Override // java.util.Queue
        /* renamed from: l */
        public i0 remove() {
            return this.f73493b.remove();
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return this.f73493b.removeAll(collection);
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return this.f73493b.retainAll(collection);
        }

        @Override // java.util.Collection
        public int size() {
            return this.f73493b.size();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return this.f73493b.toArray();
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            return this.f73493b.remove(obj);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) this.f73493b.toArray(tArr);
        }
    }

    /* compiled from: AbstractNioChannel.java */
    /* renamed from: org.jboss.netty.channel.socket.nio.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private final class RunnableC0493b implements Runnable {
        RunnableC0493b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f73481q.set(false);
            b<?> bVar = b.this;
            bVar.f73478n.x(bVar);
        }
    }

    protected b(Integer num, org.jboss.netty.channel.e eVar, org.jboss.netty.channel.i iVar, org.jboss.netty.channel.n nVar, org.jboss.netty.channel.p pVar, e eVar2, C c4) {
        super(num, eVar, iVar, nVar, pVar);
        this.f73479o = new Object();
        this.f73480p = new RunnableC0493b();
        this.f73481q = new AtomicBoolean();
        this.f73482r = new a();
        this.f73483s = new AtomicInteger();
        this.f73484t = new AtomicInteger();
        this.f73478n = eVar2;
        this.A = c4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L0(int i2) {
        a0(i2);
    }

    @Override // org.jboss.netty.channel.a, org.jboss.netty.channel.e
    public int Q() {
        if (isOpen()) {
            int m02 = m0();
            int i2 = this.f73483s.get();
            return (i2 == 0 || (this.f73484t.get() <= 0 ? i2 < getConfig().getWriteBufferHighWaterMark() : i2 < getConfig().getWriteBufferLowWaterMark())) ? m02 & (-5) : m02 | 4;
        }
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jboss.netty.channel.a
    public boolean Y() {
        return super.Y();
    }

    @Override // org.jboss.netty.channel.e
    /* renamed from: e0 */
    public abstract j getConfig();

    abstract InetSocketAddress k0() throws Exception;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m0() {
        return super.Q();
    }

    abstract InetSocketAddress v0() throws Exception;

    public e y0() {
        return this.f73478n;
    }

    @Override // org.jboss.netty.channel.e
    public InetSocketAddress getLocalAddress() {
        InetSocketAddress inetSocketAddress = this.f73489y;
        if (inetSocketAddress == null) {
            try {
                InetSocketAddress k02 = k0();
                if (k02.getAddress().isAnyLocalAddress()) {
                    return k02;
                }
                this.f73489y = k02;
                return k02;
            } catch (Throwable unused) {
                return null;
            }
        }
        return inetSocketAddress;
    }

    @Override // org.jboss.netty.channel.e
    public InetSocketAddress getRemoteAddress() {
        InetSocketAddress inetSocketAddress = this.f73490z;
        if (inetSocketAddress == null) {
            try {
                InetSocketAddress v02 = v0();
                this.f73490z = v02;
                return v02;
            } catch (Throwable unused) {
                return null;
            }
        }
        return inetSocketAddress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.i iVar, org.jboss.netty.channel.n nVar, org.jboss.netty.channel.p pVar, e eVar2, C c4) {
        super(eVar, iVar, nVar, pVar);
        this.f73479o = new Object();
        this.f73480p = new RunnableC0493b();
        this.f73481q = new AtomicBoolean();
        this.f73482r = new a();
        this.f73483s = new AtomicInteger();
        this.f73484t = new AtomicInteger();
        this.f73478n = eVar2;
        this.A = c4;
    }
}
