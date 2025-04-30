package com.ss.android.socialbase.downloader.f;

import androidx.annotation.NonNull;
/* compiled from: BufferQueue.java */
/* loaded from: classes4.dex */
class b implements c, d, e {

    /* renamed from: a  reason: collision with root package name */
    private final int f58064a;

    /* renamed from: b  reason: collision with root package name */
    private final int f58065b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f58066c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final Object f58067d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private a f58068e;

    /* renamed from: f  reason: collision with root package name */
    private a f58069f;

    /* renamed from: g  reason: collision with root package name */
    private a f58070g;

    /* renamed from: h  reason: collision with root package name */
    private a f58071h;

    /* renamed from: i  reason: collision with root package name */
    private a f58072i;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f58073j;

    /* renamed from: k  reason: collision with root package name */
    private int f58074k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i2, int i4) {
        i2 = i2 < 64 ? 64 : i2;
        i4 = i4 < 8192 ? 8192 : i4;
        this.f58064a = i2;
        this.f58065b = i4;
    }

    @Override // com.ss.android.socialbase.downloader.f.d
    @NonNull
    public a a() throws p, InterruptedException {
        a aVar;
        a aVar2 = this.f58072i;
        if (aVar2 != null) {
            this.f58072i = aVar2.f58063d;
            aVar2.f58063d = null;
            return aVar2;
        }
        synchronized (this.f58067d) {
            aVar = this.f58070g;
            while (aVar == null) {
                if (!this.f58073j) {
                    this.f58067d.wait();
                    aVar = this.f58070g;
                } else {
                    throw new p("read");
                }
            }
            this.f58072i = aVar.f58063d;
            this.f58071h = null;
            this.f58070g = null;
            aVar.f58063d = null;
        }
        return aVar;
    }

    @Override // com.ss.android.socialbase.downloader.f.c
    @NonNull
    public a b() throws p, InterruptedException {
        synchronized (this.f58066c) {
            if (!this.f58073j) {
                a aVar = this.f58068e;
                if (aVar == null) {
                    int i2 = this.f58074k;
                    if (i2 < this.f58064a) {
                        this.f58074k = i2 + 1;
                        return new a(this.f58065b);
                    }
                    do {
                        this.f58066c.wait();
                        if (!this.f58073j) {
                            aVar = this.f58068e;
                        } else {
                            throw new p("obtain");
                        }
                    } while (aVar == null);
                }
                this.f58068e = aVar.f58063d;
                if (aVar == this.f58069f) {
                    this.f58069f = null;
                }
                aVar.f58063d = null;
                return aVar;
            }
            throw new p("obtain");
        }
    }

    public void c() {
        this.f58073j = true;
        synchronized (this.f58066c) {
            this.f58066c.notifyAll();
        }
        synchronized (this.f58067d) {
            this.f58067d.notifyAll();
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.c
    public void a(@NonNull a aVar) {
        synchronized (this.f58066c) {
            a aVar2 = this.f58069f;
            if (aVar2 == null) {
                this.f58069f = aVar;
                this.f58068e = aVar;
            } else {
                aVar2.f58063d = aVar;
                this.f58069f = aVar;
            }
            this.f58066c.notify();
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.e
    public void b(@NonNull a aVar) {
        synchronized (this.f58067d) {
            a aVar2 = this.f58071h;
            if (aVar2 == null) {
                this.f58071h = aVar;
                this.f58070g = aVar;
                this.f58067d.notify();
            } else {
                aVar2.f58063d = aVar;
                this.f58071h = aVar;
            }
        }
    }
}
