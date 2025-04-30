package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.ThreadSafe;
/* compiled from: NativeMemoryChunkPool.java */
@ThreadSafe
/* loaded from: classes2.dex */
public class y extends u {
    public y(com.facebook.common.memory.c cVar, e0 e0Var, f0 f0Var) {
        super(cVar, e0Var, f0Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.u
    /* renamed from: E */
    public NativeMemoryChunk z(int i2) {
        return new NativeMemoryChunk(i2);
    }
}
