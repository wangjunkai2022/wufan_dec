package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.imagepipeline.memory.BasePool;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: MemoryChunkPool.java */
@ThreadSafe
/* loaded from: classes2.dex */
public abstract class u extends BasePool<t> {

    /* renamed from: j  reason: collision with root package name */
    private final int[] f12912j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(com.facebook.common.memory.c cVar, e0 e0Var, f0 f0Var) {
        super(cVar, e0Var, f0Var);
        SparseIntArray sparseIntArray = e0Var.f12854c;
        this.f12912j = new int[sparseIntArray.size()];
        int i2 = 0;
        while (true) {
            int[] iArr = this.f12912j;
            if (i2 < iArr.length) {
                iArr[i2] = sparseIntArray.keyAt(i2);
                i2++;
            } else {
                o();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: A */
    public void f(t tVar) {
        com.facebook.common.internal.h.i(tVar);
        tVar.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: B */
    public int j(t tVar) {
        com.facebook.common.internal.h.i(tVar);
        return tVar.getSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int C() {
        return this.f12912j[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: D */
    public boolean q(t tVar) {
        com.facebook.common.internal.h.i(tVar);
        return !tVar.isClosed();
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int i(int i2) {
        int[] iArr;
        if (i2 > 0) {
            for (int i4 : this.f12912j) {
                if (i4 >= i2) {
                    return i4;
                }
            }
            return i2;
        }
        throw new BasePool.InvalidSizeException(Integer.valueOf(i2));
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int k(int i2) {
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: z */
    public abstract t a(int i2);
}
