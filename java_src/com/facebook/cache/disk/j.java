package com.facebook.cache.disk;

import com.facebook.cache.common.CacheEventListener;
import com.facebook.infer.annotation.ReturnsOwnership;
import java.io.IOException;
import javax.annotation.Nullable;
/* compiled from: SettableCacheEvent.java */
/* loaded from: classes.dex */
public class j implements com.facebook.cache.common.b {

    /* renamed from: i  reason: collision with root package name */
    private static final Object f11653i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private static final int f11654j = 5;

    /* renamed from: k  reason: collision with root package name */
    private static j f11655k;

    /* renamed from: l  reason: collision with root package name */
    private static int f11656l;

    /* renamed from: a  reason: collision with root package name */
    private com.facebook.cache.common.c f11657a;

    /* renamed from: b  reason: collision with root package name */
    private String f11658b;

    /* renamed from: c  reason: collision with root package name */
    private long f11659c;

    /* renamed from: d  reason: collision with root package name */
    private long f11660d;

    /* renamed from: e  reason: collision with root package name */
    private long f11661e;

    /* renamed from: f  reason: collision with root package name */
    private IOException f11662f;

    /* renamed from: g  reason: collision with root package name */
    private CacheEventListener.EvictionReason f11663g;

    /* renamed from: h  reason: collision with root package name */
    private j f11664h;

    private j() {
    }

    @ReturnsOwnership
    public static j h() {
        synchronized (f11653i) {
            j jVar = f11655k;
            if (jVar != null) {
                f11655k = jVar.f11664h;
                jVar.f11664h = null;
                f11656l--;
                return jVar;
            }
            return new j();
        }
    }

    private void j() {
        this.f11657a = null;
        this.f11658b = null;
        this.f11659c = 0L;
        this.f11660d = 0L;
        this.f11661e = 0L;
        this.f11662f = null;
        this.f11663g = null;
    }

    @Override // com.facebook.cache.common.b
    @Nullable
    public IOException a() {
        return this.f11662f;
    }

    @Override // com.facebook.cache.common.b
    @Nullable
    public String b() {
        return this.f11658b;
    }

    @Override // com.facebook.cache.common.b
    public long c() {
        return this.f11661e;
    }

    @Override // com.facebook.cache.common.b
    public long d() {
        return this.f11660d;
    }

    @Override // com.facebook.cache.common.b
    @Nullable
    public com.facebook.cache.common.c e() {
        return this.f11657a;
    }

    @Override // com.facebook.cache.common.b
    @Nullable
    public CacheEventListener.EvictionReason f() {
        return this.f11663g;
    }

    @Override // com.facebook.cache.common.b
    public long g() {
        return this.f11659c;
    }

    public void i() {
        synchronized (f11653i) {
            if (f11656l < 5) {
                j();
                f11656l++;
                j jVar = f11655k;
                if (jVar != null) {
                    this.f11664h = jVar;
                }
                f11655k = this;
            }
        }
    }

    public j k(com.facebook.cache.common.c cVar) {
        this.f11657a = cVar;
        return this;
    }

    public j l(long j4) {
        this.f11660d = j4;
        return this;
    }

    public j m(long j4) {
        this.f11661e = j4;
        return this;
    }

    public j n(CacheEventListener.EvictionReason evictionReason) {
        this.f11663g = evictionReason;
        return this;
    }

    public j o(IOException iOException) {
        this.f11662f = iOException;
        return this;
    }

    public j p(long j4) {
        this.f11659c = j4;
        return this;
    }

    public j q(String str) {
        this.f11658b = str;
        return this;
    }
}
