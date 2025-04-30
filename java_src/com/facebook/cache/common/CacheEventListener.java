package com.facebook.cache.common;
/* loaded from: classes2.dex */
public interface CacheEventListener {

    /* loaded from: classes2.dex */
    public enum EvictionReason {
        CACHE_FULL,
        CONTENT_STALE,
        USER_FORCED,
        CACHE_MANAGER_TRIMMED
    }

    void a(b bVar);

    void b(b bVar);

    void c(b bVar);

    void d(b bVar);

    void e(b bVar);

    void f();

    void g(b bVar);

    void h(b bVar);
}
