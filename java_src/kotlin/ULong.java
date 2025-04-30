package kotlin;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.ULongRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: ULong.kt */
@SinceKotlin(version = "1.5")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087@\u0018\u0000 }2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001}B\u0014\b\u0001\u0012\u0006\u0010x\u001a\u00020Zø\u0001\u0000¢\u0006\u0004\b|\u0010:J\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0000H\u0097\nø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0011J\u001b\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0014J\u001b\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u0016J\u001b\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u0018J\u001b\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0011J\u001b\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b \u0010\u0014J\u001b\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\nø\u0001\u0000¢\u0006\u0004\b!\u0010\u0016J\u001b\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\"\u0010\u0018J\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b#\u0010\u0011J\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b%\u0010\u0014J\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\nø\u0001\u0000¢\u0006\u0004\b&\u0010\u0016J\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b'\u0010\u0018J\u001b\u0010)\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b(\u0010\u0011J\u001b\u0010)\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\nø\u0001\u0000¢\u0006\u0004\b*\u0010\u0014J\u001b\u0010)\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\nø\u0001\u0000¢\u0006\u0004\b+\u0010\u0016J\u001b\u0010)\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b,\u0010\u0018J\u001b\u0010.\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b-\u0010\u0011J\u001b\u0010.\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\bH\u0087\bø\u0001\u0000¢\u0006\u0004\b/\u0010\u0014J\u001b\u0010.\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\bø\u0001\u0000¢\u0006\u0004\b0\u0010\u0016J\u001b\u0010.\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b1\u0010\u0018J\u001b\u00104\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b2\u00103J\u001b\u00104\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\bH\u0087\bø\u0001\u0000¢\u0006\u0004\b5\u00106J\u001b\u00104\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000bH\u0087\bø\u0001\u0000¢\u0006\u0004\b7\u0010\rJ\u001b\u00104\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b8\u0010\u0018J\u0016\u0010;\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b9\u0010:J\u0016\u0010=\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b<\u0010:J\u001b\u0010A\u001a\u00020>2\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b?\u0010@J\u001e\u0010D\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0004H\u0087\fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bC\u0010\u0016J\u001e\u0010F\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0004H\u0087\fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bE\u0010\u0016J\u001b\u0010H\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bG\u0010\u0018J\u001b\u0010J\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bI\u0010\u0018J\u001b\u0010L\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bK\u0010\u0018J\u0016\u0010N\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bM\u0010:J\u0010\u0010R\u001a\u00020OH\u0087\b¢\u0006\u0004\bP\u0010QJ\u0010\u0010V\u001a\u00020SH\u0087\b¢\u0006\u0004\bT\u0010UJ\u0010\u0010Y\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\bW\u0010XJ\u0010\u0010\\\u001a\u00020ZH\u0087\b¢\u0006\u0004\b[\u0010:J\u0016\u0010^\u001a\u00020\u0002H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b]\u0010QJ\u0016\u0010`\u001a\u00020\bH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b_\u0010UJ\u0016\u0010b\u001a\u00020\u000bH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\ba\u0010XJ\u0016\u0010d\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bc\u0010:J\u0010\u0010h\u001a\u00020eH\u0087\b¢\u0006\u0004\bf\u0010gJ\u0010\u0010l\u001a\u00020iH\u0087\b¢\u0006\u0004\bj\u0010kJ\u000f\u0010p\u001a\u00020mH\u0016¢\u0006\u0004\bn\u0010oJ\u0010\u0010r\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\bq\u0010XJ\u001a\u0010w\u001a\u00020t2\b\u0010\u0003\u001a\u0004\u0018\u00010sHÖ\u0003¢\u0006\u0004\bu\u0010vR\u001c\u0010x\u001a\u00020Z8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\bx\u0010y\u0012\u0004\bz\u0010{ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006~"}, d2 = {"Lkotlin/ULong;", "", "Lkotlin/UByte;", "other", "", "compareTo-7apg3OU", "(JB)I", "compareTo", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(JS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(JI)I", "compareTo-VKZWuLQ", "(JJ)I", "plus-7apg3OU", "(JB)J", "plus", "plus-xj2QHRw", "(JS)J", "plus-WZ4Q5Ns", "(JI)J", "plus-VKZWuLQ", "(JJ)J", "minus-7apg3OU", "minus", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times-7apg3OU", "times", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div-7apg3OU", "div", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem-7apg3OU", "rem", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv-7apg3OU", "floorDiv", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod-7apg3OU", "(JB)B", "mod", "mod-xj2QHRw", "(JS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc-s-VKNKU", "(J)J", "inc", "dec-s-VKNKU", "dec", "Lkotlin/ranges/ULongRange;", "rangeTo-VKZWuLQ", "(JJ)Lkotlin/ranges/ULongRange;", "rangeTo", "bitCount", "shl-s-VKNKU", "shl", "shr-s-VKNKU", "shr", "and-VKZWuLQ", "and", "or-VKZWuLQ", "or", "xor-VKZWuLQ", "xor", "inv-s-VKNKU", "inv", "", "toByte-impl", "(J)B", "toByte", "", "toShort-impl", "(J)S", "toShort", "toInt-impl", "(J)I", "toInt", "", "toLong-impl", "toLong", "toUByte-w2LRezQ", "toUByte", "toUShort-Mh2AYeg", "toUShort", "toUInt-pVg5ArA", "toUInt", "toULong-s-VKNKU", "toULong", "", "toFloat-impl", "(J)F", "toFloat", "", "toDouble-impl", "(J)D", "toDouble", "", "toString-impl", "(J)Ljava/lang/String;", "toString", "hashCode-impl", TTDownloadField.TT_HASHCODE, "", "", "equals-impl", "(JLjava/lang/Object;)Z", "equals", "data", "J", "getData$annotations", "()V", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@JvmInline
@WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
/* loaded from: classes.dex */
public final class ULong implements Comparable<ULong> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long MAX_VALUE = -1;
    public static final long MIN_VALUE = 0;
    public static final int SIZE_BITS = 64;
    public static final int SIZE_BYTES = 8;
    private final long data;

    /* compiled from: ULong.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\b\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\f"}, d2 = {"Lkotlin/ULong$Companion;", "", "Lkotlin/ULong;", "MAX_VALUE", "J", "MIN_VALUE", "", "SIZE_BITS", "I", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @PublishedApi
    private /* synthetic */ ULong(long j4) {
        this.data = j4;
    }

    @InlineOnly
    /* renamed from: and-VKZWuLQ  reason: not valid java name */
    private static final long m189andVKZWuLQ(long j4, long j5) {
        return m196constructorimpl(j4 & j5);
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ULong m190boximpl(long j4) {
        return new ULong(j4);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private static final int m191compareTo7apg3OU(long j4, byte b4) {
        return UnsignedKt.ulongCompare(j4, m196constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ  reason: not valid java name */
    private int m192compareToVKZWuLQ(long j4) {
        return m193compareToVKZWuLQ(this.data, j4);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns  reason: not valid java name */
    private static final int m194compareToWZ4Q5Ns(long j4, int i2) {
        return UnsignedKt.ulongCompare(j4, m196constructorimpl(i2 & 4294967295L));
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw  reason: not valid java name */
    private static final int m195compareToxj2QHRw(long j4, short s3) {
        return UnsignedKt.ulongCompare(j4, m196constructorimpl(s3 & 65535));
    }

    @PublishedApi
    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m196constructorimpl(long j4) {
        return j4;
    }

    @InlineOnly
    /* renamed from: dec-s-VKNKU  reason: not valid java name */
    private static final long m197decsVKNKU(long j4) {
        return m196constructorimpl(j4 - 1);
    }

    @InlineOnly
    /* renamed from: div-7apg3OU  reason: not valid java name */
    private static final long m198div7apg3OU(long j4, byte b4) {
        return UnsignedKt.m373ulongDivideeb3DHEI(j4, m196constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ  reason: not valid java name */
    private static final long m199divVKZWuLQ(long j4, long j5) {
        return UnsignedKt.m373ulongDivideeb3DHEI(j4, j5);
    }

    @InlineOnly
    /* renamed from: div-WZ4Q5Ns  reason: not valid java name */
    private static final long m200divWZ4Q5Ns(long j4, int i2) {
        return UnsignedKt.m373ulongDivideeb3DHEI(j4, m196constructorimpl(i2 & 4294967295L));
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw  reason: not valid java name */
    private static final long m201divxj2QHRw(long j4, short s3) {
        return UnsignedKt.m373ulongDivideeb3DHEI(j4, m196constructorimpl(s3 & 65535));
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m202equalsimpl(long j4, Object obj) {
        return (obj instanceof ULong) && j4 == ((ULong) obj).m247unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m203equalsimpl0(long j4, long j5) {
        return j4 == j5;
    }

    @InlineOnly
    /* renamed from: floorDiv-7apg3OU  reason: not valid java name */
    private static final long m204floorDiv7apg3OU(long j4, byte b4) {
        return UnsignedKt.m373ulongDivideeb3DHEI(j4, m196constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: floorDiv-VKZWuLQ  reason: not valid java name */
    private static final long m205floorDivVKZWuLQ(long j4, long j5) {
        return UnsignedKt.m373ulongDivideeb3DHEI(j4, j5);
    }

    @InlineOnly
    /* renamed from: floorDiv-WZ4Q5Ns  reason: not valid java name */
    private static final long m206floorDivWZ4Q5Ns(long j4, int i2) {
        return UnsignedKt.m373ulongDivideeb3DHEI(j4, m196constructorimpl(i2 & 4294967295L));
    }

    @InlineOnly
    /* renamed from: floorDiv-xj2QHRw  reason: not valid java name */
    private static final long m207floorDivxj2QHRw(long j4, short s3) {
        return UnsignedKt.m373ulongDivideeb3DHEI(j4, m196constructorimpl(s3 & 65535));
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m208hashCodeimpl(long j4) {
        return (int) (j4 ^ (j4 >>> 32));
    }

    @InlineOnly
    /* renamed from: inc-s-VKNKU  reason: not valid java name */
    private static final long m209incsVKNKU(long j4) {
        return m196constructorimpl(j4 + 1);
    }

    @InlineOnly
    /* renamed from: inv-s-VKNKU  reason: not valid java name */
    private static final long m210invsVKNKU(long j4) {
        return m196constructorimpl(j4 ^ (-1));
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU  reason: not valid java name */
    private static final long m211minus7apg3OU(long j4, byte b4) {
        return m196constructorimpl(j4 - m196constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ  reason: not valid java name */
    private static final long m212minusVKZWuLQ(long j4, long j5) {
        return m196constructorimpl(j4 - j5);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns  reason: not valid java name */
    private static final long m213minusWZ4Q5Ns(long j4, int i2) {
        return m196constructorimpl(j4 - m196constructorimpl(i2 & 4294967295L));
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw  reason: not valid java name */
    private static final long m214minusxj2QHRw(long j4, short s3) {
        return m196constructorimpl(j4 - m196constructorimpl(s3 & 65535));
    }

    @InlineOnly
    /* renamed from: mod-7apg3OU  reason: not valid java name */
    private static final byte m215mod7apg3OU(long j4, byte b4) {
        return UByte.m42constructorimpl((byte) UnsignedKt.m374ulongRemaindereb3DHEI(j4, m196constructorimpl(b4 & 255)));
    }

    @InlineOnly
    /* renamed from: mod-VKZWuLQ  reason: not valid java name */
    private static final long m216modVKZWuLQ(long j4, long j5) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(j4, j5);
    }

    @InlineOnly
    /* renamed from: mod-WZ4Q5Ns  reason: not valid java name */
    private static final int m217modWZ4Q5Ns(long j4, int i2) {
        return UInt.m118constructorimpl((int) UnsignedKt.m374ulongRemaindereb3DHEI(j4, m196constructorimpl(i2 & 4294967295L)));
    }

    @InlineOnly
    /* renamed from: mod-xj2QHRw  reason: not valid java name */
    private static final short m218modxj2QHRw(long j4, short s3) {
        return UShort.m302constructorimpl((short) UnsignedKt.m374ulongRemaindereb3DHEI(j4, m196constructorimpl(s3 & 65535)));
    }

    @InlineOnly
    /* renamed from: or-VKZWuLQ  reason: not valid java name */
    private static final long m219orVKZWuLQ(long j4, long j5) {
        return m196constructorimpl(j4 | j5);
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU  reason: not valid java name */
    private static final long m220plus7apg3OU(long j4, byte b4) {
        return m196constructorimpl(j4 + m196constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ  reason: not valid java name */
    private static final long m221plusVKZWuLQ(long j4, long j5) {
        return m196constructorimpl(j4 + j5);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns  reason: not valid java name */
    private static final long m222plusWZ4Q5Ns(long j4, int i2) {
        return m196constructorimpl(j4 + m196constructorimpl(i2 & 4294967295L));
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw  reason: not valid java name */
    private static final long m223plusxj2QHRw(long j4, short s3) {
        return m196constructorimpl(j4 + m196constructorimpl(s3 & 65535));
    }

    @InlineOnly
    /* renamed from: rangeTo-VKZWuLQ  reason: not valid java name */
    private static final ULongRange m224rangeToVKZWuLQ(long j4, long j5) {
        return new ULongRange(j4, j5, null);
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU  reason: not valid java name */
    private static final long m225rem7apg3OU(long j4, byte b4) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(j4, m196constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ  reason: not valid java name */
    private static final long m226remVKZWuLQ(long j4, long j5) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(j4, j5);
    }

    @InlineOnly
    /* renamed from: rem-WZ4Q5Ns  reason: not valid java name */
    private static final long m227remWZ4Q5Ns(long j4, int i2) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(j4, m196constructorimpl(i2 & 4294967295L));
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw  reason: not valid java name */
    private static final long m228remxj2QHRw(long j4, short s3) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(j4, m196constructorimpl(s3 & 65535));
    }

    @InlineOnly
    /* renamed from: shl-s-VKNKU  reason: not valid java name */
    private static final long m229shlsVKNKU(long j4, int i2) {
        return m196constructorimpl(j4 << i2);
    }

    @InlineOnly
    /* renamed from: shr-s-VKNKU  reason: not valid java name */
    private static final long m230shrsVKNKU(long j4, int i2) {
        return m196constructorimpl(j4 >>> i2);
    }

    @InlineOnly
    /* renamed from: times-7apg3OU  reason: not valid java name */
    private static final long m231times7apg3OU(long j4, byte b4) {
        return m196constructorimpl(j4 * m196constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ  reason: not valid java name */
    private static final long m232timesVKZWuLQ(long j4, long j5) {
        return m196constructorimpl(j4 * j5);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns  reason: not valid java name */
    private static final long m233timesWZ4Q5Ns(long j4, int i2) {
        return m196constructorimpl(j4 * m196constructorimpl(i2 & 4294967295L));
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw  reason: not valid java name */
    private static final long m234timesxj2QHRw(long j4, short s3) {
        return m196constructorimpl(j4 * m196constructorimpl(s3 & 65535));
    }

    @InlineOnly
    /* renamed from: toByte-impl  reason: not valid java name */
    private static final byte m235toByteimpl(long j4) {
        return (byte) j4;
    }

    @InlineOnly
    /* renamed from: toDouble-impl  reason: not valid java name */
    private static final double m236toDoubleimpl(long j4) {
        return UnsignedKt.ulongToDouble(j4);
    }

    @InlineOnly
    /* renamed from: toFloat-impl  reason: not valid java name */
    private static final float m237toFloatimpl(long j4) {
        return (float) UnsignedKt.ulongToDouble(j4);
    }

    @InlineOnly
    /* renamed from: toInt-impl  reason: not valid java name */
    private static final int m238toIntimpl(long j4) {
        return (int) j4;
    }

    @InlineOnly
    /* renamed from: toLong-impl  reason: not valid java name */
    private static final long m239toLongimpl(long j4) {
        return j4;
    }

    @InlineOnly
    /* renamed from: toShort-impl  reason: not valid java name */
    private static final short m240toShortimpl(long j4) {
        return (short) j4;
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m241toStringimpl(long j4) {
        return UnsignedKt.ulongToString(j4);
    }

    @InlineOnly
    /* renamed from: toUByte-w2LRezQ  reason: not valid java name */
    private static final byte m242toUBytew2LRezQ(long j4) {
        return UByte.m42constructorimpl((byte) j4);
    }

    @InlineOnly
    /* renamed from: toUInt-pVg5ArA  reason: not valid java name */
    private static final int m243toUIntpVg5ArA(long j4) {
        return UInt.m118constructorimpl((int) j4);
    }

    @InlineOnly
    /* renamed from: toULong-s-VKNKU  reason: not valid java name */
    private static final long m244toULongsVKNKU(long j4) {
        return j4;
    }

    @InlineOnly
    /* renamed from: toUShort-Mh2AYeg  reason: not valid java name */
    private static final short m245toUShortMh2AYeg(long j4) {
        return UShort.m302constructorimpl((short) j4);
    }

    @InlineOnly
    /* renamed from: xor-VKZWuLQ  reason: not valid java name */
    private static final long m246xorVKZWuLQ(long j4, long j5) {
        return m196constructorimpl(j4 ^ j5);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ULong uLong) {
        return m192compareToVKZWuLQ(uLong.m247unboximpl());
    }

    public boolean equals(Object obj) {
        return m202equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m208hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m241toStringimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m247unboximpl() {
        return this.data;
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ  reason: not valid java name */
    private static int m193compareToVKZWuLQ(long j4, long j5) {
        return UnsignedKt.ulongCompare(j4, j5);
    }
}
