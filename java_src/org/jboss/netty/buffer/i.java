package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.UShort;
/* compiled from: CompositeChannelBuffer.java */
/* loaded from: classes5.dex */
public class i extends a {

    /* renamed from: j  reason: collision with root package name */
    static final /* synthetic */ boolean f73376j = false;

    /* renamed from: e  reason: collision with root package name */
    private final ByteOrder f73377e;

    /* renamed from: f  reason: collision with root package name */
    private e[] f73378f;

    /* renamed from: g  reason: collision with root package name */
    private int[] f73379g;

    /* renamed from: h  reason: collision with root package name */
    private int f73380h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f73381i;

    public i(ByteOrder byteOrder, List<e> list, boolean z3) {
        this.f73377e = byteOrder;
        this.f73381i = z3;
        a0(list);
    }

    private void a0(List<e> list) {
        this.f73380h = 0;
        this.f73378f = new e[list.size()];
        int i2 = 0;
        while (true) {
            e[] eVarArr = this.f73378f;
            if (i2 < eVarArr.length) {
                e eVar = list.get(i2);
                if (eVar.order() == order()) {
                    this.f73378f[i2] = eVar;
                    i2++;
                } else {
                    throw new IllegalArgumentException("All buffers must have the same endianness.");
                }
            } else {
                int i4 = 1;
                int[] iArr = new int[eVarArr.length + 1];
                this.f73379g = iArr;
                iArr[0] = 0;
                while (true) {
                    e[] eVarArr2 = this.f73378f;
                    if (i4 <= eVarArr2.length) {
                        int[] iArr2 = this.f73379g;
                        int i5 = i4 - 1;
                        iArr2[i4] = iArr2[i5] + eVarArr2[i5].capacity();
                        i4++;
                    } else {
                        r0(0, capacity());
                        return;
                    }
                }
            }
        }
    }

    private int s(int i2) {
        int i4 = this.f73380h;
        int[] iArr = this.f73379g;
        if (i2 >= iArr[i4]) {
            int i5 = i4 + 1;
            if (i2 < iArr[i5]) {
                return i4;
            }
            while (i5 < this.f73378f.length) {
                int i6 = i5 + 1;
                if (i2 < this.f73379g[i6]) {
                    this.f73380h = i5;
                    return i5;
                }
                i5 = i6;
            }
        } else {
            for (int i7 = i4 - 1; i7 >= 0; i7--) {
                if (i2 >= this.f73379g[i7]) {
                    this.f73380h = i7;
                    return i7;
                }
            }
        }
        throw new IndexOutOfBoundsException("Invalid index: " + i2 + ", maximum: " + this.f73379g.length);
    }

    private void x(int i2, int i4, int i5, e eVar) {
        int i6 = 0;
        while (i4 > 0) {
            e eVar2 = this.f73378f[i5];
            int i7 = i2 - this.f73379g[i5];
            int min = Math.min(i4, eVar2.capacity() - i7);
            eVar2.l0(i7, eVar, i6, min);
            i2 += min;
            i6 += min;
            i4 -= min;
            i5++;
        }
        eVar.u0(eVar.capacity());
    }

