package org.jboss.netty.buffer;

import com.join.mgps.activity.PayNowActivity_;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;
/* compiled from: DirectChannelBufferFactory.java */
/* loaded from: classes5.dex */
public class j extends b {

    /* renamed from: i  reason: collision with root package name */
    private static final j f73382i = new j(ByteOrder.BIG_ENDIAN);

    /* renamed from: j  reason: collision with root package name */
    private static final j f73383j = new j(ByteOrder.LITTLE_ENDIAN);

    /* renamed from: b  reason: collision with root package name */
    private final Object f73384b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f73385c;

    /* renamed from: d  reason: collision with root package name */
    private final int f73386d;

    /* renamed from: e  reason: collision with root package name */
    private e f73387e;

    /* renamed from: f  reason: collision with root package name */
    private int f73388f;

    /* renamed from: g  reason: collision with root package name */
    private e f73389g;

    /* renamed from: h  reason: collision with root package name */
    private int f73390h;

    public j() {
        this(ByteOrder.BIG_ENDIAN);
    }

    private e g(int i2) {
        e a4;
        synchronized (this.f73384b) {
            e eVar = this.f73387e;
            if (eVar == null) {
                e B = h.B(ByteOrder.BIG_ENDIAN, this.f73386d);
                this.f73387e = B;
                a4 = B.a(0, i2);
                this.f73388f = i2;
            } else {
                int capacity = eVar.capacity();
                int i4 = this.f73388f;
                if (capacity - i4 >= i2) {
                    a4 = this.f73387e.a(i4, i2);
                    this.f73388f += i2;
                } else {
                    e B2 = h.B(ByteOrder.BIG_ENDIAN, this.f73386d);
                    this.f73387e = B2;
                    a4 = B2.a(0, i2);
                    this.f73388f = i2;
                }
            }
        }
        return a4;
    }

    private e h(int i2) {
        e a4;
        synchronized (this.f73385c) {
            e eVar = this.f73389g;
            if (eVar == null) {
                e B = h.B(ByteOrder.LITTLE_ENDIAN, this.f73386d);
                this.f73389g = B;
                a4 = B.a(0, i2);
                this.f73390h = i2;
            } else {
                int capacity = eVar.capacity();
                int i4 = this.f73390h;
                if (capacity - i4 >= i2) {
                    a4 = this.f73389g.a(i4, i2);
                    this.f73390h += i2;
                } else {
                    e B2 = h.B(ByteOrder.LITTLE_ENDIAN, this.f73386d);
                    this.f73389g = B2;
                    a4 = B2.a(0, i2);
                    this.f73390h = i2;
                }
            }
        }
        return a4;
    }

    public static f i() {
        return f73382i;
    }

    public static f j(ByteOrder byteOrder) {
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return f73382i;
        }
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return f73383j;
        }
        Objects.requireNonNull(byteOrder, "defaultEndianness");
        throw new IllegalStateException("Should not reach here");
    }

    @Override // org.jboss.netty.buffer.f
    public e b(ByteOrder byteOrder, byte[] bArr, int i2, int i4) {
        Objects.requireNonNull(bArr, "array");
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("offset: " + i2);
        } else if (i4 == 0) {
            return h.f73374c;
        } else {
            if (i2 + i4 <= bArr.length) {
                e f4 = f(byteOrder, i4);
                f4.Z(bArr, i2, i4);
                return f4;
            }
            throw new IndexOutOfBoundsException("length: " + i4);
        }
    }

    @Override // org.jboss.netty.buffer.f
    public e c(ByteBuffer byteBuffer) {
        if (!byteBuffer.isReadOnly() && byteBuffer.isDirect()) {
            return h.Z(byteBuffer);
        }
        e f4 = f(byteBuffer.order(), byteBuffer.remaining());
        int position = byteBuffer.position();
        f4.A0(byteBuffer);
        byteBuffer.position(position);
        return f4;
    }

    @Override // org.jboss.netty.buffer.f
    public e f(ByteOrder byteOrder, int i2) {
        e h4;
        Objects.requireNonNull(byteOrder, PayNowActivity_.f34915x0);
        if (i2 < 0) {
            throw new IllegalArgumentException("capacity: " + i2);
        } else if (i2 == 0) {
            return h.f73374c;
        } else {
            if (i2 >= this.f73386d) {
                return h.B(byteOrder, i2);
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                h4 = g(i2);
            } else {
                h4 = h(i2);
            }
            h4.clear();
            return h4;
        }
    }

    public j(int i2) {
        this(ByteOrder.BIG_ENDIAN, i2);
    }

    public j(ByteOrder byteOrder) {
        this(byteOrder, 1048576);
    }

    public j(ByteOrder byteOrder, int i2) {
        super(byteOrder);
        this.f73384b = new Object();
        this.f73385c = new Object();
        if (i2 > 0) {
            this.f73386d = i2;
            return;
        }
        throw new IllegalArgumentException("preallocatedBufCapacity must be greater than 0: " + i2);
    }
}
