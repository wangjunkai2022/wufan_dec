package com.facebook.cache.disk;

import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.disk.c;
import com.facebook.common.file.FileUtils;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.k;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;
/* compiled from: DynamicDefaultDiskStorage.java */
/* loaded from: classes2.dex */
public class e implements c {

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f11641f = e.class;

    /* renamed from: a  reason: collision with root package name */
    private final int f11642a;

    /* renamed from: b  reason: collision with root package name */
    private final k<File> f11643b;

    /* renamed from: c  reason: collision with root package name */
    private final String f11644c;

    /* renamed from: d  reason: collision with root package name */
    private final CacheErrorLogger f11645d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    volatile a f11646e = new a(null, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicDefaultDiskStorage.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final c f11647a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final File f11648b;

        @VisibleForTesting
        a(@Nullable File file, @Nullable c cVar) {
            this.f11647a = cVar;
            this.f11648b = file;
        }
    }

    public e(int i2, k<File> kVar, String str, CacheErrorLogger cacheErrorLogger) {
        this.f11642a = i2;
        this.f11645d = cacheErrorLogger;
        this.f11643b = kVar;
        this.f11644c = str;
    }

    private void i() throws IOException {
        File file = new File(this.f11643b.get(), this.f11644c);
        h(file);
        this.f11646e = new a(file, new DefaultDiskStorage(file, this.f11642a, this.f11645d));
    }

    private boolean l() {
        File file;
        a aVar = this.f11646e;
        return aVar.f11647a == null || (file = aVar.f11648b) == null || !file.exists();
    }

    @Override // com.facebook.cache.disk.c
    public c.a a() throws IOException {
        return k().a();
    }

    @Override // com.facebook.cache.disk.c
    public void b() {
        try {
            k().b();
        } catch (IOException e4) {
            com.facebook.common.logging.a.r(f11641f, "purgeUnexpectedResources", e4);
        }
    }

    @Override // com.facebook.cache.disk.c
    public boolean c(String str, Object obj) throws IOException {
        return k().c(str, obj);
    }

    @Override // com.facebook.cache.disk.c
    public void clearAll() throws IOException {
        k().clearAll();
    }

    @Override // com.facebook.cache.disk.c
    public long d(c.InterfaceC0059c interfaceC0059c) throws IOException {
        return k().d(interfaceC0059c);
    }

    @Override // com.facebook.cache.disk.c
    public boolean e(String str, Object obj) throws IOException {
        return k().e(str, obj);
    }

    @Override // com.facebook.cache.disk.c
    public a0.a f(String str, Object obj) throws IOException {
        return k().f(str, obj);
    }

    @Override // com.facebook.cache.disk.c
    public String g() {
        try {
            return k().g();
        } catch (IOException unused) {
            return "";
        }
    }

    @Override // com.facebook.cache.disk.c
    public Collection<c.InterfaceC0059c> getEntries() throws IOException {
        return k().getEntries();
    }

    @VisibleForTesting
    void h(File file) throws IOException {
        try {
            FileUtils.a(file);
            com.facebook.common.logging.a.b(f11641f, "Created cache directory %s", file.getAbsolutePath());
        } catch (FileUtils.CreateDirectoryException e4) {
            this.f11645d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, f11641f, "createRootDirectoryIfNecessary", e4);
            throw e4;
        }
    }

    @Override // com.facebook.cache.disk.c
    public c.d insert(String str, Object obj) throws IOException {
        return k().insert(str, obj);
    }

    @Override // com.facebook.cache.disk.c
    public boolean isEnabled() {
        try {
            return k().isEnabled();
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.facebook.cache.disk.c
    public boolean isExternal() {
        try {
            return k().isExternal();
        } catch (IOException unused) {
            return false;
        }
    }

    @VisibleForTesting
    void j() {
        if (this.f11646e.f11647a == null || this.f11646e.f11648b == null) {
            return;
        }
        b0.a.b(this.f11646e.f11648b);
    }

    @VisibleForTesting
    synchronized c k() throws IOException {
        if (l()) {
            j();
            i();
        }
        return (c) com.facebook.common.internal.h.i(this.f11646e.f11647a);
    }

    @Override // com.facebook.cache.disk.c
    public long remove(String str) throws IOException {
        return k().remove(str);
    }
}