    public List<e> A(int i2, int i4) {
        if (i4 == 0) {
            return Collections.emptyList();
        }
        int i5 = i2 + i4;
        if (i5 <= capacity()) {
            int s3 = s(i2);
            ArrayList arrayList = new ArrayList(this.f73378f.length);
            e duplicate = this.f73378f[s3].duplicate();
            duplicate.O(i2 - this.f73379g[s3]);
            while (true) {
                int readableBytes = duplicate.readableBytes();
                if (i4 <= readableBytes) {
                    duplicate.u0(duplicate.readerIndex() + i4);
                    arrayList.add(duplicate);
                    break;
                }
                arrayList.add(duplicate);
                i4 -= readableBytes;
                s3++;
                duplicate = this.f73378f[s3].duplicate();
                if (i4 <= 0) {
                    break;
                }
            }
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                arrayList.set(i6, ((e) arrayList.get(i6)).H0());
            }
            return arrayList;
        }
        throw new IndexOutOfBoundsException("Too many bytes to decompose - Need " + i5 + ", capacity is " + capacity());
    }

    @Override // org.jboss.netty.buffer.e
    public void E(int i2, OutputStream outputStream, int i4) throws IOException {
        if (i2 > capacity() - i4) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - needs " + (i2 + i4) + ", maximum of " + capacity());
        } else if (i2 < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        } else {
            if (i4 == 0) {
                return;
            }
            int s3 = s(i2);
            while (i4 > 0) {
                e eVar = this.f73378f[s3];
                int i5 = i2 - this.f73379g[s3];
                int min = Math.min(i4, eVar.capacity() - i5);
                eVar.E(i5, outputStream, min);
                i2 += min;
                i4 -= min;
                s3++;
            }
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i2, ByteBuffer byteBuffer) {
        int s3 = s(i2);
        int limit = byteBuffer.limit();
        int remaining = byteBuffer.remaining();
        if (i2 > capacity() - remaining) {
            throw new IndexOutOfBoundsException("Too many bytes to be written - Needs " + (i2 + remaining) + ", maximum is " + capacity());
        }
        while (remaining > 0) {
            try {
                e eVar = this.f73378f[s3];
                int i4 = i2 - this.f73379g[s3];
                int min = Math.min(remaining, eVar.capacity() - i4);
                byteBuffer.limit(byteBuffer.position() + min);
                eVar.G0(i4, byteBuffer);
                i2 += min;
                remaining -= min;
                s3++;
            } finally {
                byteBuffer.limit(limit);
            }
        }
    }

    @Override // org.jboss.netty.buffer.e
    public e M(int i2, int i4) {
        int s3 = s(i2);
        if (i2 <= capacity() - i4) {
            e f4 = factory().f(order(), i4);
            x(i2, i4, s3, f4);
            return f4;
        }
        throw new IndexOutOfBoundsException("Too many bytes to copy - Needs " + (i2 + i4) + ", maximum is " + capacity());
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer R(int i2, int i4) {
        e[] eVarArr = this.f73378f;
        if (eVarArr.length == 1) {
            return eVarArr[0].R(i2, i4);
        }
        ByteBuffer[] W = W(i2, i4);
        ByteBuffer order = ByteBuffer.allocate(i4).order(order());
        for (ByteBuffer byteBuffer : W) {
            order.put(byteBuffer);
        }
        order.flip();
        return order;
    }

    @Override // org.jboss.netty.buffer.e
    public void T(int i2, int i4) {
        int s3 = s(i2);
        this.f73378f[s3].T(i2 - this.f73379g[s3], i4);
    }

    public e U(int i2) {
        if (i2 >= 0 && i2 < capacity()) {
            return this.f73378f[s(i2)];
        }
        throw new IndexOutOfBoundsException("Invalid index: " + i2 + " - Bytes needed: " + i2 + ", maximum is " + capacity());
    }

    @Override // org.jboss.netty.buffer.e
    public void V(int i2, byte[] bArr, int i4, int i5) {
        if (i2 > capacity() - i5 || i4 > bArr.length - i5) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Needs " + (i2 + i5) + ", maximum is " + capacity() + " or " + bArr.length);
        } else if (i2 < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        } else {
            if (i5 == 0) {
                return;
            }
            int s3 = s(i2);
            while (i5 > 0) {
                e eVar = this.f73378f[s3];
                int i6 = i2 - this.f73379g[s3];
                int min = Math.min(i5, eVar.capacity() - i6);
                eVar.V(i6, bArr, i4, min);
                i2 += min;
                i4 += min;
                i5 -= min;
                s3++;
            }
        }
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public ByteBuffer[] W(int i2, int i4) {
        int i5 = i2 + i4;
        if (i5 > capacity()) {
            throw new IndexOutOfBoundsException("Too many bytes to convert - Needs" + i5 + ", maximum is " + capacity());
        } else if (i2 >= 0) {
            if (i4 == 0) {
                return new ByteBuffer[0];
            }
            ArrayList arrayList = new ArrayList(this.f73378f.length);
            int s3 = s(i2);
            while (i4 > 0) {
                e eVar = this.f73378f[s3];
                int i6 = i2 - this.f73379g[s3];
                int min = Math.min(i4, eVar.capacity() - i6);
                arrayList.add(eVar.R(i6, min));
                i2 += min;
                i4 -= min;
                s3++;
            }
            return (ByteBuffer[]) arrayList.toArray(new ByteBuffer[arrayList.size()]);
        } else {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void X(int i2, int i4) {
        int s3 = s(i2);
        int i5 = i2 + 3;
        int[] iArr = this.f73379g;
        if (i5 <= iArr[s3 + 1]) {
            this.f73378f[s3].X(i2 - iArr[s3], i4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            q0(i2, (short) (i4 >> 8));
            T(i2 + 2, (byte) i4);
        } else {
            q0(i2, (short) i4);
            T(i2 + 2, (byte) (i4 >>> 16));
        }
    }

    public int Y() {
        return this.f73378f.length;
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i2, int i4) {
        if (i2 == 0) {
            if (i4 == 0) {
                return h.f73374c;
            }
        } else if (i2 < 0 || i2 > capacity() - i4) {
            throw new IndexOutOfBoundsException("Invalid index: " + i2 + " - Bytes needed: " + (i2 + i4) + ", maximum is " + capacity());
        } else if (i4 == 0) {
            return h.f73374c;
        }
        List<e> A = A(i2, i4);
        int size = A.size();
        if (size != 0) {
            if (size != 1) {
                return new i(order(), A, this.f73381i);
            }
            return A.get(0);
        }
        return h.f73374c;
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        throw new UnsupportedOperationException();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        throw new UnsupportedOperationException();
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f73379g[this.f73378f.length];
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        i iVar = new i(this);
        iVar.r0(readerIndex(), writerIndex());
        return iVar;
    }

    public boolean e0() {
        return this.f73381i && org.jboss.netty.util.internal.d.e() >= 7;
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void f() {
        int i2;
        int i4;
        int readerIndex = readerIndex();
        if (readerIndex == 0) {
            return;
        }
        int writerIndex = writerIndex();
        List<e> A = A(readerIndex, capacity() - readerIndex);
        if (A.isEmpty()) {
            A = new ArrayList<>(1);
        }
        e b4 = h.b(order(), readerIndex);
        b4.u0(readerIndex);
        A.add(b4);
        try {
            n0();
            i2 = readerIndex();
        } catch (IndexOutOfBoundsException unused) {
            i2 = readerIndex;
        }
        try {
            J();
            i4 = writerIndex();
        } catch (IndexOutOfBoundsException unused2) {
            i4 = writerIndex;
        }
        a0(A);
        r0(Math.max(i2 - readerIndex, 0), Math.max(i4 - readerIndex, 0));
        g0();
        x0();
        r0(0, Math.max(writerIndex - readerIndex, 0));
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return n.h(order());
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i2) {
        int s3 = s(i2);
        return this.f73378f[s3].getByte(i2 - this.f73379g[s3]);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        if (e0()) {
            return (int) gatheringByteChannel.write(W(i2, i4));
        }
        return gatheringByteChannel.write(R(i2, i4));
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i2) {
        int s3 = s(i2);
        int i4 = i2 + 4;
        int[] iArr = this.f73379g;
        if (i4 <= iArr[s3 + 1]) {
            return this.f73378f[s3].getInt(i2 - iArr[s3]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (getShort(i2 + 2) & UShort.MAX_VALUE) | ((getShort(i2) & UShort.MAX_VALUE) << 16);
        }
        return ((getShort(i2 + 2) & UShort.MAX_VALUE) << 16) | (getShort(i2) & UShort.MAX_VALUE);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i2) {
        int s3 = s(i2);
        int i4 = i2 + 8;
        int[] iArr = this.f73379g;
        if (i4 <= iArr[s3 + 1]) {
            return this.f73378f[s3].getLong(i2 - iArr[s3]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((getInt(i2) & 4294967295L) << 32) | (4294967295L & getInt(i2 + 4));
        }
        return (getInt(i2) & 4294967295L) | ((4294967295L & getInt(i2 + 4)) << 32);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i2) {
        int s3 = s(i2);
        int i4 = i2 + 2;
        int[] iArr = this.f73379g;
        if (i4 <= iArr[s3 + 1]) {
            return this.f73378f[s3].getShort(i2 - iArr[s3]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (short) ((getByte(i2 + 1) & 255) | ((getByte(i2) & 255) << 8));
        }
        return (short) (((getByte(i2 + 1) & 255) << 8) | (getByte(i2) & 255));
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i2) {
        int s3 = s(i2);
        int i4 = i2 + 3;
        int[] iArr = this.f73379g;
        if (i4 <= iArr[s3 + 1]) {
            return this.f73378f[s3].getUnsignedMedium(i2 - iArr[s3]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (getByte(i2 + 2) & 255) | ((getShort(i2) & UShort.MAX_VALUE) << 8);
        }
        return ((getByte(i2 + 2) & 255) << 16) | (getShort(i2) & UShort.MAX_VALUE);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return false;
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return false;
    }

    @Override // org.jboss.netty.buffer.e
    public void l0(int i2, e eVar, int i4, int i5) {
        if (i2 > capacity() - i5 || i4 > eVar.capacity() - i5) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - Needs " + (i2 + i5) + " or " + (i4 + i5) + ", maximum is " + capacity() + " or " + eVar.capacity());
        } else if (i2 < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        } else {
            if (i5 == 0) {
                return;
            }
            int s3 = s(i2);
            while (i5 > 0) {
                e eVar2 = this.f73378f[s3];
                int i6 = i2 - this.f73379g[s3];
                int min = Math.min(i5, eVar2.capacity() - i6);
                eVar2.l0(i6, eVar, i4, min);
                i2 += min;
                i4 += min;
                i5 -= min;
                s3++;
            }
        }
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f73377e;
    }

    @Override // org.jboss.netty.buffer.e
    public void p(int i2, byte[] bArr, int i4, int i5) {
        int s3 = s(i2);
        if (i2 > capacity() - i5 || i4 > bArr.length - i5) {
            throw new IndexOutOfBoundsException("Too many bytes to read - needs " + (i2 + i5) + " or " + (i4 + i5) + ", maximum is " + capacity() + " or " + bArr.length);
        }
        while (i5 > 0) {
            e eVar = this.f73378f[s3];
            int i6 = i2 - this.f73379g[s3];
            int min = Math.min(i5, eVar.capacity() - i6);
            eVar.p(i6, bArr, i4, min);
            i2 += min;
            i4 += min;
            i5 -= min;
            s3++;
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void q0(int i2, int i4) {
        int s3 = s(i2);
        int i5 = i2 + 2;
        int[] iArr = this.f73379g;
        if (i5 <= iArr[s3 + 1]) {
            this.f73378f[s3].q0(i2 - iArr[s3], i4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            T(i2, (byte) (i4 >>> 8));
            T(i2 + 1, (byte) i4);
        } else {
            T(i2, (byte) i4);
            T(i2 + 1, (byte) (i4 >>> 8));
        }
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        int s3 = s(i2);
        if (i2 > capacity() - i4) {
            throw new IndexOutOfBoundsException("Too many bytes to write - Needs " + (i2 + i4) + ", maximum is " + capacity());
        }
        int i5 = 0;
        while (true) {
            e eVar = this.f73378f[s3];
            int i6 = i2 - this.f73379g[s3];
            int min = Math.min(i4, eVar.capacity() - i6);
            int bytes = eVar.setBytes(i6, inputStream, min);
            if (bytes >= 0) {
                if (bytes == min) {
                    i2 += min;
                    i4 -= min;
                    i5 += min;
                    s3++;
                    continue;
                } else {
                    i2 += bytes;
                    i4 -= bytes;
                    i5 += bytes;
                    continue;
                }
                if (i4 <= 0) {
                    break;
                }
            } else if (i5 == 0) {
                return -1;
            }
        }
        return i5;
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i2, int i4) {
        int s3 = s(i2);
        int i5 = i2 + 4;
        int[] iArr = this.f73379g;
        if (i5 <= iArr[s3 + 1]) {
            this.f73378f[s3].setInt(i2 - iArr[s3], i4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            q0(i2, (short) (i4 >>> 16));
            q0(i2 + 2, (short) i4);
        } else {
            q0(i2, (short) i4);
            q0(i2 + 2, (short) (i4 >>> 16));
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i2, long j4) {
        int s3 = s(i2);
        int i4 = i2 + 8;
        int[] iArr = this.f73379g;
        if (i4 <= iArr[s3 + 1]) {
            this.f73378f[s3].setLong(i2 - iArr[s3], j4);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            setInt(i2, (int) (j4 >>> 32));
            setInt(i2 + 4, (int) j4);
        } else {
            setInt(i2, (int) j4);
            setInt(i2 + 4, (int) (j4 >>> 32));
        }
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public String toString() {
        String aVar = super.toString();
        String substring = aVar.substring(0, aVar.length() - 1);
        return substring + ", components=" + this.f73378f.length + ')';
    }

    @Override // org.jboss.netty.buffer.e
    public void w(int i2, e eVar, int i4, int i5) {
        int s3 = s(i2);
        if (i2 > capacity() - i5 || i4 > eVar.capacity() - i5) {
            throw new IndexOutOfBoundsException("Too many bytes to be written - Needs " + (i2 + i5) + " or " + (i4 + i5) + ", maximum is " + capacity() + " or " + eVar.capacity());
        }
        while (i5 > 0) {
            e eVar2 = this.f73378f[s3];
            int i6 = i2 - this.f73379g[s3];
            int min = Math.min(i5, eVar2.capacity() - i6);
            eVar2.w(i6, eVar, i4, min);
            i2 += min;
            i4 += min;
            i5 -= min;
            s3++;
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void w0(int i2, ByteBuffer byteBuffer) {
        int s3 = s(i2);
        int limit = byteBuffer.limit();
        int remaining = byteBuffer.remaining();
        if (i2 > capacity() - remaining) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - Needs " + (i2 + remaining) + ", maximum is " + capacity());
        } else if (i2 < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        } else {
            while (remaining > 0) {
                try {
                    e eVar = this.f73378f[s3];
                    int i4 = i2 - this.f73379g[s3];
                    int min = Math.min(remaining, eVar.capacity() - i4);
                    byteBuffer.limit(byteBuffer.position() + min);
                    eVar.w0(i4, byteBuffer);
                    i2 += min;
                    remaining -= min;
                    s3++;
                } finally {
                    byteBuffer.limit(limit);
                }
            }
        }
    }

    private i(i iVar) {
        this.f73377e = iVar.f73377e;
        this.f73381i = iVar.f73381i;
        this.f73378f = (e[]) iVar.f73378f.clone();
        this.f73379g = (int[]) iVar.f73379g.clone();
        r0(iVar.readerIndex(), iVar.writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        int s3 = s(i2);
        if (i2 > capacity() - i4) {
            throw new IndexOutOfBoundsException("Too many bytes to write - Needs " + (i2 + i4) + ", maximum is " + capacity());
        }
        int i5 = 0;
        while (true) {
            e eVar = this.f73378f[s3];
            int i6 = i2 - this.f73379g[s3];
            int min = Math.min(i4, eVar.capacity() - i6);
            int bytes = eVar.setBytes(i6, scatteringByteChannel, min);
            if (bytes == 0) {
                break;
            } else if (bytes >= 0) {
                if (bytes == min) {
                    i2 += min;
                    i4 -= min;
                    i5 += min;
                    s3++;
                    continue;
                } else {
                    i2 += bytes;
                    i4 -= bytes;
                    i5 += bytes;
                    continue;
                }
                if (i4 <= 0) {
                    break;
                }
            } else if (i5 == 0) {
                return -1;
            }
        }
        return i5;
    }
}
