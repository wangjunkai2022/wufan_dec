package kotlin;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: UShort.kt */
@SinceKotlin(version = "1.5")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087@\u0018\u0000 u2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001uB\u0014\b\u0001\u0012\u0006\u0010p\u001a\u00020Kø\u0001\u0000¢\u0006\u0004\bt\u00107J\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0000H\u0097\nø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0006J\u001b\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\tJ\u001b\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\fJ\u001b\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0006J\u001b\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\tJ\u001b\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\fJ\u001b\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0015J\u001b\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0006J\u001b\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\tJ\u001b\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\fJ\u001b\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0015J\u001b\u0010!\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b \u0010\u0006J\u001b\u0010!\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\"\u0010\tJ\u001b\u0010!\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b#\u0010\fJ\u001b\u0010!\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b$\u0010\u0015J\u001b\u0010&\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\nø\u0001\u0000¢\u0006\u0004\b%\u0010\u0006J\u001b\u0010&\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b'\u0010\tJ\u001b\u0010&\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0087\nø\u0001\u0000¢\u0006\u0004\b(\u0010\fJ\u001b\u0010&\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b)\u0010\u0015J\u001b\u0010+\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b*\u0010\u0006J\u001b\u0010+\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b,\u0010\tJ\u001b\u0010+\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0087\bø\u0001\u0000¢\u0006\u0004\b-\u0010\fJ\u001b\u0010+\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b.\u0010\u0015J\u001b\u00101\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b/\u00100J\u001b\u00101\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b2\u00103J\u001b\u00101\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0087\bø\u0001\u0000¢\u0006\u0004\b4\u0010\fJ\u001b\u00101\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b5\u0010\u0015J\u0016\u00108\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b6\u00107J\u0016\u0010:\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b9\u00107J\u001b\u0010>\u001a\u00020;2\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b<\u0010=J\u001b\u0010@\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b?\u00103J\u001b\u0010B\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bA\u00103J\u001b\u0010D\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bC\u00103J\u0016\u0010F\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bE\u00107J\u0010\u0010J\u001a\u00020GH\u0087\b¢\u0006\u0004\bH\u0010IJ\u0010\u0010M\u001a\u00020KH\u0087\b¢\u0006\u0004\bL\u00107J\u0010\u0010P\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\bN\u0010OJ\u0010\u0010T\u001a\u00020QH\u0087\b¢\u0006\u0004\bR\u0010SJ\u0016\u0010V\u001a\u00020\u0002H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bU\u0010IJ\u0016\u0010X\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bW\u00107J\u0016\u0010Z\u001a\u00020\nH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bY\u0010OJ\u0016\u0010\\\u001a\u00020\rH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b[\u0010SJ\u0010\u0010`\u001a\u00020]H\u0087\b¢\u0006\u0004\b^\u0010_J\u0010\u0010d\u001a\u00020aH\u0087\b¢\u0006\u0004\bb\u0010cJ\u000f\u0010h\u001a\u00020eH\u0016¢\u0006\u0004\bf\u0010gJ\u0010\u0010j\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\bi\u0010OJ\u001a\u0010o\u001a\u00020l2\b\u0010\u0003\u001a\u0004\u0018\u00010kHÖ\u0003¢\u0006\u0004\bm\u0010nR\u001c\u0010p\u001a\u00020K8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\bp\u0010q\u0012\u0004\br\u0010sø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006v"}, d2 = {"Lkotlin/UShort;", "", "Lkotlin/UByte;", "other", "", "compareTo-7apg3OU", "(SB)I", "compareTo", "compareTo-xj2QHRw", "(SS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(SI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(SJ)I", "plus-7apg3OU", "plus", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(SJ)J", "minus-7apg3OU", "minus", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times-7apg3OU", "times", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div-7apg3OU", "div", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem-7apg3OU", "rem", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv-7apg3OU", "floorDiv", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod-7apg3OU", "(SB)B", "mod", "mod-xj2QHRw", "(SS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc-Mh2AYeg", "(S)S", "inc", "dec-Mh2AYeg", "dec", "Lkotlin/ranges/UIntRange;", "rangeTo-xj2QHRw", "(SS)Lkotlin/ranges/UIntRange;", "rangeTo", "and-xj2QHRw", "and", "or-xj2QHRw", "or", "xor-xj2QHRw", "xor", "inv-Mh2AYeg", "inv", "", "toByte-impl", "(S)B", "toByte", "", "toShort-impl", "toShort", "toInt-impl", "(S)I", "toInt", "", "toLong-impl", "(S)J", "toLong", "toUByte-w2LRezQ", "toUByte", "toUShort-Mh2AYeg", "toUShort", "toUInt-pVg5ArA", "toUInt", "toULong-s-VKNKU", "toULong", "", "toFloat-impl", "(S)F", "toFloat", "", "toDouble-impl", "(S)D", "toDouble", "", "toString-impl", "(S)Ljava/lang/String;", "toString", "hashCode-impl", TTDownloadField.TT_HASHCODE, "", "", "equals-impl", "(SLjava/lang/Object;)Z", "equals", "data", "S", "getData$annotations", "()V", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@JvmInline
@WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
/* loaded from: classes5.dex */
public final class UShort implements Comparable<UShort> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final short MAX_VALUE = -1;
    public static final short MIN_VALUE = 0;
    public static final int SIZE_BITS = 16;
    public static final int SIZE_BYTES = 2;
    private final short data;

    /* compiled from: UShort.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\b\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\f"}, d2 = {"Lkotlin/UShort$Companion;", "", "Lkotlin/UShort;", "MAX_VALUE", "S", "MIN_VALUE", "", "SIZE_BITS", "I", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @PublishedApi
    private /* synthetic */ UShort(short s3) {
        this.data = s3;
    }

    @InlineOnly
    /* renamed from: and-xj2QHRw  reason: not valid java name */
    private static final short m295andxj2QHRw(short s3, short s4) {
        return m302constructorimpl((short) (s3 & s4));
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UShort m296boximpl(short s3) {
        return new UShort(s3);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private static final int m297compareTo7apg3OU(short s3, byte b4) {
        return Intrinsics.compare(s3 & MAX_VALUE, b4 & 255);
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ  reason: not valid java name */
    private static final int m298compareToVKZWuLQ(short s3, long j4) {
        return UnsignedKt.ulongCompare(ULong.m196constructorimpl(s3 & 65535), j4);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns  reason: not valid java name */
    private static final int m299compareToWZ4Q5Ns(short s3, int i2) {
        return UnsignedKt.uintCompare(UInt.m118constructorimpl(s3 & MAX_VALUE), i2);
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw  reason: not valid java name */
    private int m300compareToxj2QHRw(short s3) {
        return m301compareToxj2QHRw(this.data, s3);
    }

    @PublishedApi
    /* renamed from: constructor-impl  reason: not valid java name */
    public static short m302constructorimpl(short s3) {
        return s3;
    }

    @InlineOnly
    /* renamed from: dec-Mh2AYeg  reason: not valid java name */
    private static final short m303decMh2AYeg(short s3) {
        return m302constructorimpl((short) (s3 - 1));
    }

    @InlineOnly
    /* renamed from: div-7apg3OU  reason: not valid java name */
    private static final int m304div7apg3OU(short s3, byte b4) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), UInt.m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ  reason: not valid java name */
    private static final long m305divVKZWuLQ(short s3, long j4) {
        return UnsignedKt.m373ulongDivideeb3DHEI(ULong.m196constructorimpl(s3 & 65535), j4);
    }

    @InlineOnly
    /* renamed from: div-WZ4Q5Ns  reason: not valid java name */
    private static final int m306divWZ4Q5Ns(short s3, int i2) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), i2);
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw  reason: not valid java name */
    private static final int m307divxj2QHRw(short s3, short s4) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), UInt.m118constructorimpl(s4 & MAX_VALUE));
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m308equalsimpl(short s3, Object obj) {
        return (obj instanceof UShort) && s3 == ((UShort) obj).m351unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m309equalsimpl0(short s3, short s4) {
        return s3 == s4;
    }

    @InlineOnly
    /* renamed from: floorDiv-7apg3OU  reason: not valid java name */
    private static final int m310floorDiv7apg3OU(short s3, byte b4) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), UInt.m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: floorDiv-VKZWuLQ  reason: not valid java name */
    private static final long m311floorDivVKZWuLQ(short s3, long j4) {
        return UnsignedKt.m373ulongDivideeb3DHEI(ULong.m196constructorimpl(s3 & 65535), j4);
    }

    @InlineOnly
    /* renamed from: floorDiv-WZ4Q5Ns  reason: not valid java name */
    private static final int m312floorDivWZ4Q5Ns(short s3, int i2) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), i2);
    }

    @InlineOnly
    /* renamed from: floorDiv-xj2QHRw  reason: not valid java name */
    private static final int m313floorDivxj2QHRw(short s3, short s4) {
        return UnsignedKt.m371uintDivideJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), UInt.m118constructorimpl(s4 & MAX_VALUE));
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m314hashCodeimpl(short s3) {
        return s3;
    }

    @InlineOnly
    /* renamed from: inc-Mh2AYeg  reason: not valid java name */
    private static final short m315incMh2AYeg(short s3) {
        return m302constructorimpl((short) (s3 + 1));
    }

    @InlineOnly
    /* renamed from: inv-Mh2AYeg  reason: not valid java name */
    private static final short m316invMh2AYeg(short s3) {
        return m302constructorimpl((short) (s3 ^ (-1)));
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU  reason: not valid java name */
    private static final int m317minus7apg3OU(short s3, byte b4) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(s3 & MAX_VALUE) - UInt.m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ  reason: not valid java name */
    private static final long m318minusVKZWuLQ(short s3, long j4) {
        return ULong.m196constructorimpl(ULong.m196constructorimpl(s3 & 65535) - j4);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns  reason: not valid java name */
    private static final int m319minusWZ4Q5Ns(short s3, int i2) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(s3 & MAX_VALUE) - i2);
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw  reason: not valid java name */
    private static final int m320minusxj2QHRw(short s3, short s4) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(s3 & MAX_VALUE) - UInt.m118constructorimpl(s4 & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: mod-7apg3OU  reason: not valid java name */
    private static final byte m321mod7apg3OU(short s3, byte b4) {
        return UByte.m42constructorimpl((byte) UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), UInt.m118constructorimpl(b4 & 255)));
    }

    @InlineOnly
    /* renamed from: mod-VKZWuLQ  reason: not valid java name */
    private static final long m322modVKZWuLQ(short s3, long j4) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(ULong.m196constructorimpl(s3 & 65535), j4);
    }

    @InlineOnly
    /* renamed from: mod-WZ4Q5Ns  reason: not valid java name */
    private static final int m323modWZ4Q5Ns(short s3, int i2) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), i2);
    }

    @InlineOnly
    /* renamed from: mod-xj2QHRw  reason: not valid java name */
    private static final short m324modxj2QHRw(short s3, short s4) {
        return m302constructorimpl((short) UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), UInt.m118constructorimpl(s4 & MAX_VALUE)));
    }

    @InlineOnly
    /* renamed from: or-xj2QHRw  reason: not valid java name */
    private static final short m325orxj2QHRw(short s3, short s4) {
        return m302constructorimpl((short) (s3 | s4));
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU  reason: not valid java name */
    private static final int m326plus7apg3OU(short s3, byte b4) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(s3 & MAX_VALUE) + UInt.m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ  reason: not valid java name */
    private static final long m327plusVKZWuLQ(short s3, long j4) {
        return ULong.m196constructorimpl(ULong.m196constructorimpl(s3 & 65535) + j4);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns  reason: not valid java name */
    private static final int m328plusWZ4Q5Ns(short s3, int i2) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(s3 & MAX_VALUE) + i2);
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw  reason: not valid java name */
    private static final int m329plusxj2QHRw(short s3, short s4) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(s3 & MAX_VALUE) + UInt.m118constructorimpl(s4 & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: rangeTo-xj2QHRw  reason: not valid java name */
    private static final UIntRange m330rangeToxj2QHRw(short s3, short s4) {
        return new UIntRange(UInt.m118constructorimpl(s3 & MAX_VALUE), UInt.m118constructorimpl(s4 & MAX_VALUE), null);
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU  reason: not valid java name */
    private static final int m331rem7apg3OU(short s3, byte b4) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), UInt.m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ  reason: not valid java name */
    private static final long m332remVKZWuLQ(short s3, long j4) {
        return UnsignedKt.m374ulongRemaindereb3DHEI(ULong.m196constructorimpl(s3 & 65535), j4);
    }

    @InlineOnly
    /* renamed from: rem-WZ4Q5Ns  reason: not valid java name */
    private static final int m333remWZ4Q5Ns(short s3, int i2) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), i2);
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw  reason: not valid java name */
    private static final int m334remxj2QHRw(short s3, short s4) {
        return UnsignedKt.m372uintRemainderJ1ME1BU(UInt.m118constructorimpl(s3 & MAX_VALUE), UInt.m118constructorimpl(s4 & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: times-7apg3OU  reason: not valid java name */
    private static final int m335times7apg3OU(short s3, byte b4) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(s3 & MAX_VALUE) * UInt.m118constructorimpl(b4 & 255));
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ  reason: not valid java name */
    private static final long m336timesVKZWuLQ(short s3, long j4) {
        return ULong.m196constructorimpl(ULong.m196constructorimpl(s3 & 65535) * j4);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns  reason: not valid java name */
    private static final int m337timesWZ4Q5Ns(short s3, int i2) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(s3 & MAX_VALUE) * i2);
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw  reason: not valid java name */
    private static final int m338timesxj2QHRw(short s3, short s4) {
        return UInt.m118constructorimpl(UInt.m118constructorimpl(s3 & MAX_VALUE) * UInt.m118constructorimpl(s4 & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: toByte-impl  reason: not valid java name */
    private static final byte m339toByteimpl(short s3) {
        return (byte) s3;
    }

    @InlineOnly
    /* renamed from: toDouble-impl  reason: not valid java name */
    private static final double m340toDoubleimpl(short s3) {
        return s3 & MAX_VALUE;
    }

    @InlineOnly
    /* renamed from: toFloat-impl  reason: not valid java name */
    private static final float m341toFloatimpl(short s3) {
        return s3 & MAX_VALUE;
    }

    @InlineOnly
    /* renamed from: toInt-impl  reason: not valid java name */
    private static final int m342toIntimpl(short s3) {
        return s3 & MAX_VALUE;
    }

    @InlineOnly
    /* renamed from: toLong-impl  reason: not valid java name */
    private static final long m343toLongimpl(short s3) {
        return s3 & 65535;
    }

    @InlineOnly
    /* renamed from: toShort-impl  reason: not valid java name */
    private static final short m344toShortimpl(short s3) {
        return s3;
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m345toStringimpl(short s3) {
        return String.valueOf(s3 & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toUByte-w2LRezQ  reason: not valid java name */
    private static final byte m346toUBytew2LRezQ(short s3) {
        return UByte.m42constructorimpl((byte) s3);
    }

    @InlineOnly
    /* renamed from: toUInt-pVg5ArA  reason: not valid java name */
    private static final int m347toUIntpVg5ArA(short s3) {
        return UInt.m118constructorimpl(s3 & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toULong-s-VKNKU  reason: not valid java name */
    private static final long m348toULongsVKNKU(short s3) {
        return ULong.m196constructorimpl(s3 & 65535);
    }

    @InlineOnly
    /* renamed from: toUShort-Mh2AYeg  reason: not valid java name */
    private static final short m349toUShortMh2AYeg(short s3) {
        return s3;
    }

    @InlineOnly
    /* renamed from: xor-xj2QHRw  reason: not valid java name */
    private static final short m350xorxj2QHRw(short s3, short s4) {
        return m302constructorimpl((short) (s3 ^ s4));
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return m300compareToxj2QHRw(uShort.m351unboximpl());
    }

    public boolean equals(Object obj) {
        return m308equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m314hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m345toStringimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ short m351unboximpl() {
        return this.data;
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw  reason: not valid java name */
    private static int m301compareToxj2QHRw(short s3, short s4) {
        return Intrinsics.compare(s3 & MAX_VALUE, s4 & MAX_VALUE);
    }
}
