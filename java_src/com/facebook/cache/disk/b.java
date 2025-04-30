package com.facebook.cache.disk;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.common.internal.k;
import com.facebook.common.internal.l;
import java.io.File;
import javax.annotation.Nullable;
/* compiled from: DiskCacheConfig.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f11579a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11580b;

    /* renamed from: c  reason: collision with root package name */
    private final k<File> f11581c;

    /* renamed from: d  reason: collision with root package name */
    private final long f11582d;

    /* renamed from: e  reason: collision with root package name */
    private final long f11583e;

    /* renamed from: f  reason: collision with root package name */
    private final long f11584f;

    /* renamed from: g  reason: collision with root package name */
    private final g f11585g;

    /* renamed from: h  reason: collision with root package name */
    private final CacheErrorLogger f11586h;

    /* renamed from: i  reason: collision with root package name */
    private final CacheEventListener f11587i;

    /* renamed from: j  reason: collision with root package name */
    private final com.facebook.common.disk.b f11588j;

    /* renamed from: k  reason: collision with root package name */
    private final Context f11589k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f11590l;

    /* compiled from: DiskCacheConfig.java */
    /* renamed from: com.facebook.cache.disk.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0058b {

        /* renamed from: a  reason: collision with root package name */
        private int f11591a;

        /* renamed from: b  reason: collision with root package name */
        private String f11592b;

        /* renamed from: c  reason: collision with root package name */
        private k<File> f11593c;

        /* renamed from: d  reason: collision with root package name */
        private long f11594d;

        /* renamed from: e  reason: collision with root package name */
        private long f11595e;

        /* renamed from: f  reason: collision with root package name */
        private long f11596f;

        /* renamed from: g  reason: collision with root package name */
        private g f11597g;

        /* renamed from: h  reason: collision with root package name */
        private CacheErrorLogger f11598h;

        /* renamed from: i  reason: collision with root package name */
        private CacheEventListener f11599i;

        /* renamed from: j  reason: collision with root package name */
        private com.facebook.common.disk.b f11600j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f11601k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private final Context f11602l;

        /* compiled from: DiskCacheConfig.java */
        /* renamed from: com.facebook.cache.disk.b$b$a */
        /* loaded from: classes2.dex */
        class a implements k<File> {
            a() {
            }

            @Override // com.facebook.common.internal.k
            /* renamed from: a */
            public File get() {
                return C0058b.this.f11602l.getApplicationContext().getCacheDir();
            }
        }

        public b m() {
            com.facebook.common.internal.h.p((this.f11593c == null && this.f11602l == null) ? false : true, "Either a non-null context or a base directory path or supplier must be provided.");
            if (this.f11593c == null && this.f11602l != null) {
                this.f11593c = new a();
            }
            return new b(this);
        }

        public C0058b n(String str) {
            this.f11592b = str;
            return this;
        }

        public C0058b o(File file) {
            this.f11593c = l.a(file);
            return this;
        }

        public C0058b p(k<File> kVar) {
            this.f11593c = kVar;
            return this;
        }

        public C0058b q(CacheErrorLogger cacheErrorLogger) {
            this.f11598h = cacheErrorLogger;
            return this;
        }

        public C0058b r(CacheEventListener cacheEventListener) {
            this.f11599i = cacheEventListener;
            return this;
        }

        public C0058b s(com.facebook.common.disk.b bVar) {
            this.f11600j = bVar;
            return this;
        }

        public C0058b t(g gVar) {
            this.f11597g = gVar;
            return this;
        }

        public C0058b u(boolean z3) {
            this.f11601k = z3;
            return this;
        }

        public C0058b v(long j4) {
            this.f11594d = j4;
            return this;
        }

        public C0058b w(long j4) {
            this.f11595e = j4;
            return this;
        }

        public C0058b x(long j4) {
            this.f11596f = j4;
            return this;
        }

        public C0058b y(int i2) {
            this.f11591a = i2;
            return this;
        }

        private C0058b(@Nullable Context context) {
            this.f11591a = 1;
            this.f11592b = "image_cache";
            this.f11594d = 41943040L;
            this.f11595e = 10485760L;
            this.f11596f = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
            this.f11597g = new com.facebook.cache.disk.a();
            this.f11602l = context;
        }
    }

    public static C0058b l(@Nullable Context context) {
        return new C0058b(context);
    }

    public String a() {
        return this.f11580b;
    }

    public k<File> b() {
        return this.f11581c;
    }

    public CacheErrorLogger c() {
        return this.f11586h;
    }

    public CacheEventListener d() {
        return this.f11587i;
    }

    public long e() {
        return this.f11582d;
    }

    public com.facebook.common.disk.b f() {
        return this.f11588j;
    }

    public g g() {
        return this.f11585g;
    }

    public Context getContext() {
        return this.f11589k;
    }

    public boolean h() {
        return this.f11590l;
    }

    public long i() {
        return this.f11583e;
    }

    public long j() {
        return this.f11584f;
    }

    public int k() {
        return this.f11579a;
    }

    private b(C0058b c0058b) {
        CacheErrorLogger cacheErrorLogger;
        CacheEventListener cacheEventListener;
        com.facebook.common.disk.b bVar;
        this.f11579a = c0058b.f11591a;
        this.f11580b = (String) com.facebook.common.internal.h.i(c0058b.f11592b);
        this.f11581c = (k) com.facebook.common.internal.h.i(c0058b.f11593c);
        this.f11582d = c0058b.f11594d;
        this.f11583e = c0058b.f11595e;
        this.f11584f = c0058b.f11596f;
        this.f11585g = (g) com.facebook.common.internal.h.i(c0058b.f11597g);
        if (c0058b.f11598h != null) {
            cacheErrorLogger = c0058b.f11598h;
        } else {
            cacheErrorLogger = com.facebook.cache.common.g.b();
        }
        this.f11586h = cacheErrorLogger;
        if (c0058b.f11599i != null) {
            cacheEventListener = c0058b.f11599i;
        } else {
            cacheEventListener = com.facebook.cache.common.h.i();
        }
        this.f11587i = cacheEventListener;
        if (c0058b.f11600j != null) {
            bVar = c0058b.f11600j;
        } else {
            bVar = com.facebook.common.disk.c.c();
        }
        this.f11588j = bVar;
        this.f11589k = c0058b.f11602l;
        this.f11590l = c0058b.f11601k;
    }
}
