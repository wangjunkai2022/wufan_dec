package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.FlexBuffers;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
/* loaded from: classes.dex */
public class FlexBuffersBuilder {
    public static final int BUILDER_FLAG_NONE = 0;
    public static final int BUILDER_FLAG_SHARE_ALL = 7;
    public static final int BUILDER_FLAG_SHARE_KEYS = 1;
    public static final int BUILDER_FLAG_SHARE_KEYS_AND_STRINGS = 3;
    public static final int BUILDER_FLAG_SHARE_KEY_VECTORS = 4;
    public static final int BUILDER_FLAG_SHARE_STRINGS = 2;

    /* renamed from: h  reason: collision with root package name */
    private static final int f5664h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f5665i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f5666j = 2;

    /* renamed from: k  reason: collision with root package name */
    private static final int f5667k = 3;

    /* renamed from: l  reason: collision with root package name */
    static final /* synthetic */ boolean f5668l = false;

    /* renamed from: a  reason: collision with root package name */
    private final ReadWriteBuf f5669a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<Value> f5670b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, Integer> f5671c;

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<String, Integer> f5672d;

    /* renamed from: e  reason: collision with root package name */
    private final int f5673e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f5674f;

    /* renamed from: g  reason: collision with root package name */
    private Comparator<Value> f5675g;

    public FlexBuffersBuilder(int i2) {
        this(new ArrayReadWriteBuf(i2), 1);
    }

    private int b(int i2) {
        int i4 = 1 << i2;
        int q3 = Value.q(this.f5669a.writePosition(), i4);
        while (true) {
            int i5 = q3 - 1;
            if (q3 == 0) {
                return i4;
            }
            this.f5669a.put((byte) 0);
            q3 = i5;
        }
    }

    private Value c(int i2, int i4) {
        long j4 = i4;
        int max = Math.max(0, h(j4));
        int i5 = i2;
        while (i5 < this.f5670b.size()) {
            i5++;
            max = Math.max(max, Value.i(4, 0, this.f5670b.get(i5).f5682e, this.f5669a.writePosition(), i5));
        }
        int b4 = b(max);
        l(j4, b4);
        int writePosition = this.f5669a.writePosition();
        while (i2 < this.f5670b.size()) {
            int i6 = this.f5670b.get(i2).f5682e;
            m(this.f5670b.get(i2).f5682e, b4);
            i2++;
        }
        return new Value(-1, FlexBuffers.o(4, 0), max, writePosition);
    }

    private Value d(int i2, int i4, int i5, boolean z3, boolean z4, Value value) {
        int i6;
        int i7;
        int i8 = i5;
        long j4 = i8;
        int max = Math.max(0, h(j4));
        if (value != null) {
            max = Math.max(max, value.h(this.f5669a.writePosition(), 0));
            i6 = 3;
        } else {
            i6 = 1;
        }
        int i9 = 4;
        int i10 = max;
        for (int i11 = i4; i11 < this.f5670b.size(); i11++) {
            i10 = Math.max(i10, this.f5670b.get(i11).h(this.f5669a.writePosition(), i11 + i6));
            if (z3 && i11 == i4) {
                i9 = this.f5670b.get(i11).f5678a;
                if (!FlexBuffers.j(i9)) {
                    throw new FlexBuffers.FlexBufferException("TypedVector does not support this element type");
                }
            }
        }
        int i12 = i4;
        int b4 = b(i10);
        if (value != null) {
            m(value.f5681d, b4);
            l(1 << value.f5679b, b4);
        }
        if (!z4) {
            l(j4, b4);
        }
        int writePosition = this.f5669a.writePosition();
        for (int i13 = i12; i13 < this.f5670b.size(); i13++) {
            i(this.f5670b.get(i13), b4);
        }
        if (!z3) {
            while (i12 < this.f5670b.size()) {
                this.f5669a.put(this.f5670b.get(i12).s(i10));
                i12++;
            }
        }
        if (value != null) {
            i7 = 9;
        } else if (z3) {
            if (!z4) {
                i8 = 0;
            }
            i7 = FlexBuffers.o(i9, i8);
        } else {
            i7 = 10;
        }
        return new Value(i2, i7, i10, writePosition);
    }

