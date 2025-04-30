package kotlin;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.UIntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: UInt.kt */
@SinceKotlin(version = "1.5")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087@\u0018\u0000 z2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001zB\u0014\b\u0001\u0012\u0006\u0010u\u001a\u00020\u0004ø\u0001\u0000¢\u0006\u0004\by\u00107J\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0000H\u0097\nø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0006J\u001b\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\nJ\u001b\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\fJ\u001b\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0006J\u001b\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\nJ\u001b\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\fJ\u001b\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0015J\u001b\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0006J\u001b\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\nJ\u001b\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\fJ\u001b\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0015J\u001b\u0010!\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b \u0010\u0006J\u001b\u0010!\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\"\u0010\nJ\u001b\u0010!\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b#\u0010\fJ\u001b\u0010!\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b$\u0010\u0015J\u001b\u0010&\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b%\u0010\u0006J\u001b\u0010&\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b'\u0010\nJ\u001b\u0010&\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b(\u0010\fJ\u001b\u0010&\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b)\u0010\u0015J\u001b\u0010+\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b*\u0010\u0006J\u001b\u0010+\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\bø\u0001\u0000¢\u0006\u0004\b,\u0010\nJ\u001b\u0010+\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b-\u0010\fJ\u001b\u0010+\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b.\u0010\u0015J\u001b\u00101\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b/\u00100J\u001b\u00101\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\bH\u0087\bø\u0001\u0000¢\u0006\u0004\b2\u00103J\u001b\u00101\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b4\u0010\fJ\u001b\u00101\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b5\u0010\u0015J\u0016\u00108\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b6\u00107J\u0016\u0010:\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b9\u00107J\u001b\u0010>\u001a\u00020;2\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b<\u0010=J\u001e\u0010A\u001a\u00020\u00002\u0006\u0010?\u001a\u00020\u0004H\u0087\fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b@\u0010\fJ\u001e\u0010C\u001a\u00020\u00002\u0006\u0010?\u001a\u00020\u0004H\u0087\fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bB\u0010\fJ\u001b\u0010E\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bD\u0010\fJ\u001b\u0010G\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bF\u0010\fJ\u001b\u0010I\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bH\u0010\fJ\u0016\u0010K\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bJ\u00107J\u0010\u0010O\u001a\u00020LH\u0087\b¢\u0006\u0004\bM\u0010NJ\u0010\u0010S\u001a\u00020PH\u0087\b¢\u0006\u0004\bQ\u0010RJ\u0010\u0010U\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\bT\u00107J\u0010\u0010Y\u001a\u00020VH\u0087\b¢\u0006\u0004\bW\u0010XJ\u0016\u0010[\u001a\u00020\u0002H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bZ\u0010NJ\u0016\u0010]\u001a\u00020\bH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\\\u0010RJ\u0016\u0010_\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b^\u00107J\u0016\u0010a\u001a\u00020\rH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b`\u0010XJ\u0010\u0010e\u001a\u00020bH\u0087\b¢\u0006\u0004\bc\u0010dJ\u0010\u0010i\u001a\u00020fH\u0087\b¢\u0006\u0004\bg\u0010hJ\u000f\u0010m\u001a\u00020jH\u0016¢\u0006\u0004\bk\u0010lJ\u0010\u0010o\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\bn\u00107J\u001a\u0010t\u001a\u00020q2\b\u0010\u0003\u001a\u0004\u0018\u00010pHÖ\u0003¢\u0006\u0004\br\u0010sR\u001c\u0010u\u001a\u00020\u00048\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\bu\u0010v\u0012\u0004\bw\u0010xø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006{"}, d2 = {"Lkotlin/UInt;", "", "Lkotlin/UByte;", "other", "", "compareTo-7apg3OU", "(IB)I", "compareTo", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "compareTo-WZ4Q5Ns", "(II)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "plus-7apg3OU", "plus", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(IJ)J", "minus-7apg3OU", "minus", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times-7apg3OU", "times", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div-7apg3OU", "div", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem-7apg3OU", "rem", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv-7apg3OU", "floorDiv", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod-7apg3OU", "(IB)B", "mod", "mod-xj2QHRw", "(IS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc-pVg5ArA", "(I)I", "inc", "dec-pVg5ArA", "dec", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rangeTo", "bitCount", "shl-pVg5ArA", "shl", "shr-pVg5ArA", "shr", "and-WZ4Q5Ns", "and", "or-WZ4Q5Ns", "or", "xor-WZ4Q5Ns", "xor", "inv-pVg5ArA", "inv", "", "toByte-impl", "(I)B", "toByte", "", "toShort-impl", "(I)S", "toShort", "toInt-impl", "toInt", "", "toLong-impl", "(I)J", "toLong", "toUByte-w2LRezQ", "toUByte", "toUShort-Mh2AYeg", "toUShort", "toUInt-pVg5ArA", "toUInt", "toULong-s-VKNKU", "toULong", "", "toFloat-impl", "(I)F", "toFloat", "", "toDouble-impl", "(I)D", "toDouble", "", "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", TTDownloadField.TT_HASHCODE, "", "", "equals-impl", "(ILjava/lang/Object;)Z", "equals", "data", "I", "getData$annotations", "()V", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@JvmInline
@WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
/* loaded from: classes.dex */
public final class UInt implements Comparable<UInt> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    /* compiled from: UInt.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u000b"}, d2 = {"Lkotlin/UInt$Companion;", "", "Lkotlin/UInt;", "MAX_VALUE", "I", "MIN_VALUE", "", "SIZE_BITS", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @PublishedApi
    private /* synthetic */ UInt(int i2) {
        this.data = i2;
    }

    @InlineOnly
    /* renamed from: and-WZ4Q5Ns  reason: not valid java name */
    private static final int m111andWZ4Q5Ns(int i2, int i4) {
        return m118constructorimpl(i2 & i4);
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UInt m112boximpl(int i2) {
        return new UInt(i2);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private static final int m113compareTo7apg3OU(int i2, byte b4) {
        return UnsignedKt.uintCompare(i2, m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ  reason: not valid java name */
    private static final int m114compareToVKZWuLQ(int i2, long j4) {
        return UnsignedKt.ulongCompare(ULong.m196constructorimpl(i2 & 4294967295L), j4);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns  reason: not valid java name */
    private int m115compareToWZ4Q5Ns(int i2) {
        return m116compareToWZ4Q5Ns(this.data, i2);
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw  reason: not valid java name */
    private static final int m117compareToxj2QHRw(int i2, short s3) {
        return UnsignedKt.uintCompare(i2, m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @PublishedApi
    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m118constructorimpl(int i2) {
        return i2;
    }

    @InlineOnly
    /* renamed from: dec-pVg5ArA  reason: not valid java name */
    private static final int m119decpVg5ArA(int i2) {
        return m118constructorimpl(i2 - 1);
    }

    @InlineOnly
    /* renamed from: div-7apg3OU  reason: not valid java name */
    private static final int m120div7apg3OU(int i2, byte b4) {
        return UnsignedKt.m371uintDivideJ1ME1BU(i2, m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ  reason: not valid java name */
    private static final long m121divVKZWuLQ(int i2, long j4) {
        return UnsignedKt.m373ulongDivideeb3DHEI(ULong.m196constructorimpl(i2 & 4294967295L), j4);
    }

    @InlineOnly
    /* renamed from: div-WZ4Q5Ns  reason: not valid java name */
    private static final int m122divWZ4Q5Ns(int i2, int i4) {
        return UnsignedKt.m371uintDivideJ1ME1BU(i2, i4);
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw  reason: not valid java name */
    private static final int m123divxj2QHRw(int i2, short s3) {
        return UnsignedKt.m371uintDivideJ1ME1BU(i2, m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m124equalsimpl(int i2, Object obj) {
        return (obj instanceof UInt) && i2 == ((UInt) obj).m169unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m125equalsimpl0(int i2, int i4) {
        return i2 == i4;
    }

    @InlineOnly
    /* renamed from: floorDiv-7apg3OU  reason: not valid java name */
    private static final int m126floorDiv7apg3OU(int i2, byte b4) {
        return UnsignedKt.m371uintDivideJ1ME1BU(i2, m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: floorDiv-VKZWuLQ  reason: not valid java name */
    private static final long m127floorDivVKZWuLQ(int i2, long j4) {
        return UnsignedKt.m373ulongDivideeb3DHEI(ULong.m196constructorimpl(i2 & 4294967295L), j4);
    }

    @InlineOnly
    /* renamed from: floorDiv-WZ4Q5Ns  reason: not valid java name */
    private static final int m128floorDivWZ4Q5Ns(int i2, int i4) {
        return UnsignedKt.m371uintDivideJ1ME1BU(i2, i4);
    }

    @InlineOnly
    /* renamed from: floorDiv-xj2QHRw  reason: not valid java name */
    private static final int m129floorDivxj2QHRw(int i2, short s3) {
        return UnsignedKt.m371uintDivideJ1ME1BU(i2, m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m130hashCodeimpl(int i2) {
        return i2;
    }

    @InlineOnly
    /* renamed from: inc-pVg5ArA  reason: not valid java name */
    private static final int m131incpVg5ArA(int i2) {
        return m118constructorimpl(i2 + 1);
    }

    @InlineOnly
    /* renamed from: inv-pVg5ArA  reason: not valid java name */
    private static final int m132invpVg5ArA(int i2) {
        return m118constructorimpl(i2 ^ (-1));
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU  reason: not valid java name */
    private static final int m133minus7apg3OU(int i2, byte b4) {
        return m118constructorimpl(i2 - m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ  reason: not valid java name */
    private static final long m134minusVKZWuLQ(int i2, long j4) {
        return ULong.m196constructorimpl(ULong.m196constructorimpl(i2 & 4294967295L) - j4);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns  reason: not valid java name */
    private static final int m135minusWZ4Q5Ns(int i2, int i4) {
        return m118constructorimpl(i2 - i4);
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw  reason: not valid java name */
    private static final int m136minusxj2QHRw(int i2, short s3) {
        return m118constructorimpl(i2 - m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: mod-7apg3OU  reason: not valid java name */
    private static final byte m137mod7apg3OU(int i2, byte b4) {
        return UByte.m42constructorimpl((byte) UnsignedKt.m372uintRemainderJ1ME1BU(i2, m118constructorimpl(b4 & 255)));
    }

    @InlineOnly
    /* renamed from: mod-VKZWuLQ  reason: not valid java name */
    private static final long m138modVKZWuLQ(int i2, long j4) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(ULong.m196constructorimpl(i2 & 4294967295L), j4);
    }

    @InlineOnly
    /* renamed from: mod-WZ4Q5Ns  reason: not valid java name */
    private static final int m139modWZ4Q5Ns(int i2, int i4) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(i2, i4);
    }

    @InlineOnly
    /* renamed from: mod-xj2QHRw  reason: not valid java name */
    private static final short m140modxj2QHRw(int i2, short s3) {
        return UShort.m302constructorimpl((short) UnsignedKt.m372uintRemainderJ1ME1BU(i2, m118constructorimpl(s3 & UShort.MAX_VALUE)));
    }

    @InlineOnly
    /* renamed from: or-WZ4Q5Ns  reason: not valid java name */
    private static final int m141orWZ4Q5Ns(int i2, int i4) {
        return m118constructorimpl(i2 | i4);
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU  reason: not valid java name */
    private static final int m142plus7apg3OU(int i2, byte b4) {
        return m118constructorimpl(i2 + m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ  reason: not valid java name */
    private static final long m143plusVKZWuLQ(int i2, long j4) {
        return ULong.m196constructorimpl(ULong.m196constructorimpl(i2 & 4294967295L) + j4);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns  reason: not valid java name */
    private static final int m144plusWZ4Q5Ns(int i2, int i4) {
        return m118constructorimpl(i2 + i4);
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw  reason: not valid java name */
    private static final int m145plusxj2QHRw(int i2, short s3) {
        return m118constructorimpl(i2 + m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: rangeTo-WZ4Q5Ns  reason: not valid java name */
    private static final UIntRange m146rangeToWZ4Q5Ns(int i2, int i4) {
        return new UIntRange(i2, i4, null);
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU  reason: not valid java name */
    private static final int m147rem7apg3OU(int i2, byte b4) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(i2, m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ  reason: not valid java name */
    private static final long m148remVKZWuLQ(int i2, long j4) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(ULong.m196constructorimpl(i2 & 4294967295L), j4);
    }

    @InlineOnly
    /* renamed from: rem-WZ4Q5Ns  reason: not valid java name */
    private static final int m149remWZ4Q5Ns(int i2, int i4) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(i2, i4);
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw  reason: not valid java name */
    private static final int m150remxj2QHRw(int i2, short s3) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(i2, m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: shl-pVg5ArA  reason: not valid java name */
    private static final int m151shlpVg5ArA(int i2, int i4) {
        return m118constructorimpl(i2 << i4);
    }

    @InlineOnly
    /* renamed from: shr-pVg5ArA  reason: not valid java name */
    private static final int m152shrpVg5ArA(int i2, int i4) {
        return m118constructorimpl(i2 >>> i4);
    }

    @InlineOnly
    /* renamed from: times-7apg3OU  reason: not valid java name */
    private static final int m153times7apg3OU(int i2, byte b4) {
        return m118constructorimpl(i2 * m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ  reason: not valid java name */
    private static final long m154timesVKZWuLQ(int i2, long j4) {
        return ULong.m196constructorimpl(ULong.m196constructorimpl(i2 & 4294967295L) * j4);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns  reason: not valid java name */
    private static final int m155timesWZ4Q5Ns(int i2, int i4) {
        return m118constructorimpl(i2 * i4);
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw  reason: not valid java name */
    private static final int m156timesxj2QHRw(int i2, short s3) {
        return m118constructorimpl(i2 * m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: toByte-impl  reason: not valid java name */
    private static final byte m157toByteimpl(int i2) {
        return (byte) i2;
    }

    @InlineOnly
    /* renamed from: toDouble-impl  reason: not valid java name */
    private static final double m158toDoubleimpl(int i2) {
        return UnsignedKt.uintToDouble(i2);
    }

    @InlineOnly
    /* renamed from: toFloat-impl  reason: not valid java name */
    private static final float m159toFloatimpl(int i2) {
        return (float) UnsignedKt.uintToDouble(i2);
    }

    @InlineOnly
    /* renamed from: toInt-impl  reason: not valid java name */
    private static final int m160toIntimpl(int i2) {
        return i2;
    }

    @InlineOnly
    /* renamed from: toLong-impl  reason: not valid java name */
    private static final long m161toLongimpl(int i2) {
        return i2 & 4294967295L;
    }

    @InlineOnly
    /* renamed from: toShort-impl  reason: not valid java name */
    private static final short m162toShortimpl(int i2) {
        return (short) i2;
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m163toStringimpl(int i2) {
        return String.valueOf(i2 & 4294967295L);
    }

    @InlineOnly
    /* renamed from: toUByte-w2LRezQ  reason: not valid java name */
    private static final byte m164toUBytew2LRezQ(int i2) {
        return UByte.m42constructorimpl((byte) i2);
    }

    @InlineOnly
    /* renamed from: toUInt-pVg5ArA  reason: not valid java name */
    private static final int m165toUIntpVg5ArA(int i2) {
        return i2;
    }

    @InlineOnly
    /* renamed from: toULong-s-VKNKU  reason: not valid java name */
    private static final long m166toULongsVKNKU(int i2) {
        return ULong.m196constructorimpl(i2 & 4294967295L);
    }

    @InlineOnly
    /* renamed from: toUShort-Mh2AYeg  reason: not valid java name */
    private static final short m167toUShortMh2AYeg(int i2) {
        return UShort.m302constructorimpl((short) i2);
    }

    @InlineOnly
    /* renamed from: xor-WZ4Q5Ns  reason: not valid java name */
    private static final int m168xorWZ4Q5Ns(int i2, int i4) {
        return m118constructorimpl(i2 ^ i4);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return m115compareToWZ4Q5Ns(uInt.m169unboximpl());
    }

    public boolean equals(Object obj) {
        return m124equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m130hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m163toStringimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m169unboximpl() {
        return this.data;
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns  reason: not valid java name */
    private static int m116compareToWZ4Q5Ns(int i2, int i4) {
        return UnsignedKt.uintCompare(i2, i4);
    }
}
