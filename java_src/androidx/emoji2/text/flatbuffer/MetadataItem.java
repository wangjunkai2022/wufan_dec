package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public final class MetadataItem extends Table {

    /* loaded from: classes.dex */
    public static final class Vector extends BaseVector {
        public Vector __assign(int i2, int i4, ByteBuffer byteBuffer) {
            b(i2, i4, byteBuffer);
            return this;
        }

        public MetadataItem get(int i2) {
            return get(new MetadataItem(), i2);
        }

        public MetadataItem get(MetadataItem metadataItem, int i2) {
            return metadataItem.__assign(Table.c(a(i2), this.f5619d), this.f5619d);
        }
    }

    public static void ValidateVersion() {
        Constants.FLATBUFFERS_1_12_0();
    }

    public static void addCodepoints(FlatBufferBuilder flatBufferBuilder, int i2) {
        flatBufferBuilder.addOffset(6, i2, 0);
    }

    public static void addCompatAdded(FlatBufferBuilder flatBufferBuilder, short s3) {
        flatBufferBuilder.addShort(3, s3, 0);
    }

    public static void addEmojiStyle(FlatBufferBuilder flatBufferBuilder, boolean z3) {
        flatBufferBuilder.addBoolean(1, z3, false);
    }

    public static void addHeight(FlatBufferBuilder flatBufferBuilder, short s3) {
        flatBufferBuilder.addShort(5, s3, 0);
    }

    public static void addId(FlatBufferBuilder flatBufferBuilder, int i2) {
        flatBufferBuilder.addInt(0, i2, 0);
    }

    public static void addSdkAdded(FlatBufferBuilder flatBufferBuilder, short s3) {
        flatBufferBuilder.addShort(2, s3, 0);
    }

    public static void addWidth(FlatBufferBuilder flatBufferBuilder, short s3) {
        flatBufferBuilder.addShort(4, s3, 0);
    }

    public static int createCodepointsVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addInt(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createMetadataItem(FlatBufferBuilder flatBufferBuilder, int i2, boolean z3, short s3, short s4, short s5, short s6, int i4) {
        flatBufferBuilder.startTable(7);
        addCodepoints(flatBufferBuilder, i4);
        addId(flatBufferBuilder, i2);
        addHeight(flatBufferBuilder, s6);
        addWidth(flatBufferBuilder, s5);
        addCompatAdded(flatBufferBuilder, s4);
        addSdkAdded(flatBufferBuilder, s3);
        addEmojiStyle(flatBufferBuilder, z3);
        return endMetadataItem(flatBufferBuilder);
    }

    public static int endMetadataItem(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endTable();
    }

    public static MetadataItem getRootAsMetadataItem(ByteBuffer byteBuffer) {
        return getRootAsMetadataItem(byteBuffer, new MetadataItem());
    }

    public static void startCodepointsVector(FlatBufferBuilder flatBufferBuilder, int i2) {
        flatBufferBuilder.startVector(4, i2, 4);
    }

    public static void startMetadataItem(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startTable(7);
    }

    public MetadataItem __assign(int i2, ByteBuffer byteBuffer) {
        __init(i2, byteBuffer);
        return this;
    }

    public void __init(int i2, ByteBuffer byteBuffer) {
        f(i2, byteBuffer);
    }

    public int codepoints(int i2) {
        int d4 = d(16);
        if (d4 != 0) {
            return this.f5687b.getInt(k(d4) + (i2 * 4));
        }
        return 0;
    }

    public ByteBuffer codepointsAsByteBuffer() {
        return l(16, 4);
    }

    public ByteBuffer codepointsInByteBuffer(ByteBuffer byteBuffer) {
        return m(byteBuffer, 16, 4);
    }

    public int codepointsLength() {
        int d4 = d(16);
        if (d4 != 0) {
            return n(d4);
        }
        return 0;
    }

    public IntVector codepointsVector() {
        return codepointsVector(new IntVector());
    }

    public short compatAdded() {
        int d4 = d(10);
        if (d4 != 0) {
            return this.f5687b.getShort(d4 + this.f5686a);
        }
        return (short) 0;
    }

    public boolean emojiStyle() {
        int d4 = d(6);
        return (d4 == 0 || this.f5687b.get(d4 + this.f5686a) == 0) ? false : true;
    }

    public short height() {
        int d4 = d(14);
        if (d4 != 0) {
            return this.f5687b.getShort(d4 + this.f5686a);
        }
        return (short) 0;
    }

    public int id() {
        int d4 = d(4);
        if (d4 != 0) {
            return this.f5687b.getInt(d4 + this.f5686a);
        }
        return 0;
    }

    public short sdkAdded() {
        int d4 = d(8);
        if (d4 != 0) {
            return this.f5687b.getShort(d4 + this.f5686a);
        }
        return (short) 0;
    }

    public short width() {
        int d4 = d(12);
        if (d4 != 0) {
            return this.f5687b.getShort(d4 + this.f5686a);
        }
        return (short) 0;
    }

    public static MetadataItem getRootAsMetadataItem(ByteBuffer byteBuffer, MetadataItem metadataItem) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return metadataItem.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public IntVector codepointsVector(IntVector intVector) {
        int d4 = d(16);
        if (d4 != 0) {
            return intVector.__assign(k(d4), this.f5687b);
        }
        return null;
    }
}