    private int e(String str) {
        if (str == null) {
            return -1;
        }
        int writePosition = this.f5669a.writePosition();
        if ((this.f5673e & 1) != 0) {
            Integer num = this.f5671c.get(str);
            if (num == null) {
                byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
                this.f5669a.put(bytes, 0, bytes.length);
                this.f5669a.put((byte) 0);
                this.f5671c.put(str, Integer.valueOf(writePosition));
                return writePosition;
            }
            return num.intValue();
        }
        byte[] bytes2 = str.getBytes(StandardCharsets.UTF_8);
        this.f5669a.put(bytes2, 0, bytes2.length);
        this.f5669a.put((byte) 0);
        this.f5671c.put(str, Integer.valueOf(writePosition));
        return writePosition;
    }

    private void f(String str, long j4) {
        Value w3;
        int e4 = e(str);
        int h4 = h(j4);
        if (h4 == 0) {
            w3 = Value.x(e4, (int) j4);
        } else if (h4 == 1) {
            w3 = Value.u(e4, (int) j4);
        } else if (h4 == 2) {
            w3 = Value.v(e4, (int) j4);
        } else {
            w3 = Value.w(e4, j4);
        }
        this.f5670b.add(w3);
    }

    private void g(String str, long j4) {
        this.f5670b.add(Value.w(e(str), j4));
    }

    static int h(long j4) {
        if (j4 <= FlexBuffers.Unsigned.a((byte) -1)) {
            return 0;
        }
        if (j4 <= FlexBuffers.Unsigned.c((short) -1)) {
            return 1;
        }
        return j4 <= FlexBuffers.Unsigned.b(-1) ? 2 : 3;
    }

    private void i(Value value, int i2) {
        int i4 = value.f5678a;
        if (i4 != 0 && i4 != 1 && i4 != 2) {
            if (i4 == 3) {
                k(value.f5680c, i2);
                return;
            } else if (i4 != 26) {
                m(value.f5681d, i2);
                return;
            }
        }
        l(value.f5681d, i2);
    }

    private Value j(int i2, byte[] bArr, int i4, boolean z3) {
        int h4 = h(bArr.length);
        l(bArr.length, b(h4));
        int writePosition = this.f5669a.writePosition();
        this.f5669a.put(bArr, 0, bArr.length);
        if (z3) {
            this.f5669a.put((byte) 0);
        }
        return Value.f(i2, writePosition, i4, h4);
    }

    private void k(double d4, int i2) {
        if (i2 == 4) {
            this.f5669a.putFloat((float) d4);
        } else if (i2 == 8) {
            this.f5669a.putDouble(d4);
        }
    }

    private void l(long j4, int i2) {
        if (i2 == 1) {
            this.f5669a.put((byte) j4);
        } else if (i2 == 2) {
            this.f5669a.putShort((short) j4);
        } else if (i2 == 4) {
            this.f5669a.putInt((int) j4);
        } else if (i2 != 8) {
        } else {
            this.f5669a.putLong(j4);
        }
    }

    private void m(long j4, int i2) {
        l((int) (this.f5669a.writePosition() - j4), i2);
    }

    private Value n(int i2, String str) {
        return j(i2, str.getBytes(StandardCharsets.UTF_8), 5, true);
    }

    public int endMap(String str, int i2) {
        int e4 = e(str);
        ArrayList<Value> arrayList = this.f5670b;
        Collections.sort(arrayList.subList(i2, arrayList.size()), this.f5675g);
        Value d4 = d(e4, i2, this.f5670b.size() - i2, false, false, c(i2, this.f5670b.size() - i2));
        while (this.f5670b.size() > i2) {
            ArrayList<Value> arrayList2 = this.f5670b;
            arrayList2.remove(arrayList2.size() - 1);
        }
        this.f5670b.add(d4);
        return (int) d4.f5681d;
    }

