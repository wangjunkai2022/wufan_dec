package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
/* compiled from: UNumbers.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a\u0017\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0017\u0010\u0006\u001a\u00020\u0001*\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0003\u001a\u0017\u0010\b\u001a\u00020\u0001*\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\u0003\u001a\u0017\u0010\n\u001a\u00020\u0000*\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0003\u001a\u0017\u0010\f\u001a\u00020\u0000*\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u0003\u001a\u001f\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\r\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001f\u0010\u0012\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\r\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u000f\u001a\u0017\u0010\u0004\u001a\u00020\u0001*\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0017\u0010\u0006\u001a\u00020\u0001*\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0015\u001a\u0017\u0010\b\u001a\u00020\u0001*\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0015\u001a\u0017\u0010\n\u001a\u00020\u0013*\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0017\u0010\f\u001a\u00020\u0013*\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0019\u001a\u001f\u0010\u0010\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\r\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001f\u0010\u0012\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\r\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001c\u001a\u0017\u0010\u0004\u001a\u00020\u0001*\u00020\u001eH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u0017\u0010\u0006\u001a\u00020\u0001*\u00020\u001eH\u0087\bø\u0001\u0000¢\u0006\u0004\b!\u0010 \u001a\u0017\u0010\b\u001a\u00020\u0001*\u00020\u001eH\u0087\bø\u0001\u0000¢\u0006\u0004\b\"\u0010 \u001a\u0017\u0010\n\u001a\u00020\u001e*\u00020\u001eH\u0087\bø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\u0017\u0010\f\u001a\u00020\u001e*\u00020\u001eH\u0087\bø\u0001\u0000¢\u0006\u0004\b%\u0010$\u001a\u001f\u0010\u0010\u001a\u00020\u001e*\u00020\u001e2\u0006\u0010\r\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001a\u001f\u0010\u0012\u001a\u00020\u001e*\u00020\u001e2\u0006\u0010\r\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b(\u0010'\u001a\u0017\u0010\u0004\u001a\u00020\u0001*\u00020)H\u0087\bø\u0001\u0000¢\u0006\u0004\b*\u0010+\u001a\u0017\u0010\u0006\u001a\u00020\u0001*\u00020)H\u0087\bø\u0001\u0000¢\u0006\u0004\b,\u0010+\u001a\u0017\u0010\b\u001a\u00020\u0001*\u00020)H\u0087\bø\u0001\u0000¢\u0006\u0004\b-\u0010+\u001a\u0017\u0010\n\u001a\u00020)*\u00020)H\u0087\bø\u0001\u0000¢\u0006\u0004\b.\u0010/\u001a\u0017\u0010\f\u001a\u00020)*\u00020)H\u0087\bø\u0001\u0000¢\u0006\u0004\b0\u0010/\u001a\u001f\u0010\u0010\u001a\u00020)*\u00020)2\u0006\u0010\r\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b1\u00102\u001a\u001f\u0010\u0012\u001a\u00020)*\u00020)2\u0006\u0010\r\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b3\u00102\u0082\u0002\u0004\n\u0002\b\u0019¨\u00064"}, d2 = {"Lkotlin/UInt;", "", "countOneBits-WZ4Q5Ns", "(I)I", "countOneBits", "countLeadingZeroBits-WZ4Q5Ns", "countLeadingZeroBits", "countTrailingZeroBits-WZ4Q5Ns", "countTrailingZeroBits", "takeHighestOneBit-WZ4Q5Ns", "takeHighestOneBit", "takeLowestOneBit-WZ4Q5Ns", "takeLowestOneBit", "bitCount", "rotateLeft-V7xB4Y4", "(II)I", "rotateLeft", "rotateRight-V7xB4Y4", "rotateRight", "Lkotlin/ULong;", "countOneBits-VKZWuLQ", "(J)I", "countLeadingZeroBits-VKZWuLQ", "countTrailingZeroBits-VKZWuLQ", "takeHighestOneBit-VKZWuLQ", "(J)J", "takeLowestOneBit-VKZWuLQ", "rotateLeft-JSWoG40", "(JI)J", "rotateRight-JSWoG40", "Lkotlin/UByte;", "countOneBits-7apg3OU", "(B)I", "countLeadingZeroBits-7apg3OU", "countTrailingZeroBits-7apg3OU", "takeHighestOneBit-7apg3OU", "(B)B", "takeLowestOneBit-7apg3OU", "rotateLeft-LxnNnR4", "(BI)B", "rotateRight-LxnNnR4", "Lkotlin/UShort;", "countOneBits-xj2QHRw", "(S)I", "countLeadingZeroBits-xj2QHRw", "countTrailingZeroBits-xj2QHRw", "takeHighestOneBit-xj2QHRw", "(S)S", "takeLowestOneBit-xj2QHRw", "rotateLeft-olVBNx4", "(SI)S", "rotateRight-olVBNx4", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
@JvmName(name = "UNumbersKt")
/* loaded from: classes5.dex */
public final class UNumbersKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countLeadingZeroBits-7apg3OU  reason: not valid java name */
    private static final int m267countLeadingZeroBits7apg3OU(byte b4) {
        return Integer.numberOfLeadingZeros(b4 & 255) - 24;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countLeadingZeroBits-VKZWuLQ  reason: not valid java name */
    private static final int m268countLeadingZeroBitsVKZWuLQ(long j4) {
        return Long.numberOfLeadingZeros(j4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countLeadingZeroBits-WZ4Q5Ns  reason: not valid java name */
    private static final int m269countLeadingZeroBitsWZ4Q5Ns(int i2) {
        return Integer.numberOfLeadingZeros(i2);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countLeadingZeroBits-xj2QHRw  reason: not valid java name */
    private static final int m270countLeadingZeroBitsxj2QHRw(short s3) {
        return Integer.numberOfLeadingZeros(s3 & UShort.MAX_VALUE) - 16;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countOneBits-7apg3OU  reason: not valid java name */
    private static final int m271countOneBits7apg3OU(byte b4) {
        return Integer.bitCount(UInt.m118constructorimpl(b4 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countOneBits-VKZWuLQ  reason: not valid java name */
    private static final int m272countOneBitsVKZWuLQ(long j4) {
        return Long.bitCount(j4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countOneBits-WZ4Q5Ns  reason: not valid java name */
    private static final int m273countOneBitsWZ4Q5Ns(int i2) {
        return Integer.bitCount(i2);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countOneBits-xj2QHRw  reason: not valid java name */
    private static final int m274countOneBitsxj2QHRw(short s3) {
        return Integer.bitCount(UInt.m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countTrailingZeroBits-7apg3OU  reason: not valid java name */
    private static final int m275countTrailingZeroBits7apg3OU(byte b4) {
        return Integer.numberOfTrailingZeros(b4 | 256);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countTrailingZeroBits-VKZWuLQ  reason: not valid java name */
    private static final int m276countTrailingZeroBitsVKZWuLQ(long j4) {
        return Long.numberOfTrailingZeros(j4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countTrailingZeroBits-WZ4Q5Ns  reason: not valid java name */
    private static final int m277countTrailingZeroBitsWZ4Q5Ns(int i2) {
        return Integer.numberOfTrailingZeros(i2);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: countTrailingZeroBits-xj2QHRw  reason: not valid java name */
    private static final int m278countTrailingZeroBitsxj2QHRw(short s3) {
        return Integer.numberOfTrailingZeros(s3 | 65536);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: rotateLeft-JSWoG40  reason: not valid java name */
    private static final long m279rotateLeftJSWoG40(long j4, int i2) {
        return ULong.m196constructorimpl(Long.rotateLeft(j4, i2));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: rotateLeft-LxnNnR4  reason: not valid java name */
    private static final byte m280rotateLeftLxnNnR4(byte b4, int i2) {
        return UByte.m42constructorimpl(NumbersKt__NumbersKt.rotateLeft(b4, i2));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: rotateLeft-V7xB4Y4  reason: not valid java name */
    private static final int m281rotateLeftV7xB4Y4(int i2, int i4) {
        return UInt.m118constructorimpl(Integer.rotateLeft(i2, i4));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: rotateLeft-olVBNx4  reason: not valid java name */
    private static final short m282rotateLeftolVBNx4(short s3, int i2) {
        return UShort.m302constructorimpl(NumbersKt__NumbersKt.rotateLeft(s3, i2));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: rotateRight-JSWoG40  reason: not valid java name */
    private static final long m283rotateRightJSWoG40(long j4, int i2) {
        return ULong.m196constructorimpl(Long.rotateRight(j4, i2));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: rotateRight-LxnNnR4  reason: not valid java name */
    private static final byte m284rotateRightLxnNnR4(byte b4, int i2) {
        return UByte.m42constructorimpl(NumbersKt__NumbersKt.rotateRight(b4, i2));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: rotateRight-V7xB4Y4  reason: not valid java name */
    private static final int m285rotateRightV7xB4Y4(int i2, int i4) {
        return UInt.m118constructorimpl(Integer.rotateRight(i2, i4));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: rotateRight-olVBNx4  reason: not valid java name */
    private static final short m286rotateRightolVBNx4(short s3, int i2) {
        return UShort.m302constructorimpl(NumbersKt__NumbersKt.rotateRight(s3, i2));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: takeHighestOneBit-7apg3OU  reason: not valid java name */
    private static final byte m287takeHighestOneBit7apg3OU(byte b4) {
        return UByte.m42constructorimpl((byte) Integer.highestOneBit(b4 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: takeHighestOneBit-VKZWuLQ  reason: not valid java name */
    private static final long m288takeHighestOneBitVKZWuLQ(long j4) {
        return ULong.m196constructorimpl(Long.highestOneBit(j4));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: takeHighestOneBit-WZ4Q5Ns  reason: not valid java name */
    private static final int m289takeHighestOneBitWZ4Q5Ns(int i2) {
        return UInt.m118constructorimpl(Integer.highestOneBit(i2));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: takeHighestOneBit-xj2QHRw  reason: not valid java name */
    private static final short m290takeHighestOneBitxj2QHRw(short s3) {
        return UShort.m302constructorimpl((short) Integer.highestOneBit(s3 & UShort.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: takeLowestOneBit-7apg3OU  reason: not valid java name */
    private static final byte m291takeLowestOneBit7apg3OU(byte b4) {
        return UByte.m42constructorimpl((byte) Integer.lowestOneBit(b4 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: takeLowestOneBit-VKZWuLQ  reason: not valid java name */
    private static final long m292takeLowestOneBitVKZWuLQ(long j4) {
        return ULong.m196constructorimpl(Long.lowestOneBit(j4));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: takeLowestOneBit-WZ4Q5Ns  reason: not valid java name */
    private static final int m293takeLowestOneBitWZ4Q5Ns(int i2) {
        return UInt.m118constructorimpl(Integer.lowestOneBit(i2));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class, ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: takeLowestOneBit-xj2QHRw  reason: not valid java name */
    private static final short m294takeLowestOneBitxj2QHRw(short s3) {
        return UShort.m302constructorimpl((short) Integer.lowestOneBit(s3 & UShort.MAX_VALUE));
    }
}
