package com.facebook.imagepipeline.memory;

import java.util.LinkedList;
import javax.annotation.concurrent.NotThreadSafe;
/* compiled from: OOMSoftReferenceBucket.java */
@NotThreadSafe
/* loaded from: classes2.dex */
class a0<V> extends f<V> {

    /* renamed from: g  reason: collision with root package name */
    private LinkedList<com.facebook.common.references.b<V>> f12806g;

    public a0(int i2, int i4, int i5) {
        super(i2, i4, i5, false);
        this.f12806g = new LinkedList<>();
    }

    @Override // com.facebook.imagepipeline.memory.f
    void a(V v3) {
        com.facebook.common.references.b<V> poll = this.f12806g.poll();
        if (poll == null) {
            poll = new com.facebook.common.references.b<>();
        }
        poll.c(v3);
        this.f12863c.add(poll);
    }

    @Override // com.facebook.imagepipeline.memory.f
    public V h() {
        com.facebook.common.references.b<V> bVar = (com.facebook.common.references.b) this.f12863c.poll();
        V b4 = bVar.b();
        bVar.a();
        this.f12806g.add(bVar);
        return b4;
    }
}