    public int endVector(String str, int i2, boolean z3, boolean z4) {
        Value d4 = d(e(str), i2, this.f5670b.size() - i2, z3, z4, null);
        while (this.f5670b.size() > i2) {
            ArrayList<Value> arrayList = this.f5670b;
            arrayList.remove(arrayList.size() - 1);
        }
        this.f5670b.add(d4);
        return (int) d4.f5681d;
    }

    public ByteBuffer finish() {
        int b4 = b(this.f5670b.get(0).h(this.f5669a.writePosition(), 0));
        i(this.f5670b.get(0), b4);
        this.f5669a.put(this.f5670b.get(0).r());
        this.f5669a.put((byte) b4);
        this.f5674f = true;
        return ByteBuffer.wrap(this.f5669a.data(), 0, this.f5669a.writePosition());
    }

    public ReadWriteBuf getBuffer() {
        return this.f5669a;
    }

    public int putBlob(byte[] bArr) {
        return putBlob(null, bArr);
    }

    public void putBoolean(boolean z3) {
        putBoolean(null, z3);
    }

    public void putFloat(float f4) {
        putFloat((String) null, f4);
    }

    public void putInt(int i2) {
        putInt((String) null, i2);
    }

    public int putString(String str) {
        return putString(null, str);
    }

    public void putUInt(int i2) {
        f(null, i2);
    }

    public void putUInt64(BigInteger bigInteger) {
        g(null, bigInteger.longValue());
    }

    public int startMap() {
        return this.f5670b.size();
    }

    public int startVector() {
        return this.f5670b.size();
    }

    public FlexBuffersBuilder() {
        this(256);
    }

    public int putBlob(String str, byte[] bArr) {
        Value j4 = j(e(str), bArr, 25, false);
        this.f5670b.add(j4);
        return (int) j4.f5681d;
    }

    public void putBoolean(String str, boolean z3) {
        this.f5670b.add(Value.g(e(str), z3));
    }

    public void putFloat(String str, float f4) {
        this.f5670b.add(Value.j(e(str), f4));
    }

    public void putInt(String str, int i2) {
        putInt(str, i2);
    }

    public int putString(String str, String str2) {
        long j4;
        int e4 = e(str);
        if ((this.f5673e & 2) != 0) {
            Integer num = this.f5672d.get(str2);
            if (num == null) {
                Value n4 = n(e4, str2);
                this.f5672d.put(str2, Integer.valueOf((int) n4.f5681d));
                this.f5670b.add(n4);
                j4 = n4.f5681d;
            } else {
                this.f5670b.add(Value.f(e4, num.intValue(), 5, h(str2.length())));
                return num.intValue();
            }
        } else {
            Value n5 = n(e4, str2);
            this.f5670b.add(n5);
            j4 = n5.f5681d;
        }
        return (int) j4;
    }

    public void putUInt(long j4) {
        f(null, j4);
    }

    @Deprecated
    public FlexBuffersBuilder(ByteBuffer byteBuffer, int i2) {
        this(new ArrayReadWriteBuf(byteBuffer.array()), i2);
    }

    public void putFloat(double d4) {
        putFloat((String) null, d4);
    }

    public void putInt(String str, long j4) {
        int e4 = e(str);
        if (-128 <= j4 && j4 <= 127) {
            this.f5670b.add(Value.o(e4, (int) j4));
        } else if (-32768 <= j4 && j4 <= 32767) {
            this.f5670b.add(Value.l(e4, (int) j4));
        } else if (-2147483648L <= j4 && j4 <= 2147483647L) {
            this.f5670b.add(Value.m(e4, (int) j4));
        } else {
            this.f5670b.add(Value.n(e4, j4));
        }
    }

