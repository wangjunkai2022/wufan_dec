package org.jboss.netty.buffer;

import java.nio.ByteOrder;
import java.util.Objects;
/* compiled from: AbstractChannelBufferFactory.java */
/* loaded from: classes5.dex */
public abstract class b implements f {

    /* renamed from: a  reason: collision with root package name */
    private final ByteOrder f73358a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b() {
        this(ByteOrder.BIG_ENDIAN);
    }

    @Override // org.jboss.netty.buffer.f
    public e a(int i2) {
        return f(d(), i2);
    }

    @Override // org.jboss.netty.buffer.f
    public ByteOrder d() {
        return this.f73358a;
    }

    @Override // org.jboss.netty.buffer.f
    public e e(byte[] bArr, int i2, int i4) {
        return b(d(), bArr, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(ByteOrder byteOrder) {
        Objects.requireNonNull(byteOrder, "defaultOrder");
        this.f73358a = byteOrder;
    }
}
