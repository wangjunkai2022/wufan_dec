package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class UnionVector extends BaseVector {
    public UnionVector __assign(int i2, int i4, ByteBuffer byteBuffer) {
        b(i2, i4, byteBuffer);
        return this;
    }

    public Table get(Table table, int i2) {
        return Table.j(table, a(i2), this.f5619d);
    }
}