    public FlexBuffersBuilder(ReadWriteBuf readWriteBuf, int i2) {
        this.f5670b = new ArrayList<>();
        this.f5671c = new HashMap<>();
        this.f5672d = new HashMap<>();
        this.f5674f = false;
        this.f5675g = new Comparator<Value>() { // from class: androidx.emoji2.text.flatbuffer.FlexBuffersBuilder.1
            @Override // java.util.Comparator
            public int compare(Value value, Value value2) {
                byte b4;
                byte b5;
                int i4 = value.f5682e;
                int i5 = value2.f5682e;
                do {
                    b4 = FlexBuffersBuilder.this.f5669a.get(i4);
                    b5 = FlexBuffersBuilder.this.f5669a.get(i5);
                    if (b4 == 0) {
                        return b4 - b5;
                    }
                    i4++;
                    i5++;
                } while (b4 == b5);
                return b4 - b5;
            }
        };
        this.f5669a = readWriteBuf;
        this.f5673e = i2;
    }

    public void putFloat(String str, double d4) {
        this.f5670b.add(Value.k(e(str), d4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Value {

        /* renamed from: f  reason: collision with root package name */
        static final /* synthetic */ boolean f5677f = false;

        /* renamed from: a  reason: collision with root package name */
        final int f5678a;

        /* renamed from: b  reason: collision with root package name */
        final int f5679b;

        /* renamed from: c  reason: collision with root package name */
        final double f5680c;

        /* renamed from: d  reason: collision with root package name */
        long f5681d;

        /* renamed from: e  reason: collision with root package name */
        int f5682e;

        Value(int i2, int i4, int i5, long j4) {
            this.f5682e = i2;
            this.f5678a = i4;
            this.f5679b = i5;
            this.f5681d = j4;
            this.f5680c = Double.MIN_VALUE;
        }

        static Value f(int i2, int i4, int i5, int i6) {
            return new Value(i2, i5, i6, i4);
        }

        static Value g(int i2, boolean z3) {
            return new Value(i2, 26, 0, z3 ? 1L : 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int h(int i2, int i4) {
            return i(this.f5678a, this.f5679b, this.f5681d, i2, i4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int i(int i2, int i4, long j4, int i5, int i6) {
            if (FlexBuffers.h(i2)) {
                return i4;
            }
            for (int i7 = 1; i7 <= 32; i7 *= 2) {
                int h4 = FlexBuffersBuilder.h((int) (((q(i5, i7) + i5) + (i6 * i7)) - j4));
                if ((1 << h4) == i7) {
                    return h4;
                }
            }
            return 3;
        }

        static Value j(int i2, float f4) {
            return new Value(i2, 3, 2, f4);
        }

        static Value k(int i2, double d4) {
            return new Value(i2, 3, 3, d4);
        }

        static Value l(int i2, int i4) {
            return new Value(i2, 1, 1, i4);
        }

        static Value m(int i2, int i4) {
            return new Value(i2, 1, 2, i4);
        }

        static Value n(int i2, long j4) {
            return new Value(i2, 1, 3, j4);
        }

        static Value o(int i2, int i4) {
            return new Value(i2, 1, 0, i4);
        }

        private static byte p(int i2, int i4) {
            return (byte) (i2 | (i4 << 2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int q(int i2, int i4) {
            return ((i2 ^ (-1)) + 1) & (i4 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte r() {
            return s(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte s(int i2) {
            return p(t(i2), this.f5678a);
        }

        private int t(int i2) {
            if (FlexBuffers.h(this.f5678a)) {
                return Math.max(this.f5679b, i2);
            }
            return this.f5679b;
        }

        static Value u(int i2, int i4) {
            return new Value(i2, 2, 1, i4);
        }

        static Value v(int i2, int i4) {
            return new Value(i2, 2, 2, i4);
        }

        static Value w(int i2, long j4) {
            return new Value(i2, 2, 3, j4);
        }

        static Value x(int i2, int i4) {
            return new Value(i2, 2, 0, i4);
        }

        Value(int i2, int i4, int i5, double d4) {
            this.f5682e = i2;
            this.f5678a = i4;
            this.f5679b = i5;
            this.f5680c = d4;
            this.f5681d = Long.MIN_VALUE;
        }
    }

    public void putInt(long j4) {
        putInt((String) null, j4);
    }

    public FlexBuffersBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, 1);
    }
}
