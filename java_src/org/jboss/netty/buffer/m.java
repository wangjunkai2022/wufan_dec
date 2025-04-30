package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.GatheringByteChannel;
import java.util.Objects;
/* compiled from: HeapChannelBuffer.java */
/* loaded from: classes5.dex */
public abstract class m extends a {

    /* renamed from: e  reason: collision with root package name */
    protected final byte[] f73395e;

    /* JADX INFO: Access modifiers changed from: protected */
    public m(int i2) {
        this(new byte[i2], 0, 0);
    }

    @Override // org.jboss.netty.buffer.e
    public void E(int i2, OutputStream outputStream, int i4) throws IOException {
        outputStream.write(this.f73395e, i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i2, ByteBuffer byteBuffer) {
        byteBuffer.get(this.f73395e, i2, byteBuffer.remaining());
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer R(int i2, int i4) {
        return ByteBuffer.wrap(this.f73395e, i2, i4).order(order());
    }

    @Override // org.jboss.netty.buffer.e
    public void T(int i2, int i4) {
        this.f73395e[i2] = (byte) i4;
    }

    @Override // org.jboss.netty.buffer.e
    public void V(int i2, byte[] bArr, int i4, int i5) {
        System.arraycopy(this.f73395e, i2, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i2, int i4) {
        if (i2 != 0) {
            if (i4 == 0) {
                return h.f73374c;
            }
            return new q(this, i2, i4);
        } else if (i4 == 0) {
            return h.f73374c;
        } else {
            if (i4 == this.f73395e.length) {
                e duplicate = duplicate();
                duplicate.r0(0, i4);
                return duplicate;
            }
            return new r(this, i4);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f73395e;
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return 0;
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f73395e.length;
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i2) {
        return this.f73395e[i2];
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return gatheringByteChannel.write(ByteBuffer.wrap(this.f73395e, i2, i4));
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return true;
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return false;
    }

    @Override // org.jboss.netty.buffer.e
    public void l0(int i2, e eVar, int i4, int i5) {
        if (eVar instanceof m) {
            V(i2, ((m) eVar).f73395e, i4, i5);
        } else {
            eVar.p(i4, this.f73395e, i2, i5);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void p(int i2, byte[] bArr, int i4, int i5) {
        System.arraycopy(bArr, i4, this.f73395e, i2, i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0012, code lost:
        return r0;
     */
    @Override // org.jboss.netty.buffer.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int setBytes(int r3, java.io.InputStream r4, int r5) throws java.io.IOException {
        /*
            r2 = this;
            r0 = 0
        L1:
            byte[] r1 = r2.f73395e
            int r1 = r4.read(r1, r3, r5)
            if (r1 >= 0) goto Ld
            if (r0 != 0) goto L12
            r3 = -1
            return r3
        Ld:
            int r0 = r0 + r1
            int r3 = r3 + r1
            int r5 = r5 - r1
            if (r5 > 0) goto L1
        L12:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.buffer.m.setBytes(int, java.io.InputStream, int):int");
    }

    @Override // org.jboss.netty.buffer.e
    public void w(int i2, e eVar, int i4, int i5) {
        if (eVar instanceof m) {
            p(i2, ((m) eVar).f73395e, i4, i5);
        } else {
            eVar.V(i4, this.f73395e, i2, i5);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void w0(int i2, ByteBuffer byteBuffer) {
        byteBuffer.put(this.f73395e, i2, Math.min(capacity() - i2, byteBuffer.remaining()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public m(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0019, code lost:
        return r0;
     */
    @Override // org.jboss.netty.buffer.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int setBytes(int r4, java.nio.channels.ScatteringByteChannel r5, int r6) throws java.io.IOException {
        /*
            r3 = this;
            byte[] r0 = r3.f73395e
            java.nio.ByteBuffer r4 = java.nio.ByteBuffer.wrap(r0, r4, r6)
            r0 = 0
        L7:
            r1 = -1
            int r2 = r5.read(r4)     // Catch: java.nio.channels.ClosedChannelException -> Ld
            goto Le
        Ld:
            r2 = -1
        Le:
            if (r2 >= 0) goto L13
            if (r0 != 0) goto L19
            return r1
        L13:
            if (r2 != 0) goto L16
            goto L19
        L16:
            int r0 = r0 + r2
            if (r0 < r6) goto L7
        L19:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.buffer.m.setBytes(int, java.nio.channels.ScatteringByteChannel, int):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public m(byte[] bArr, int i2, int i4) {
        Objects.requireNonNull(bArr, "array");
        this.f73395e = bArr;
        r0(i2, i4);
    }
}
