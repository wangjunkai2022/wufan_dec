package kotlin;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import io.netty.handler.codec.http2.Http2CodecUtil;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: UByte.kt */
@SinceKotlin(version = "1.5")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087@\u0018\u0000 u2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001uB\u0014\b\u0001\u0012\u0006\u0010p\u001a\u00020Gø\u0001\u0000¢\u0006\u0004\bt\u00107J\u001b\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000H\u0097\nø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\nø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0005J\u001b\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\tJ\u001b\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\fJ\u001b\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0005J\u001b\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\tJ\u001b\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\fJ\u001b\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0015J\u001b\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0005J\u001b\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\tJ\u001b\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\fJ\u001b\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0015J\u001b\u0010!\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b \u0010\u0005J\u001b\u0010!\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\nø\u0001\u0000¢\u0006\u0004\b\"\u0010\tJ\u001b\u0010!\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b#\u0010\fJ\u001b\u0010!\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b$\u0010\u0015J\u001b\u0010&\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b%\u0010\u0005J\u001b\u0010&\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\nø\u0001\u0000¢\u0006\u0004\b'\u0010\tJ\u001b\u0010&\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b(\u0010\fJ\u001b\u0010&\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b)\u0010\u0015J\u001b\u0010+\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b*\u0010\u0005J\u001b\u0010+\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\b,\u0010\tJ\u001b\u0010+\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\bø\u0001\u0000¢\u0006\u0004\b-\u0010\fJ\u001b\u0010+\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b.\u0010\u0015J\u001b\u00101\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b/\u00100J\u001b\u00101\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\b2\u00103J\u001b\u00101\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\bø\u0001\u0000¢\u0006\u0004\b4\u0010\fJ\u001b\u00101\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b5\u0010\u0015J\u0016\u00108\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b6\u00107J\u0016\u0010:\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b9\u00107J\u001b\u0010>\u001a\u00020;2\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b<\u0010=J\u001b\u0010@\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b?\u00100J\u001b\u0010B\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bA\u00100J\u001b\u0010D\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bC\u00100J\u0016\u0010F\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bE\u00107J\u0010\u0010I\u001a\u00020GH\u0087\b¢\u0006\u0004\bH\u00107J\u0010\u0010M\u001a\u00020JH\u0087\b¢\u0006\u0004\bK\u0010LJ\u0010\u0010P\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bN\u0010OJ\u0010\u0010T\u001a\u00020QH\u0087\b¢\u0006\u0004\bR\u0010SJ\u0016\u0010V\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bU\u00107J\u0016\u0010X\u001a\u00020\u0007H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bW\u0010LJ\u0016\u0010Z\u001a\u00020\nH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bY\u0010OJ\u0016\u0010\\\u001a\u00020\rH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b[\u0010SJ\u0010\u0010`\u001a\u00020]H\u0087\b¢\u0006\u0004\b^\u0010_J\u0010\u0010d\u001a\u00020aH\u0087\b¢\u0006\u0004\bb\u0010cJ\u000f\u0010h\u001a\u00020eH\u0016¢\u0006\u0004\bf\u0010gJ\u0010\u0010j\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\bi\u0010OJ\u001a\u0010o\u001a\u00020l2\b\u0010\u0002\u001a\u0004\u0018\u00010kHÖ\u0003¢\u0006\u0004\bm\u0010nR\u001c\u0010p\u001a\u00020G8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\bp\u0010q\u0012\u0004\br\u0010sø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006v"}, d2 = {"Lkotlin/UByte;", "", "other", "", "compareTo-7apg3OU", "(BB)I", "compareTo", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(BS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(BI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(BJ)I", "plus-7apg3OU", "plus", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(BJ)J", "minus-7apg3OU", "minus", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times-7apg3OU", "times", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div-7apg3OU", "div", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem-7apg3OU", "rem", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv-7apg3OU", "floorDiv", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod-7apg3OU", "(BB)B", "mod", "mod-xj2QHRw", "(BS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc-w2LRezQ", "(B)B", "inc", "dec-w2LRezQ", "dec", "Lkotlin/ranges/UIntRange;", "rangeTo-7apg3OU", "(BB)Lkotlin/ranges/UIntRange;", "rangeTo", "and-7apg3OU", "and", "or-7apg3OU", "or", "xor-7apg3OU", "xor", "inv-w2LRezQ", "inv", "", "toByte-impl", "toByte", "", "toShort-impl", "(B)S", "toShort", "toInt-impl", "(B)I", "toInt", "", "toLong-impl", "(B)J", "toLong", "toUByte-w2LRezQ", "toUByte", "toUShort-Mh2AYeg", "toUShort", "toUInt-pVg5ArA", "toUInt", "toULong-s-VKNKU", "toULong", "", "toFloat-impl", "(B)F", "toFloat", "", "toDouble-impl", "(B)D", "toDouble", "", "toString-impl", "(B)Ljava/lang/String;", "toString", "hashCode-impl", TTDownloadField.TT_HASHCODE, "", "", "equals-impl", "(BLjava/lang/Object;)Z", "equals", "data", "B", "getData$annotations", "()V", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@JvmInline
@WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
/* loaded from: classes5.dex */
public final class UByte implements Comparable<UByte> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final byte MAX_VALUE = -1;
    public static final byte MIN_VALUE = 0;
    public static final int SIZE_BITS = 8;
    public static final int SIZE_BYTES = 1;
    private final byte data;

    /* compiled from: UByte.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\b\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\f"}, d2 = {"Lkotlin/UByte$Companion;", "", "Lkotlin/UByte;", "MAX_VALUE", "B", "MIN_VALUE", "", "SIZE_BITS", "I", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @PublishedApi
    private /* synthetic */ UByte(byte b4) {
        this.data = b4;
    }

    @InlineOnly
    /* renamed from: and-7apg3OU  reason: not valid java name */
    private static final byte m35and7apg3OU(byte b4, byte b5) {
        return m42constructorimpl((byte) (b4 & b5));
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UByte m36boximpl(byte b4) {
        return new UByte(b4);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private int m37compareTo7apg3OU(byte b4) {
        return m38compareTo7apg3OU(this.data, b4);
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ  reason: not valid java name */
    private static final int m39compareToVKZWuLQ(byte b4, long j4) {
        return UnsignedKt.ulongCompare(ULong.m196constructorimpl(b4 & 255), j4);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns  reason: not valid java name */
    private static final int m40compareToWZ4Q5Ns(byte b4, int i2) {
        return UnsignedKt.uintCompare(UInt.m118constructorimpl(b4 & 255), i2);
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw  reason: not valid java name */
    private static final int m41compareToxj2QHRw(byte b4, short s3) {
        return Intrinsics.compare(b4 & 255, s3 & UShort.MAX_VALUE);
    }

    @PublishedApi
    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte m42constructorimpl(byte b4) {
        return b4;
    }

    @InlineOnly
    /* renamed from: dec-w2LRezQ  reason: not valid java name */
    private static final byte m43decw2LRezQ(byte b4) {
        return m42constructorimpl((byte) (b4 - 1));
    }

    @InlineOnly
    /* renamed from: div-7apg3OU  reason: not valid java name */
    private static final int m44div7apg3OU(byte b4, byte b5) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(b5 & 255));
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ  reason: not valid java name */
    private static final long m45divVKZWuLQ(byte b4, long j4) {
        return UnsignedKt.m373ulongDivideeb3DHEI(ULong.m196constructorimpl(b4 & 255), j4);
    }

    @InlineOnly
    /* renamed from: div-WZ4Q5Ns  reason: not valid java name */
    private static final int m46divWZ4Q5Ns(byte b4, int i2) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(b4 & 255), i2);
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw  reason: not valid java name */
    private static final int m47divxj2QHRw(byte b4, short s3) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m48equalsimpl(byte b4, Object obj) {
        return (obj instanceof UByte) && b4 == ((UByte) obj).m91unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m49equalsimpl0(byte b4, byte b5) {
        return b4 == b5;
    }

    @InlineOnly
    /* renamed from: floorDiv-7apg3OU  reason: not valid java name */
    private static final int m50floorDiv7apg3OU(byte b4, byte b5) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(b5 & 255));
    }

    @InlineOnly
    /* renamed from: floorDiv-VKZWuLQ  reason: not valid java name */
    private static final long m51floorDivVKZWuLQ(byte b4, long j4) {
        return UnsignedKt.m373ulongDivideeb3DHEI(ULong.m196constructorimpl(b4 & 255), j4);
    }

    @InlineOnly
    /* renamed from: floorDiv-WZ4Q5Ns  reason: not valid java name */
    private static final int m52floorDivWZ4Q5Ns(byte b4, int i2) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(b4 & 255), i2);
    }

    @InlineOnly
    /* renamed from: floorDiv-xj2QHRw  reason: not valid java name */
    private static final int m53floorDivxj2QHRw(byte b4, short s3) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m54hashCodeimpl(byte b4) {
        return b4;
    }

    @InlineOnly
    /* renamed from: inc-w2LRezQ  reason: not valid java name */
    private static final byte m55incw2LRezQ(byte b4) {
        return m42constructorimpl((byte) (b4 + 1));
    }

    @InlineOnly
    /* renamed from: inv-w2LRezQ  reason: not valid java name */
    private static final byte m56invw2LRezQ(byte b4) {
        return m42constructorimpl((byte) (b4 ^ (-1)));
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU  reason: not valid java name */
    private static final int m57minus7apg3OU(byte b4, byte b5) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(b4 & 255) - UInt.m118constructorimpl(b5 & 255));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ  reason: not valid java name */
    private static final long m58minusVKZWuLQ(byte b4, long j4) {
        return ULong.m196constructorimpl(ULong.m196constructorimpl(b4 & 255) - j4);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns  reason: not valid java name */
    private static final int m59minusWZ4Q5Ns(byte b4, int i2) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(b4 & 255) - i2);
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw  reason: not valid java name */
    private static final int m60minusxj2QHRw(byte b4, short s3) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(b4 & 255) - UInt.m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: mod-7apg3OU  reason: not valid java name */
    private static final byte m61mod7apg3OU(byte b4, byte b5) {
        return m42constructorimpl((byte) UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(b5 & 255)));
    }

    @InlineOnly
    /* renamed from: mod-VKZWuLQ  reason: not valid java name */
    private static final long m62modVKZWuLQ(byte b4, long j4) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(ULong.m196constructorimpl(b4 & 255), j4);
    }

    @InlineOnly
    /* renamed from: mod-WZ4Q5Ns  reason: not valid java name */
    private static final int m63modWZ4Q5Ns(byte b4, int i2) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(b4 & 255), i2);
    }

    @InlineOnly
    /* renamed from: mod-xj2QHRw  reason: not valid java name */
    private static final short m64modxj2QHRw(byte b4, short s3) {
        return UShort.m302constructorimpl((short) UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(s3 & UShort.MAX_VALUE)));
    }

    @InlineOnly
    /* renamed from: or-7apg3OU  reason: not valid java name */
    private static final byte m65or7apg3OU(byte b4, byte b5) {
        return m42constructorimpl((byte) (b4 | b5));
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU  reason: not valid java name */
    private static final int m66plus7apg3OU(byte b4, byte b5) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(b4 & 255) + UInt.m118constructorimpl(b5 & 255));
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ  reason: not valid java name */
    private static final long m67plusVKZWuLQ(byte b4, long j4) {
        return ULong.m196constructorimpl(ULong.m196constructorimpl(b4 & 255) + j4);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns  reason: not valid java name */
    private static final int m68plusWZ4Q5Ns(byte b4, int i2) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(b4 & 255) + i2);
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw  reason: not valid java name */
    private static final int m69plusxj2QHRw(byte b4, short s3) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(b4 & 255) + UInt.m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: rangeTo-7apg3OU  reason: not valid java name */
    private static final UIntRange m70rangeTo7apg3OU(byte b4, byte b5) {
        return new UIntRange(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(b5 & 255), null);
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU  reason: not valid java name */
    private static final int m71rem7apg3OU(byte b4, byte b5) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(b5 & 255));
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ  reason: not valid java name */
    private static final long m72remVKZWuLQ(byte b4, long j4) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(ULong.m196constructorimpl(b4 & 255), j4);
    }

    @InlineOnly
    /* renamed from: rem-WZ4Q5Ns  reason: not valid java name */
    private static final int m73remWZ4Q5Ns(byte b4, int i2) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(b4 & 255), i2);
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw  reason: not valid java name */
    private static final int m74remxj2QHRw(byte b4, short s3) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: times-7apg3OU  reason: not valid java name */
    private static final int m75times7apg3OU(byte b4, byte b5) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(b4 & 255) * UInt.m118constructorimpl(b5 & 255));
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ  reason: not valid java name */
    private static final long m76timesVKZWuLQ(byte b4, long j4) {
        return ULong.m196constructorimpl(ULong.m196constructorimpl(b4 & 255) * j4);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns  reason: not valid java name */
    private static final int m77timesWZ4Q5Ns(byte b4, int i2) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(b4 & 255) * i2);
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw  reason: not valid java name */
    private static final int m78timesxj2QHRw(byte b4, short s3) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(b4 & 255) * UInt.m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: toByte-impl  reason: not valid java name */
    private static final byte m79toByteimpl(byte b4) {
        return b4;
    }

    @InlineOnly
    /* renamed from: toDouble-impl  reason: not valid java name */
    private static final double m80toDoubleimpl(byte b4) {
        return b4 & 255;
    }

    @InlineOnly
    /* renamed from: toFloat-impl  reason: not valid java name */
    private static final float m81toFloatimpl(byte b4) {
        return b4 & 255;
    }

    @InlineOnly
    /* renamed from: toInt-impl  reason: not valid java name */
    private static final int m82toIntimpl(byte b4) {
        return b4 & 255;
    }

    @InlineOnly
    /* renamed from: toLong-impl  reason: not valid java name */
    private static final long m83toLongimpl(byte b4) {
        return b4 & 255;
    }

    @InlineOnly
    /* renamed from: toShort-impl  reason: not valid java name */
    private static final short m84toShortimpl(byte b4) {
        return (short) (b4 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m85toStringimpl(byte b4) {
        return String.valueOf(b4 & 255);
    }

    @InlineOnly
    /* renamed from: toUByte-w2LRezQ  reason: not valid java name */
    private static final byte m86toUBytew2LRezQ(byte b4) {
        return b4;
    }

    @InlineOnly
    /* renamed from: toUInt-pVg5ArA  reason: not valid java name */
    private static final int m87toUIntpVg5ArA(byte b4) {
        return UInt.m118constructorimpl(b4 & 255);
    }

    @InlineOnly
    /* renamed from: toULong-s-VKNKU  reason: not valid java name */
    private static final long m88toULongsVKNKU(byte b4) {
        return ULong.m196constructorimpl(b4 & 255);
    }

    @InlineOnly
    /* renamed from: toUShort-Mh2AYeg  reason: not valid java name */
    private static final short m89toUShortMh2AYeg(byte b4) {
        return UShort.m302constructorimpl((short) (b4 & Http2CodecUtil.MAX_UNSIGNED_BYTE));
    }

    @InlineOnly
    /* renamed from: xor-7apg3OU  reason: not valid java name */
    private static final byte m90xor7apg3OU(byte b4, byte b5) {
        return m42constructorimpl((byte) (b4 ^ b5));
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return m37compareTo7apg3OU(uByte.m91unboximpl());
    }

    public boolean equals(Object obj) {
        return m48equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m54hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m85toStringimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ byte m91unboximpl() {
        return this.data;
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private static int m38compareTo7apg3OU(byte b4, byte b5) {
        return Intrinsics.compare(b4 & 255, b5 & 255);
    }
}
