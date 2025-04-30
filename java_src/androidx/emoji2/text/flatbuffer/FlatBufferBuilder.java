package androidx.emoji2.text.flatbuffer;

import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes.dex */
public class FlatBufferBuilder {

    /* renamed from: o  reason: collision with root package name */
    static final /* synthetic */ boolean f5628o = false;

    /* renamed from: a  reason: collision with root package name */
    ByteBuffer f5629a;

    /* renamed from: b  reason: collision with root package name */
    int f5630b;

    /* renamed from: c  reason: collision with root package name */
    int f5631c;

    /* renamed from: d  reason: collision with root package name */
    int[] f5632d;

    /* renamed from: e  reason: collision with root package name */
    int f5633e;

    /* renamed from: f  reason: collision with root package name */
    boolean f5634f;

    /* renamed from: g  reason: collision with root package name */
    boolean f5635g;

    /* renamed from: h  reason: collision with root package name */
    int f5636h;

    /* renamed from: i  reason: collision with root package name */
    int[] f5637i;

    /* renamed from: j  reason: collision with root package name */
    int f5638j;

    /* renamed from: k  reason: collision with root package name */
    int f5639k;

    /* renamed from: l  reason: collision with root package name */
    boolean f5640l;

    /* renamed from: m  reason: collision with root package name */
    ByteBufferFactory f5641m;

    /* renamed from: n  reason: collision with root package name */
    final Utf8 f5642n;

    /* loaded from: classes.dex */
    static class ByteBufferBackedInputStream extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        ByteBuffer f5643a;

