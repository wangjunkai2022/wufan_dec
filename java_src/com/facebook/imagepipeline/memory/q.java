package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.imagepipeline.memory.BasePool;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: GenericByteArrayPool.java */
@ThreadSafe
/* loaded from: classes2.dex */
public class q extends BasePool<byte[]> implements com.facebook.common.memory.a {

    /* renamed from: j  reason: collision with root package name */
    private final int[] f12904j;

    public q(com.facebook.common.memory.c cVar, e0 e0Var, f0 f0Var) {
        super(cVar, e0Var, f0Var);
        SparseIntArray sparseIntArray = e0Var.f12854c;
        this.f12904j = new int[sparseIntArray.size()];
        for (int i2 = 0; i2 < sparseIntArray.size(); i2++) {
            this.f12904j[i2] = sparseIntArray.keyAt(i2);
        }
        o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: A */
    public void f(byte[] bArr) {
        com.facebook.common.internal.h.i(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: B */
    public int j(byte[] bArr) {
        com.facebook.common.internal.h.i(bArr);
        return bArr.length;
    }

    public int C() {
        return this.f12904j[0];
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int i(int i2) {
        int[] iArr;
        if (i2 > 0) {
            for (int i4 : this.f12904j) {
                if (i4 >= i2) {
                    return i4;
                }
            }
            return i2;
        }
        throw new BasePool.InvalidSizeException(Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    public int k(int i2) {
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: z */
    public byte[] a(int i2) {
        return new byte[i2];
    }
}
