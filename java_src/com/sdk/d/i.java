package com.sdk.d;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes4.dex */
public class i<E> extends AbstractQueue<E> implements BlockingQueue<E>, Serializable {
    public static final long serialVersionUID = -6903933977591709194L;

    /* renamed from: a  reason: collision with root package name */
    public final int f56621a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicInteger f56622b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    public transient com.sdk.d.a<E> f56623c;

    /* renamed from: d  reason: collision with root package name */
    public transient com.sdk.d.a<E> f56624d;

    /* renamed from: e  reason: collision with root package name */
    public final ReentrantLock f56625e;

    /* renamed from: f  reason: collision with root package name */
    public final Condition f56626f;

    /* renamed from: g  reason: collision with root package name */
    public final ReentrantLock f56627g;

    /* renamed from: h  reason: collision with root package name */
    public final Condition f56628h;

    /* loaded from: classes4.dex */
    private class a implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        public com.sdk.d.a<E> f56629a;

        /* renamed from: b  reason: collision with root package name */
        public com.sdk.d.a<E> f56630b;

        /* renamed from: c  reason: collision with root package name */
        public E f56631c;

        public a() {
            i.this.a();
            try {
                com.sdk.d.a<E> aVar = i.this.f56623c.f56592c;
                this.f56629a = aVar;
                if (aVar != null) {
                    this.f56631c = aVar.b();
                }
            } finally {
                i.this.b();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f56629a != null;
        }

        @Override // java.util.Iterator
        public E next() {
            com.sdk.d.a<E> aVar;
            i.this.a();
            try {
                com.sdk.d.a<E> aVar2 = this.f56629a;
                if (aVar2 != null) {
                    E e4 = this.f56631c;
                    this.f56630b = aVar2;
                    while (true) {
                        aVar = aVar2.f56592c;
                        if (aVar != aVar2) {
                            if (aVar == null || aVar.b() != null) {
                                break;
                            }
                            aVar2 = aVar;
                        } else {
                            aVar = i.this.f56623c.f56592c;
                            break;
                        }
                    }
                    this.f56629a = aVar;
                    this.f56631c = aVar == null ? null : aVar.b();
                    return e4;
                }
                throw new NoSuchElementException();
            } finally {
                i.this.b();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
            r4.f56632d.a(r1, r2);
         */
        @Override // java.util.Iterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void remove() {
            /*
                r4 = this;
                com.sdk.d.a<E> r0 = r4.f56630b
                if (r0 == 0) goto L2d
                com.sdk.d.i r0 = com.sdk.d.i.this
                r0.a()
                com.sdk.d.a<E> r0 = r4.f56630b     // Catch: java.lang.Throwable -> L26
                r1 = 0
                r4.f56630b = r1     // Catch: java.lang.Throwable -> L26
                com.sdk.d.i r1 = com.sdk.d.i.this     // Catch: java.lang.Throwable -> L26
                com.sdk.d.a<E> r1 = r1.f56623c     // Catch: java.lang.Throwable -> L26
            L12:
                com.sdk.d.a<T> r2 = r1.f56592c     // Catch: java.lang.Throwable -> L26
                r3 = r2
                r2 = r1
                r1 = r3
                if (r1 == 0) goto L20
                if (r1 != r0) goto L12
                com.sdk.d.i r0 = com.sdk.d.i.this     // Catch: java.lang.Throwable -> L26
                r0.a(r1, r2)     // Catch: java.lang.Throwable -> L26
            L20:
                com.sdk.d.i r0 = com.sdk.d.i.this
                r0.b()
                return
            L26:
                r0 = move-exception
                com.sdk.d.i r1 = com.sdk.d.i.this
                r1.b()
                throw r0
            L2d:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r0.<init>()
                goto L34
            L33:
                throw r0
            L34:
                goto L33
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sdk.d.i.a.remove():void");
        }
    }

    public i() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f56625e = reentrantLock;
        this.f56626f = reentrantLock.newCondition();
        ReentrantLock reentrantLock2 = new ReentrantLock();
        this.f56627g = reentrantLock2;
        this.f56628h = reentrantLock2.newCondition();
        this.f56621a = Integer.MAX_VALUE;
        com.sdk.d.a<E> aVar = new com.sdk.d.a<>(null);
        this.f56623c = aVar;
        this.f56624d = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.f56622b.set(0);
        com.sdk.d.a<E> aVar = new com.sdk.d.a<>(null);
        this.f56623c = aVar;
        this.f56624d = aVar;
        while (true) {
            Object readObject = objectInputStream.readObject();
            if (readObject == null) {
                return;
            }
            add(readObject);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        a();
        try {
            objectOutputStream.defaultWriteObject();
            com.sdk.d.a aVar = this.f56623c;
            while (true) {
                aVar = aVar.f56592c;
                if (aVar == null) {
                    objectOutputStream.writeObject(null);
                    return;
                }
                objectOutputStream.writeObject(aVar.b());
            }
        } finally {
            b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized E a(com.sdk.d.a<E> aVar) {
        if (aVar == 0) {
            com.sdk.d.a aVar2 = (com.sdk.d.a<E>) this.f56623c;
            com.sdk.d.a<E> aVar3 = (com.sdk.d.a<E>) aVar2.f56592c;
            aVar2.f56592c = aVar2;
            this.f56623c = aVar3;
            E b4 = aVar3.b();
            aVar3.a(null);
            return b4;
        }
        boolean z3 = false;
        com.sdk.d.a aVar4 = this.f56623c;
        while (true) {
            com.sdk.d.a<T> aVar5 = aVar4.f56592c;
            if (aVar5 == 0) {
                break;
            } else if (aVar5.a().ordinal() > aVar.a().ordinal()) {
                aVar4.f56592c = aVar;
                aVar.f56592c = aVar5;
                z3 = true;
                break;
            } else {
                aVar4 = aVar4.f56592c;
            }
        }
        if (!z3) {
            this.f56624d.f56592c = aVar;
            this.f56624d = aVar;
        }
        return null;
    }

    public void a() {
        this.f56627g.lock();
        this.f56625e.lock();
    }

    public void a(com.sdk.d.a<E> aVar, com.sdk.d.a<E> aVar2) {
        aVar.a(null);
        aVar2.f56592c = (com.sdk.d.a<E>) aVar.f56592c;
        if (this.f56624d == aVar) {
            this.f56624d = aVar2;
        }
        if (this.f56622b.getAndDecrement() == this.f56621a) {
            this.f56628h.signal();
        }
    }

    public void b() {
        this.f56625e.unlock();
        this.f56627g.unlock();
    }

    public final void c() {
        ReentrantLock reentrantLock = this.f56625e;
        reentrantLock.lock();
        try {
            this.f56626f.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        a();
        try {
            com.sdk.d.a aVar = (com.sdk.d.a<E>) this.f56623c;
            while (true) {
                com.sdk.d.a aVar2 = aVar.f56592c;
                if (aVar2 == null) {
                    break;
                }
                aVar.f56592c = aVar;
                aVar2.a(null);
                aVar = (com.sdk.d.a<E>) aVar2;
            }
            this.f56623c = this.f56624d;
            if (this.f56622b.getAndSet(0) == this.f56621a) {
                this.f56628h.signal();
            }
        } finally {
            b();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        a();
        try {
            com.sdk.d.a aVar = this.f56623c;
            do {
                aVar = aVar.f56592c;
                if (aVar == null) {
                    return false;
                }
            } while (!obj.equals(aVar.b()));
            b();
            return true;
        } finally {
            b();
        }
    }

    public final void d() {
        ReentrantLock reentrantLock = this.f56627g;
        reentrantLock.lock();
        try {
            this.f56628h.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        return drainTo(collection, Integer.MAX_VALUE);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i2) {
        collection.getClass();
        if (collection != this) {
            boolean z3 = false;
            if (i2 <= 0) {
                return 0;
            }
            ReentrantLock reentrantLock = this.f56625e;
            reentrantLock.lock();
            try {
                int min = Math.min(i2, this.f56622b.get());
                com.sdk.d.a<E> aVar = this.f56623c;
                int i4 = 0;
                while (i4 < min) {
                    com.sdk.d.a<E> aVar2 = aVar.f56592c;
                    collection.add((Object) aVar2.b());
                    aVar2.a(null);
                    aVar.f56592c = (com.sdk.d.a<T>) aVar;
                    i4++;
                    aVar = aVar2;
                }
                if (i4 > 0) {
                    this.f56623c = aVar;
                    if (this.f56622b.getAndAdd(-i4) == this.f56621a) {
                        z3 = true;
                    }
                }
                return min;
            } finally {
                reentrantLock.unlock();
                if (0 != 0) {
                    d();
                }
            }
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new a();
    }

    @Override // java.util.Queue, java.util.concurrent.BlockingQueue
    public boolean offer(E e4) {
        e4.getClass();
        AtomicInteger atomicInteger = this.f56622b;
        if (atomicInteger.get() == this.f56621a) {
            return false;
        }
        int i2 = -1;
        com.sdk.d.a<E> aVar = new com.sdk.d.a<>(e4);
        ReentrantLock reentrantLock = this.f56627g;
        reentrantLock.lock();
        try {
            if (atomicInteger.get() < this.f56621a) {
                a(aVar);
                i2 = atomicInteger.getAndIncrement();
                if (i2 + 1 < this.f56621a) {
                    this.f56628h.signal();
                }
            }
            if (i2 == 0) {
                c();
            }
            return i2 >= 0;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e4, long j4, TimeUnit timeUnit) {
        e4.getClass();
        long nanos = timeUnit.toNanos(j4);
        ReentrantLock reentrantLock = this.f56627g;
        AtomicInteger atomicInteger = this.f56622b;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.f56621a) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.f56628h.awaitNanos(nanos);
            } finally {
                reentrantLock.unlock();
            }
        }
        a(new com.sdk.d.a<>(e4));
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.f56621a) {
            this.f56628h.signal();
        }
        if (andIncrement == 0) {
            c();
            return true;
        }
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        if (this.f56622b.get() == 0) {
            return null;
        }
        ReentrantLock reentrantLock = this.f56625e;
        reentrantLock.lock();
        try {
            com.sdk.d.a<E> aVar = this.f56623c.f56592c;
            if (aVar == null) {
                return null;
            }
            return aVar.b();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.Queue
    public E poll() {
        AtomicInteger atomicInteger = this.f56622b;
        E e4 = null;
        if (atomicInteger.get() == 0) {
            return null;
        }
        int i2 = -1;
        ReentrantLock reentrantLock = this.f56625e;
        reentrantLock.lock();
        try {
            if (atomicInteger.get() > 0) {
                e4 = a(null);
                i2 = atomicInteger.getAndDecrement();
                if (i2 > 1) {
                    this.f56626f.signal();
                }
            }
            reentrantLock.unlock();
            if (i2 == this.f56621a) {
                d();
            }
            return e4;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j4, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j4);
        AtomicInteger atomicInteger = this.f56622b;
        ReentrantLock reentrantLock = this.f56625e;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                if (nanos <= 0) {
                    return null;
                }
                nanos = this.f56626f.awaitNanos(nanos);
            } finally {
                reentrantLock.unlock();
            }
        }
        E a4 = a(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.f56626f.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.f56621a) {
            d();
        }
        return a4;
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e4) {
        e4.getClass();
        com.sdk.d.a<E> aVar = new com.sdk.d.a<>(e4);
        ReentrantLock reentrantLock = this.f56627g;
        AtomicInteger atomicInteger = this.f56622b;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.f56621a) {
            try {
                this.f56628h.await();
            } finally {
                reentrantLock.unlock();
            }
        }
        a(aVar);
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.f56621a) {
            this.f56628h.signal();
        }
        if (andIncrement == 0) {
            c();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return this.f56621a - this.f56622b.get();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean remove(Object obj) {
        com.sdk.d.a<E> aVar;
        if (obj == null) {
            return false;
        }
        a();
        try {
            com.sdk.d.a<E> aVar2 = this.f56623c;
            do {
                aVar = aVar2;
                aVar2 = aVar2.f56592c;
                if (aVar2 == null) {
                    return false;
                }
            } while (!obj.equals(aVar2.b()));
            a(aVar2, aVar);
            b();
            return true;
        } finally {
            b();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f56622b.get();
    }

    @Override // java.util.concurrent.BlockingQueue
    public E take() {
        AtomicInteger atomicInteger = this.f56622b;
        ReentrantLock reentrantLock = this.f56625e;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                this.f56626f.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        E a4 = a(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.f56626f.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.f56621a) {
            d();
        }
        return a4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        a();
        try {
            Object[] objArr = new Object[this.f56622b.get()];
            int i2 = 0;
            com.sdk.d.a aVar = this.f56623c;
            while (true) {
                aVar = aVar.f56592c;
                if (aVar == null) {
                    return objArr;
                }
                int i4 = i2 + 1;
                objArr[i2] = aVar.b();
                i2 = i4;
            }
        } finally {
            b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        a();
        try {
            int i2 = this.f56622b.get();
            if (tArr.length < i2) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i2));
            }
            int i4 = 0;
            com.sdk.d.a aVar = this.f56623c;
            while (true) {
                aVar = aVar.f56592c;
                if (aVar == null) {
                    break;
                }
                tArr[i4] = aVar.b();
                i4++;
            }
            if (tArr.length > i4) {
                tArr[i4] = null;
            }
            return tArr;
        } finally {
            b();
        }
    }
}
