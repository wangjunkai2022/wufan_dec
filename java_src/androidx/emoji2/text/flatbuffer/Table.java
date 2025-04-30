package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes.dex */
public class Table {

    /* renamed from: a  reason: collision with root package name */
    protected int f5686a;

    /* renamed from: b  reason: collision with root package name */
    protected ByteBuffer f5687b;

    /* renamed from: c  reason: collision with root package name */
    private int f5688c;

    /* renamed from: d  reason: collision with root package name */
    private int f5689d;

    /* renamed from: e  reason: collision with root package name */
    Utf8 f5690e = Utf8.getDefault();

    protected static boolean a(ByteBuffer byteBuffer, String str) {
        if (str.length() == 4) {
            for (int i2 = 0; i2 < 4; i2++) {
                if (str.charAt(i2) != ((char) byteBuffer.get(byteBuffer.position() + 4 + i2))) {
                    return false;
                }
            }
            return true;
        }
        throw new AssertionError("FlatBuffers: file identifier must be length 4");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int c(int i2, ByteBuffer byteBuffer) {
        return i2 + byteBuffer.getInt(i2);
    }

    protected static int e(int i2, int i4, ByteBuffer byteBuffer) {
        int capacity = byteBuffer.capacity() - i4;
        return byteBuffer.getShort((i2 + capacity) - byteBuffer.getInt(capacity)) + capacity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String h(int i2, ByteBuffer byteBuffer, Utf8 utf8) {
        int i4 = i2 + byteBuffer.getInt(i2);
        return utf8.decodeUtf8(byteBuffer, i4 + 4, byteBuffer.getInt(i4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Table j(Table table, int i2, ByteBuffer byteBuffer) {
        table.f(c(i2, byteBuffer), byteBuffer);
        return table;
    }

    protected static int o(int i2, int i4, ByteBuffer byteBuffer) {
        int i5 = i2 + byteBuffer.getInt(i2);
        int i6 = i4 + byteBuffer.getInt(i4);
        int i7 = byteBuffer.getInt(i5);
        int i8 = byteBuffer.getInt(i6);
        int i9 = i5 + 4;
        int i10 = i6 + 4;
        int min = Math.min(i7, i8);
        for (int i11 = 0; i11 < min; i11++) {
            int i12 = i11 + i9;
            int i13 = i11 + i10;
            if (byteBuffer.get(i12) != byteBuffer.get(i13)) {
                return byteBuffer.get(i12) - byteBuffer.get(i13);
            }
        }
        return i7 - i8;
    }

    protected static int p(int i2, byte[] bArr, ByteBuffer byteBuffer) {
        int i4 = i2 + byteBuffer.getInt(i2);
        int i5 = byteBuffer.getInt(i4);
        int length = bArr.length;
        int i6 = i4 + 4;
        int min = Math.min(i5, length);
        for (int i7 = 0; i7 < min; i7++) {
            int i8 = i7 + i6;
            if (byteBuffer.get(i8) != bArr[i7]) {
                return byteBuffer.get(i8) - bArr[i7];
            }
        }
        return i5 - length;
    }

    public void __reset() {
        f(0, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int b(int i2) {
        return i2 + this.f5687b.getInt(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int d(int i2) {
        if (i2 < this.f5689d) {
            return this.f5687b.getShort(this.f5688c + i2);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f(int i2, ByteBuffer byteBuffer) {
        this.f5687b = byteBuffer;
        if (byteBuffer != null) {
            this.f5686a = i2;
            int i4 = i2 - byteBuffer.getInt(i2);
            this.f5688c = i4;
            this.f5689d = this.f5687b.getShort(i4);
            return;
        }
        this.f5686a = 0;
        this.f5688c = 0;
        this.f5689d = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String g(int i2) {
        return h(i2, this.f5687b, this.f5690e);
    }

    public ByteBuffer getByteBuffer() {
        return this.f5687b;
    }

    protected Table i(Table table, int i2) {
        return j(table, i2, this.f5687b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int k(int i2) {
        int i4 = i2 + this.f5686a;
        return i4 + this.f5687b.getInt(i4) + 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuffer l(int i2, int i4) {
        int d4 = d(i2);
        if (d4 == 0) {
            return null;
        }
        ByteBuffer order = this.f5687b.duplicate().order(ByteOrder.LITTLE_ENDIAN);
        int k4 = k(d4);
        order.position(k4);
        order.limit(k4 + (n(d4) * i4));
        return order;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuffer m(ByteBuffer byteBuffer, int i2, int i4) {
        int d4 = d(i2);
        if (d4 == 0) {
            return null;
        }
        int k4 = k(d4);
        byteBuffer.rewind();
        byteBuffer.limit((n(d4) * i4) + k4);
        byteBuffer.position(k4);
        return byteBuffer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int n(int i2) {
        int i4 = i2 + this.f5686a;
        return this.f5687b.getInt(i4 + this.f5687b.getInt(i4));
    }

    protected int q(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r(int[] iArr, final ByteBuffer byteBuffer) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i2] = Integer.valueOf(iArr[i2]);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: androidx.emoji2.text.flatbuffer.Table.1
            @Override // java.util.Comparator
            public int compare(Integer num, Integer num2) {
                return Table.this.q(num, num2, byteBuffer);
            }
        });
        for (int i4 = 0; i4 < iArr.length; i4++) {
            iArr[i4] = numArr[i4].intValue();
        }
    }
}
