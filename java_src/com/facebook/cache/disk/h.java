package com.facebook.cache.disk;

import com.facebook.cache.disk.c;
import java.io.IOException;
/* compiled from: FileCache.java */
/* loaded from: classes2.dex */
public interface h extends com.facebook.common.disk.a {
    c.a a() throws IOException;

    boolean b(com.facebook.cache.common.c cVar);

    a0.a c(com.facebook.cache.common.c cVar);

    void clearAll();

    long e(long j4);

    boolean f(com.facebook.cache.common.c cVar);

    long getCount();

    long getSize();

    void h(com.facebook.cache.common.c cVar);

    boolean i(com.facebook.cache.common.c cVar);

    a0.a insert(com.facebook.cache.common.c cVar, com.facebook.cache.common.j jVar) throws IOException;

    boolean isEnabled();
}
