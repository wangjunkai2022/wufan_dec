package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: StagingArea.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f12533b = u.class;
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private Map<com.facebook.cache.common.c, com.facebook.imagepipeline.image.e> f12534a = new HashMap();

    private u() {
    }

    public static u d() {
        return new u();
    }

    private synchronized void e() {
        com.facebook.common.logging.a.V(f12533b, "Count = %d", Integer.valueOf(this.f12534a.size()));
    }

    public void a() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f12534a.values());
            this.f12534a.clear();
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            com.facebook.imagepipeline.image.e eVar = (com.facebook.imagepipeline.image.e) arrayList.get(i2);
            if (eVar != null) {
                eVar.close();
            }
        }
    }

    public synchronized boolean b(com.facebook.cache.common.c cVar) {
        com.facebook.common.internal.h.i(cVar);
        if (this.f12534a.containsKey(cVar)) {
            com.facebook.imagepipeline.image.e eVar = this.f12534a.get(cVar);
            synchronized (eVar) {
                if (com.facebook.imagepipeline.image.e.y(eVar)) {
                    return true;
                }
                this.f12534a.remove(cVar);
                com.facebook.common.logging.a.m0(f12533b, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(eVar)), cVar.a(), Integer.valueOf(System.identityHashCode(cVar)));
                return false;
            }
        }
        return false;
    }

    @Nullable
    public synchronized com.facebook.imagepipeline.image.e c(com.facebook.cache.common.c cVar) {
        com.facebook.common.internal.h.i(cVar);
        com.facebook.imagepipeline.image.e eVar = this.f12534a.get(cVar);
        if (eVar != null) {
            synchronized (eVar) {
                if (!com.facebook.imagepipeline.image.e.y(eVar)) {
                    this.f12534a.remove(cVar);
                    com.facebook.common.logging.a.m0(f12533b, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(eVar)), cVar.a(), Integer.valueOf(System.identityHashCode(cVar)));
                    return null;
                }
                eVar = com.facebook.imagepipeline.image.e.b(eVar);
            }
        }
        return eVar;
    }

    public synchronized void f(com.facebook.cache.common.c cVar, com.facebook.imagepipeline.image.e eVar) {
        com.facebook.common.internal.h.i(cVar);
        com.facebook.common.internal.h.d(com.facebook.imagepipeline.image.e.y(eVar));
        com.facebook.imagepipeline.image.e.d(this.f12534a.put(cVar, com.facebook.imagepipeline.image.e.b(eVar)));
        e();
    }

    public boolean g(com.facebook.cache.common.c cVar) {
        com.facebook.imagepipeline.image.e remove;
        com.facebook.common.internal.h.i(cVar);
        synchronized (this) {
            remove = this.f12534a.remove(cVar);
        }
        if (remove == null) {
            return false;
        }
        try {
            return remove.x();
        } finally {
            remove.close();
        }
    }

    public synchronized boolean h(com.facebook.cache.common.c cVar, com.facebook.imagepipeline.image.e eVar) {
        com.facebook.common.internal.h.i(cVar);
        com.facebook.common.internal.h.i(eVar);
        com.facebook.common.internal.h.d(com.facebook.imagepipeline.image.e.y(eVar));
        com.facebook.imagepipeline.image.e eVar2 = this.f12534a.get(cVar);
        if (eVar2 == null) {
            return false;
        }
        com.facebook.common.references.a<PooledByteBuffer> g4 = eVar2.g();
        com.facebook.common.references.a<PooledByteBuffer> g5 = eVar.g();
        if (g4 != null && g5 != null && g4.i() == g5.i()) {
            this.f12534a.remove(cVar);
            com.facebook.common.references.a.g(g5);
            com.facebook.common.references.a.g(g4);
            com.facebook.imagepipeline.image.e.d(eVar2);
            e();
            return true;
        }
        com.facebook.common.references.a.g(g5);
        com.facebook.common.references.a.g(g4);
        com.facebook.imagepipeline.image.e.d(eVar2);
        return false;
    }
}
