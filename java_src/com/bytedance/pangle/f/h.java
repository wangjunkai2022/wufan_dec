package com.bytedance.pangle.f;

import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
final class h implements k {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f10233a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(ByteBuffer byteBuffer) {
        this.f10233a = byteBuffer.slice();
    }

    @Override // com.bytedance.pangle.f.k
    public final long a() {
        return this.f10233a.capacity();
    }

    @Override // com.bytedance.pangle.f.k
    public final void a(j jVar, long j4, int i2) {
        ByteBuffer slice;
        synchronized (this.f10233a) {
            this.f10233a.position(0);
            int i4 = (int) j4;
            this.f10233a.limit(i2 + i4);
            this.f10233a.position(i4);
            slice = this.f10233a.slice();
        }
        jVar.a(slice);
    }
}
