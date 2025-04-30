package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public final class MetadataList extends Table {

    /* loaded from: classes.dex */
    public static final class Vector extends BaseVector {
        public Vector __assign(int i2, int i4, ByteBuffer byteBuffer) {
            b(i2, i4, byteBuffer);
            return this;
        }

        public MetadataList get(int i2) {
            return get(new MetadataList(), i2);
        }

        public MetadataList get(MetadataList metadataList, int i2) {
            return metadataList.__assign(Table.c(a(i2), this.f5619d), this.f5619d);
        }
    }

    public static void ValidateVersion() {
        Constants.FLATBUFFERS_1_12_0();
    }

    public static void addList(FlatBufferBuilder flatBufferBuilder, int i2) {
        flatBufferBuilder.addOffset(1, i2, 0);
    }

    public static void addSourceSha(FlatBufferBuilder flatBufferBuilder, int i2) {
        flatBufferBuilder.addOffset(2, i2, 0);
    }

    public static void addVersion(FlatBufferBuilder flatBufferBuilder, int i2) {
        flatBufferBuilder.addInt(0, i2, 0);
    }

    public static int createListVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createMetadataList(FlatBufferBuilder flatBufferBuilder, int i2, int i4, int i5) {
        flatBufferBuilder.startTable(3);
        addSourceSha(flatBufferBuilder, i5);
        addList(flatBufferBuilder, i4);
        addVersion(flatBufferBuilder, i2);
        return endMetadataList(flatBufferBuilder);
    }

    public static int endMetadataList(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endTable();
    }

    public static void finishMetadataListBuffer(FlatBufferBuilder flatBufferBuilder, int i2) {
        flatBufferBuilder.finish(i2);
    }

    public static void finishSizePrefixedMetadataListBuffer(FlatBufferBuilder flatBufferBuilder, int i2) {
        flatBufferBuilder.finishSizePrefixed(i2);
    }

    public static MetadataList getRootAsMetadataList(ByteBuffer byteBuffer) {
        return getRootAsMetadataList(byteBuffer, new MetadataList());
    }

    public static void startListVector(FlatBufferBuilder flatBufferBuilder, int i2) {
        flatBufferBuilder.startVector(4, i2, 4);
    }

    public static void startMetadataList(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startTable(3);
    }

    public MetadataList __assign(int i2, ByteBuffer byteBuffer) {
        __init(i2, byteBuffer);
        return this;
    }

    public void __init(int i2, ByteBuffer byteBuffer) {
        f(i2, byteBuffer);
    }

    public MetadataItem list(int i2) {
        return list(new MetadataItem(), i2);
    }

    public int listLength() {
        int d4 = d(6);
        if (d4 != 0) {
            return n(d4);
        }
        return 0;
    }

    public MetadataItem.Vector listVector() {
        return listVector(new MetadataItem.Vector());
    }

    public String sourceSha() {
        int d4 = d(8);
        if (d4 != 0) {
            return g(d4 + this.f5686a);
        }
        return null;
    }

    public ByteBuffer sourceShaAsByteBuffer() {
        return l(8, 1);
    }

    public ByteBuffer sourceShaInByteBuffer(ByteBuffer byteBuffer) {
        return m(byteBuffer, 8, 1);
    }

    public int version() {
        int d4 = d(4);
        if (d4 != 0) {
            return this.f5687b.getInt(d4 + this.f5686a);
        }
        return 0;
    }

    public static MetadataList getRootAsMetadataList(ByteBuffer byteBuffer, MetadataList metadataList) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return metadataList.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public MetadataItem list(MetadataItem metadataItem, int i2) {
        int d4 = d(6);
        if (d4 != 0) {
            return metadataItem.__assign(b(k(d4) + (i2 * 4)), this.f5687b);
        }
        return null;
    }

    public MetadataItem.Vector listVector(MetadataItem.Vector vector) {
        int d4 = d(6);
        if (d4 != 0) {
            return vector.__assign(k(d4), 4, this.f5687b);
        }
        return null;
    }
}