        public ByteBufferBackedInputStream(ByteBuffer byteBuffer) {
            this.f5643a = byteBuffer;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            try {
                return this.f5643a.get() & 255;
            } catch (BufferUnderflowException unused) {
                return -1;
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ByteBufferFactory {
        public abstract ByteBuffer newByteBuffer(int i2);

        public void releaseByteBuffer(ByteBuffer byteBuffer) {
        }
    }

    /* loaded from: classes.dex */
    public static final class HeapByteBufferFactory extends ByteBufferFactory {
        public static final HeapByteBufferFactory INSTANCE = new HeapByteBufferFactory();

        @Override // androidx.emoji2.text.flatbuffer.FlatBufferBuilder.ByteBufferFactory
        public ByteBuffer newByteBuffer(int i2) {
            return ByteBuffer.allocate(i2).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    public FlatBufferBuilder(int i2, ByteBufferFactory byteBufferFactory) {
        this(i2, byteBufferFactory, null, Utf8.getDefault());
    }

    @Deprecated
    private int a() {
        finished();
        return this.f5630b;
    }

    static ByteBuffer d(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        int capacity = byteBuffer.capacity();
        if (((-1073741824) & capacity) == 0) {
            int i2 = capacity == 0 ? 1 : capacity << 1;
            byteBuffer.position(0);
            ByteBuffer newByteBuffer = byteBufferFactory.newByteBuffer(i2);
            newByteBuffer.position(newByteBuffer.clear().capacity() - capacity);
            newByteBuffer.put(byteBuffer);
            return newByteBuffer;
        }
        throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
    }

    public static boolean isFieldPresent(Table table, int i2) {
        return table.d(i2) != 0;
    }

    public void Nested(int i2) {
        if (i2 != offset()) {
            throw new AssertionError("FlatBuffers: struct must be serialized inline.");
        }
    }

    public void addBoolean(boolean z3) {
        prep(1, 0);
        putBoolean(z3);
    }

    public void addByte(byte b4) {
        prep(1, 0);
        putByte(b4);
    }

    public void addDouble(double d4) {
        prep(8, 0);
        putDouble(d4);
    }

    public void addFloat(float f4) {
        prep(4, 0);
        putFloat(f4);
    }

    public void addInt(int i2) {
        prep(4, 0);
        putInt(i2);
    }

    public void addLong(long j4) {
        prep(8, 0);
        putLong(j4);
    }

    public void addOffset(int i2) {
        prep(4, 0);
        putInt((offset() - i2) + 4);
    }

    public void addShort(short s3) {
        prep(2, 0);
        putShort(s3);
    }

    public void addStruct(int i2, int i4, int i5) {
        if (i4 != i5) {
            Nested(i4);
            slot(i2);
        }
    }

    protected void b(int i2, String str, boolean z3) {
        prep(this.f5631c, (z3 ? 4 : 0) + 8);
        if (str.length() == 4) {
            for (int i4 = 3; i4 >= 0; i4--) {
                addByte((byte) str.charAt(i4));
            }
            c(i2, z3);
            return;
        }
        throw new AssertionError("FlatBuffers: file identifier must be length 4");
    }

    protected void c(int i2, boolean z3) {
        prep(this.f5631c, (z3 ? 4 : 0) + 4);
        addOffset(i2);
        if (z3) {
            addInt(this.f5629a.capacity() - this.f5630b);
        }
        this.f5629a.position(this.f5630b);
        this.f5635g = true;
    }

    public void clear() {
        this.f5630b = this.f5629a.capacity();
        this.f5629a.clear();
        this.f5631c = 1;
        while (true) {
            int i2 = this.f5633e;
            if (i2 <= 0) {
                this.f5633e = 0;
                this.f5634f = false;
                this.f5635g = false;
                this.f5636h = 0;
                this.f5638j = 0;
                this.f5639k = 0;
                return;
            }
            int[] iArr = this.f5632d;
            int i4 = i2 - 1;
            this.f5633e = i4;
            iArr[i4] = 0;
        }
    }

    public int createByteVector(byte[] bArr) {
        int length = bArr.length;
        startVector(1, length, 1);
        ByteBuffer byteBuffer = this.f5629a;
        int i2 = this.f5630b - length;
        this.f5630b = i2;
        byteBuffer.position(i2);
        this.f5629a.put(bArr);
        return endVector();
    }

    public <T extends Table> int createSortedVectorOfTables(T t3, int[] iArr) {
        t3.r(iArr, this.f5629a);
        return createVectorOfTables(iArr);
    }

    public int createString(CharSequence charSequence) {
        int encodedLength = this.f5642n.encodedLength(charSequence);
        addByte((byte) 0);
        startVector(1, encodedLength, 1);
        ByteBuffer byteBuffer = this.f5629a;
        int i2 = this.f5630b - encodedLength;
        this.f5630b = i2;
        byteBuffer.position(i2);
        this.f5642n.encodeUtf8(charSequence, this.f5629a);
        return endVector();
    }

    public ByteBuffer createUnintializedVector(int i2, int i4, int i5) {
        int i6 = i2 * i4;
        startVector(i2, i4, i5);
        ByteBuffer byteBuffer = this.f5629a;
        int i7 = this.f5630b - i6;
        this.f5630b = i7;
        byteBuffer.position(i7);
        ByteBuffer order = this.f5629a.slice().order(ByteOrder.LITTLE_ENDIAN);
        order.limit(i6);
        return order;
    }

    public int createVectorOfTables(int[] iArr) {
        notNested();
        startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            addOffset(iArr[length]);
        }
        return endVector();
    }

    public ByteBuffer dataBuffer() {
        finished();
        return this.f5629a;
    }

    public int endTable() {
        int i2;
        if (this.f5632d != null && this.f5634f) {
            addInt(0);
            int offset = offset();
            int i4 = this.f5633e - 1;
            while (i4 >= 0 && this.f5632d[i4] == 0) {
                i4--;
            }
            int i5 = i4 + 1;
            while (i4 >= 0) {
                int[] iArr = this.f5632d;
                addShort((short) (iArr[i4] != 0 ? offset - iArr[i4] : 0));
                i4--;
            }
            addShort((short) (offset - this.f5636h));
            addShort((short) ((i5 + 2) * 2));
            int i6 = 0;
            loop2: while (true) {
                if (i6 >= this.f5638j) {
                    i2 = 0;
                    break;
                }
                int capacity = this.f5629a.capacity() - this.f5637i[i6];
                int i7 = this.f5630b;
                short s3 = this.f5629a.getShort(capacity);
                if (s3 == this.f5629a.getShort(i7)) {
                    for (int i8 = 2; i8 < s3; i8 += 2) {
                        if (this.f5629a.getShort(capacity + i8) != this.f5629a.getShort(i7 + i8)) {
                            break;
                        }
                    }
                    i2 = this.f5637i[i6];
                    break loop2;
                }
                i6++;
            }
            if (i2 != 0) {
                int capacity2 = this.f5629a.capacity() - offset;
                this.f5630b = capacity2;
                this.f5629a.putInt(capacity2, i2 - offset);
            } else {
                int i9 = this.f5638j;
                int[] iArr2 = this.f5637i;
                if (i9 == iArr2.length) {
                    this.f5637i = Arrays.copyOf(iArr2, i9 * 2);
                }
                int[] iArr3 = this.f5637i;
                int i10 = this.f5638j;
                this.f5638j = i10 + 1;
                iArr3[i10] = offset();
                ByteBuffer byteBuffer = this.f5629a;
                byteBuffer.putInt(byteBuffer.capacity() - offset, offset() - offset);
            }
            this.f5634f = false;
            return offset;
        }
        throw new AssertionError("FlatBuffers: endTable called without startTable");
    }

    public int endVector() {
        if (this.f5634f) {
            this.f5634f = false;
            putInt(this.f5639k);
            return offset();
        }
        throw new AssertionError("FlatBuffers: endVector called without startVector");
    }

    public void finish(int i2) {
        c(i2, false);
    }

    public void finishSizePrefixed(int i2) {
        c(i2, true);
    }

    public void finished() {
        if (!this.f5635g) {
            throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
        }
    }

    public FlatBufferBuilder forceDefaults(boolean z3) {
        this.f5640l = z3;
        return this;
    }

    public FlatBufferBuilder init(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this.f5641m = byteBufferFactory;
        this.f5629a = byteBuffer;
        byteBuffer.clear();
        this.f5629a.order(ByteOrder.LITTLE_ENDIAN);
        this.f5631c = 1;
        this.f5630b = this.f5629a.capacity();
        this.f5633e = 0;
        this.f5634f = false;
        this.f5635g = false;
        this.f5636h = 0;
        this.f5638j = 0;
        this.f5639k = 0;
        return this;
    }

    public void notNested() {
        if (this.f5634f) {
            throw new AssertionError("FlatBuffers: object serialization must not be nested.");
        }
    }

    public int offset() {
        return this.f5629a.capacity() - this.f5630b;
    }

    public void pad(int i2) {
        for (int i4 = 0; i4 < i2; i4++) {
            ByteBuffer byteBuffer = this.f5629a;
            int i5 = this.f5630b - 1;
            this.f5630b = i5;
            byteBuffer.put(i5, (byte) 0);
        }
    }

    public void prep(int i2, int i4) {
        if (i2 > this.f5631c) {
            this.f5631c = i2;
        }
        int capacity = ((((this.f5629a.capacity() - this.f5630b) + i4) ^ (-1)) + 1) & (i2 - 1);
        while (this.f5630b < capacity + i2 + i4) {
            int capacity2 = this.f5629a.capacity();
            ByteBuffer byteBuffer = this.f5629a;
            ByteBuffer d4 = d(byteBuffer, this.f5641m);
            this.f5629a = d4;
            if (byteBuffer != d4) {
                this.f5641m.releaseByteBuffer(byteBuffer);
            }
            this.f5630b += this.f5629a.capacity() - capacity2;
        }
        pad(capacity);
    }

    public void putBoolean(boolean z3) {
        ByteBuffer byteBuffer = this.f5629a;
        int i2 = this.f5630b - 1;
        this.f5630b = i2;
        byteBuffer.put(i2, z3 ? (byte) 1 : (byte) 0);
    }

    public void putByte(byte b4) {
        ByteBuffer byteBuffer = this.f5629a;
        int i2 = this.f5630b - 1;
        this.f5630b = i2;
        byteBuffer.put(i2, b4);
    }

    public void putDouble(double d4) {
        ByteBuffer byteBuffer = this.f5629a;
        int i2 = this.f5630b - 8;
        this.f5630b = i2;
        byteBuffer.putDouble(i2, d4);
    }

    public void putFloat(float f4) {
        ByteBuffer byteBuffer = this.f5629a;
        int i2 = this.f5630b - 4;
        this.f5630b = i2;
        byteBuffer.putFloat(i2, f4);
    }

    public void putInt(int i2) {
        ByteBuffer byteBuffer = this.f5629a;
        int i4 = this.f5630b - 4;
        this.f5630b = i4;
        byteBuffer.putInt(i4, i2);
    }

    public void putLong(long j4) {
        ByteBuffer byteBuffer = this.f5629a;
        int i2 = this.f5630b - 8;
        this.f5630b = i2;
        byteBuffer.putLong(i2, j4);
    }

    public void putShort(short s3) {
        ByteBuffer byteBuffer = this.f5629a;
        int i2 = this.f5630b - 2;
        this.f5630b = i2;
        byteBuffer.putShort(i2, s3);
    }

    public void required(int i2, int i4) {
        int capacity = this.f5629a.capacity() - i2;
        if (this.f5629a.getShort((capacity - this.f5629a.getInt(capacity)) + i4) != 0) {
            return;
        }
        throw new AssertionError("FlatBuffers: field " + i4 + " must be set");
    }

    public byte[] sizedByteArray(int i2, int i4) {
        finished();
        byte[] bArr = new byte[i4];
        this.f5629a.position(i2);
        this.f5629a.get(bArr);
        return bArr;
    }

    public InputStream sizedInputStream() {
        finished();
        ByteBuffer duplicate = this.f5629a.duplicate();
        duplicate.position(this.f5630b);
        duplicate.limit(this.f5629a.capacity());
        return new ByteBufferBackedInputStream(duplicate);
    }

    public void slot(int i2) {
        this.f5632d[i2] = offset();
    }

    public void startTable(int i2) {
        notNested();
        int[] iArr = this.f5632d;
        if (iArr == null || iArr.length < i2) {
            this.f5632d = new int[i2];
        }
        this.f5633e = i2;
        Arrays.fill(this.f5632d, 0, i2, 0);
        this.f5634f = true;
        this.f5636h = offset();
    }

    public void startVector(int i2, int i4, int i5) {
        notNested();
        this.f5639k = i4;
        int i6 = i2 * i4;
        prep(4, i6);
        prep(i5, i6);
        this.f5634f = true;
    }

    public FlatBufferBuilder(int i2, ByteBufferFactory byteBufferFactory, ByteBuffer byteBuffer, Utf8 utf8) {
        this.f5631c = 1;
        this.f5632d = null;
        this.f5633e = 0;
        this.f5634f = false;
        this.f5635g = false;
        this.f5637i = new int[16];
        this.f5638j = 0;
        this.f5639k = 0;
        this.f5640l = false;
        i2 = i2 <= 0 ? 1 : i2;
        this.f5641m = byteBufferFactory;
        if (byteBuffer != null) {
            this.f5629a = byteBuffer;
            byteBuffer.clear();
            this.f5629a.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f5629a = byteBufferFactory.newByteBuffer(i2);
        }
        this.f5642n = utf8;
        this.f5630b = this.f5629a.capacity();
    }

    public void addBoolean(int i2, boolean z3, boolean z4) {
        if (this.f5640l || z3 != z4) {
            addBoolean(z3);
            slot(i2);
        }
    }

    public void addByte(int i2, byte b4, int i4) {
        if (this.f5640l || b4 != i4) {
            addByte(b4);
            slot(i2);
        }
    }

    public void addDouble(int i2, double d4, double d5) {
        if (this.f5640l || d4 != d5) {
            addDouble(d4);
            slot(i2);
        }
    }

    public void addFloat(int i2, float f4, double d4) {
        if (this.f5640l || f4 != d4) {
            addFloat(f4);
            slot(i2);
        }
    }

    public void addInt(int i2, int i4, int i5) {
        if (this.f5640l || i4 != i5) {
            addInt(i4);
            slot(i2);
        }
    }

    public void addLong(int i2, long j4, long j5) {
        if (this.f5640l || j4 != j5) {
            addLong(j4);
            slot(i2);
        }
    }

    public void addShort(int i2, short s3, int i4) {
        if (this.f5640l || s3 != i4) {
            addShort(s3);
            slot(i2);
        }
    }

    public void finish(int i2, String str) {
        b(i2, str, false);
    }

    public void finishSizePrefixed(int i2, String str) {
        b(i2, str, true);
    }

    public void addOffset(int i2, int i4, int i5) {
        if (this.f5640l || i4 != i5) {
            addOffset(i4);
            slot(i2);
        }
    }

    public byte[] sizedByteArray() {
        return sizedByteArray(this.f5630b, this.f5629a.capacity() - this.f5630b);
    }

    public int createByteVector(byte[] bArr, int i2, int i4) {
        startVector(1, i4, 1);
        ByteBuffer byteBuffer = this.f5629a;
        int i5 = this.f5630b - i4;
        this.f5630b = i5;
        byteBuffer.position(i5);
        this.f5629a.put(bArr, i2, i4);
        return endVector();
    }

    public int createString(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        addByte((byte) 0);
        startVector(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.f5629a;
        int i2 = this.f5630b - remaining;
        this.f5630b = i2;
        byteBuffer2.position(i2);
        this.f5629a.put(byteBuffer);
        return endVector();
    }

    public int createByteVector(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        startVector(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.f5629a;
        int i2 = this.f5630b - remaining;
        this.f5630b = i2;
        byteBuffer2.position(i2);
        this.f5629a.put(byteBuffer);
        return endVector();
    }

    public FlatBufferBuilder(int i2) {
        this(i2, HeapByteBufferFactory.INSTANCE, null, Utf8.getDefault());
    }

    public FlatBufferBuilder() {
        this(1024);
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this(byteBuffer.capacity(), byteBufferFactory, byteBuffer, Utf8.getDefault());
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, new HeapByteBufferFactory());
    }
}
