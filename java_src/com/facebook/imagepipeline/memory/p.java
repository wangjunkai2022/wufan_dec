package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import java.util.Map;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: FlexByteArrayPool.java */
@ThreadSafe
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.references.c<byte[]> f12901a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final b f12902b;

    /* compiled from: FlexByteArrayPool.java */
    /* loaded from: classes2.dex */
    class a implements com.facebook.common.references.c<byte[]> {
        a() {
        }

        @Override // com.facebook.common.references.c
        /* renamed from: a */
        public void release(byte[] bArr) {
            p.this.d(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlexByteArrayPool.java */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class b extends q {
        public b(com.facebook.common.memory.c cVar, e0 e0Var, f0 f0Var) {
            super(cVar, e0Var, f0Var);
        }

        @Override // com.facebook.imagepipeline.memory.BasePool
        f<byte[]> t(int i2) {
            return new a0(k(i2), this.f12783c.f12859h, 0);
        }
    }

    public p(com.facebook.common.memory.c cVar, e0 e0Var) {
        com.facebook.common.internal.h.d(e0Var.f12859h > 0);
        this.f12902b = new b(cVar, e0Var, z.h());
        this.f12901a = new a();
    }

    public com.facebook.common.references.a<byte[]> a(int i2) {
        return com.facebook.common.references.a.q(this.f12902b.get(i2), this.f12901a);
    }

    public int b() {
        return this.f12902b.C();
    }

    public Map<String, Integer> c() {
        return this.f12902b.l();
    }

    public void d(byte[] bArr) {
        this.f12902b.release(bArr);
    }
}
