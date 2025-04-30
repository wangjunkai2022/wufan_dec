package kotlin.time;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import external.org.apache.commons.lang3.d;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Duration.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\bH\b\u0087@\u0018\u0000 ¦\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002¦\u0001B\u0015\b\u0000\u0012\u0006\u0010w\u001a\u00020\u000fø\u0001\u0000¢\u0006\u0005\b¥\u0001\u0010\tJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0016\u0010\n\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ%\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\rJ\u001e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u001e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u001cH\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u001dJ\u001e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001e\u0010\u001aJ\u001e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u001cH\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001e\u0010\u001dJ\u001b\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b \u0010!J\r\u0010#\u001a\u00020\u0002¢\u0006\u0004\b\"\u0010\u0004J\r\u0010%\u001a\u00020\u0002¢\u0006\u0004\b$\u0010\u0004J\r\u0010'\u001a\u00020\u0002¢\u0006\u0004\b&\u0010\u0004J\r\u0010)\u001a\u00020\u0002¢\u0006\u0004\b(\u0010\u0004J\u001b\u0010,\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u0000H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b*\u0010+J\u009d\u0001\u00109\u001a\u00028\u0000\"\u0004\b\u0000\u0010-2u\u00106\u001aq\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(1\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(2\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(3\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(4\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(5\u0012\u0004\u0012\u00028\u00000.H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b7\u00108J\u0088\u0001\u00109\u001a\u00028\u0000\"\u0004\b\u0000\u0010-2`\u00106\u001a\\\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(2\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(3\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(4\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(5\u0012\u0004\u0012\u00028\u00000:H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b7\u0010;Js\u00109\u001a\u00028\u0000\"\u0004\b\u0000\u0010-2K\u00106\u001aG\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(3\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(4\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(5\u0012\u0004\u0012\u00028\u00000<H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b7\u0010=J^\u00109\u001a\u00028\u0000\"\u0004\b\u0000\u0010-26\u00106\u001a2\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(4\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(5\u0012\u0004\u0012\u00028\u00000>H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b7\u0010?J\u0019\u0010E\u001a\u00020\u001c2\n\u0010B\u001a\u00060@j\u0002`A¢\u0006\u0004\bC\u0010DJ\u0019\u0010H\u001a\u00020\u000f2\n\u0010B\u001a\u00060@j\u0002`A¢\u0006\u0004\bF\u0010GJ\u0019\u0010K\u001a\u00020\u00172\n\u0010B\u001a\u00060@j\u0002`A¢\u0006\u0004\bI\u0010JJ\u000f\u0010M\u001a\u00020\u000fH\u0007¢\u0006\u0004\bL\u0010\tJ\u000f\u0010O\u001a\u00020\u000fH\u0007¢\u0006\u0004\bN\u0010\tJ\u000f\u0010S\u001a\u00020PH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010W\u001a\u00020\u00172\u0006\u0010T\u001a\u00020\u001cH\u0002¢\u0006\u0004\bU\u0010VJ#\u0010S\u001a\u00020P2\n\u0010B\u001a\u00060@j\u0002`A2\b\b\u0002\u0010X\u001a\u00020\u0017¢\u0006\u0004\bQ\u0010YJ\r\u0010[\u001a\u00020P¢\u0006\u0004\bZ\u0010RJ\u0010\u0010^\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\\\u0010]J\u001a\u0010b\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010_HÖ\u0003¢\u0006\u0004\b`\u0010aR\u001c\u0010f\u001a\u00020\u00178@@\u0001X\u0081\u0004¢\u0006\f\u0012\u0004\bd\u0010e\u001a\u0004\bc\u0010]R\u001c\u0010i\u001a\u00020\u000f8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bh\u0010e\u001a\u0004\bg\u0010\tR\u0017\u0010k\u001a\u00020\u00178Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bj\u0010]R\u001c\u0010n\u001a\u00020\u000f8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bm\u0010e\u001a\u0004\bl\u0010\tR\u001c\u0010q\u001a\u00020\u000f8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bp\u0010e\u001a\u0004\bo\u0010\tR\u0019\u0010s\u001a\u00020\u00008F@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\br\u0010\tR\u001c\u0010v\u001a\u00020\u000f8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bu\u0010e\u001a\u0004\bt\u0010\tR\u0016\u0010w\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010xR\u001c\u0010|\u001a\u00020\u001c8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b{\u0010e\u001a\u0004\by\u0010zR\u001c\u0010\u007f\u001a\u00020\u001c8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b~\u0010e\u001a\u0004\b}\u0010zR\u001f\u0010\u0082\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0081\u0001\u0010e\u001a\u0005\b\u0080\u0001\u0010zR\u001f\u0010\u0085\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0084\u0001\u0010e\u001a\u0005\b\u0083\u0001\u0010zR\u001f\u0010\u0088\u0001\u001a\u00020\u00178@@\u0001X\u0081\u0004¢\u0006\u000e\u0012\u0005\b\u0087\u0001\u0010e\u001a\u0005\b\u0086\u0001\u0010]R\u0017\u0010T\u001a\u00020\u000f8B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0089\u0001\u0010\tR\u001f\u0010\u008c\u0001\u001a\u00020\u00178@@\u0001X\u0081\u0004¢\u0006\u000e\u0012\u0005\b\u008b\u0001\u0010e\u001a\u0005\b\u008a\u0001\u0010]R\u0019\u0010\u008f\u0001\u001a\u00020@8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001f\u0010\u0092\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0091\u0001\u0010e\u001a\u0005\b\u0090\u0001\u0010zR\u001f\u0010\u0095\u0001\u001a\u00020\u00178@@\u0001X\u0081\u0004¢\u0006\u000e\u0012\u0005\b\u0094\u0001\u0010e\u001a\u0005\b\u0093\u0001\u0010]R\u001f\u0010\u0098\u0001\u001a\u00020\u000f8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0097\u0001\u0010e\u001a\u0005\b\u0096\u0001\u0010\tR\u001f\u0010\u009b\u0001\u001a\u00020\u000f8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u009a\u0001\u0010e\u001a\u0005\b\u0099\u0001\u0010\tR\u001f\u0010\u009e\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u009d\u0001\u0010e\u001a\u0005\b\u009c\u0001\u0010zR\u001f\u0010¡\u0001\u001a\u00020\u000f8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b \u0001\u0010e\u001a\u0005\b\u009f\u0001\u0010\tR\u001f\u0010¤\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b£\u0001\u0010e\u001a\u0005\b¢\u0001\u0010zø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006§\u0001"}, d2 = {"Lkotlin/time/Duration;", "", "", "isInNanos-impl", "(J)Z", "isInNanos", "isInMillis-impl", "isInMillis", "unaryMinus-UwyO8pc", "(J)J", "unaryMinus", "other", "plus-LRDsOJo", "(JJ)J", "plus", "", "thisMillis", "otherNanos", "addValuesMixedRanges-UwyO8pc", "(JJJ)J", "addValuesMixedRanges", "minus-LRDsOJo", "minus", "", "scale", "times-UwyO8pc", "(JI)J", "times", "", "(JD)J", "div-UwyO8pc", "div", "div-LRDsOJo", "(JJ)D", "isNegative-impl", "isNegative", "isPositive-impl", "isPositive", "isInfinite-impl", "isInfinite", "isFinite-impl", "isFinite", "compareTo-LRDsOJo", "(JJ)I", "compareTo", "T", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "action", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "toComponents", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "unit", "toDouble-impl", "(JLjava/util/concurrent/TimeUnit;)D", "toDouble", "toLong-impl", "(JLjava/util/concurrent/TimeUnit;)J", "toLong", "toInt-impl", "(JLjava/util/concurrent/TimeUnit;)I", "toInt", "toLongNanoseconds-impl", "toLongNanoseconds", "toLongMilliseconds-impl", "toLongMilliseconds", "", "toString-impl", "(J)Ljava/lang/String;", "toString", "value", "precision-impl", "(JD)I", "precision", "decimals", "(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;", "toIsoString-impl", "toIsoString", "hashCode-impl", "(J)I", TTDownloadField.TT_HASHCODE, "", "equals-impl", "(JLjava/lang/Object;)Z", "equals", "getSecondsComponent-impl", "getSecondsComponent$annotations", "()V", "secondsComponent", "getInWholeMicroseconds-impl", "getInWholeMicroseconds$annotations", "inWholeMicroseconds", "getUnitDiscriminator-impl", "unitDiscriminator", "getInWholeDays-impl", "getInWholeDays$annotations", "inWholeDays", "getInWholeHours-impl", "getInWholeHours$annotations", "inWholeHours", "getAbsoluteValue-UwyO8pc", "absoluteValue", "getInWholeMilliseconds-impl", "getInWholeMilliseconds$annotations", "inWholeMilliseconds", "rawValue", "J", "getInMicroseconds-impl", "(J)D", "getInMicroseconds$annotations", "inMicroseconds", "getInDays-impl", "getInDays$annotations", "inDays", "getInSeconds-impl", "getInSeconds$annotations", "inSeconds", "getInMilliseconds-impl", "getInMilliseconds$annotations", "inMilliseconds", "getNanosecondsComponent-impl", "getNanosecondsComponent$annotations", "nanosecondsComponent", "getValue-impl", "getHoursComponent-impl", "getHoursComponent$annotations", "hoursComponent", "getStorageUnit-impl", "(J)Ljava/util/concurrent/TimeUnit;", "storageUnit", "getInMinutes-impl", "getInMinutes$annotations", "inMinutes", "getMinutesComponent-impl", "getMinutesComponent$annotations", "minutesComponent", "getInWholeNanoseconds-impl", "getInWholeNanoseconds$annotations", "inWholeNanoseconds", "getInWholeSeconds-impl", "getInWholeSeconds$annotations", "inWholeSeconds", "getInHours-impl", "getInHours$annotations", "inHours", "getInWholeMinutes-impl", "getInWholeMinutes$annotations", "inWholeMinutes", "getInNanoseconds-impl", "getInNanoseconds$annotations", "inNanoseconds", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@JvmInline
@ExperimentalTime
/* loaded from: classes.dex */
public final class Duration implements Comparable<Duration> {
    private final long rawValue;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long ZERO = m1320constructorimpl(0);
    private static final long INFINITE = DurationKt.access$durationOfMillis(DurationKt.MAX_MILLIS);
    private static final long NEG_INFINITE = DurationKt.access$durationOfMillis(-4611686018427387903L);

    /* compiled from: Duration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0019\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b%\u0010&J&\u0010\b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u0005J\u001d\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\u000fJ\u001d\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\u0010J\u001d\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\fJ\u001d\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u000fJ\u001d\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\fJ\u001d\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u000fJ\u001d\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u0010J\u001d\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\fJ\u001d\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u000fJ\u001d\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0010J\u001d\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\fJ\u001d\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u000fJ\u001d\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0010J\u001d\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\fJ\u001d\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u000fJ\u001d\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u0010J\u001d\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\fJ\u001d\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u000fJ\u001d\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u0010R\u001f\u0010\u001d\u001a\u00020\n8\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\"\u0010!\u001a\u00020\n8\u0000@\u0000X\u0080\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b!\u0010\u001e\u001a\u0004\b\"\u0010 R\u001f\u0010#\u001a\u00020\n8\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b#\u0010\u001e\u001a\u0004\b$\u0010 \u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006'"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "", "value", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "sourceUnit", "targetUnit", "convert", "", "Lkotlin/time/Duration;", "nanoseconds-UwyO8pc", "(I)J", "nanoseconds", "", "(J)J", "(D)J", "microseconds-UwyO8pc", "microseconds", "milliseconds-UwyO8pc", "milliseconds", "seconds-UwyO8pc", "seconds", "minutes-UwyO8pc", "minutes", "hours-UwyO8pc", "hours", "days-UwyO8pc", "days", "ZERO", "J", "getZERO-UwyO8pc", "()J", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "INFINITE", "getINFINITE-UwyO8pc", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public final double convert(double d4, @NotNull TimeUnit sourceUnit, @NotNull TimeUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d4, sourceUnit, targetUnit);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final long m1377daysUwyO8pc(int i2) {
            return DurationKt.toDuration(i2, TimeUnit.DAYS);
        }

        /* renamed from: getINFINITE-UwyO8pc  reason: not valid java name */
        public final long m1379getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib  reason: not valid java name */
        public final long m1380getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.NEG_INFINITE;
        }

        /* renamed from: getZERO-UwyO8pc  reason: not valid java name */
        public final long m1381getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final long m1383hoursUwyO8pc(int i2) {
            return DurationKt.toDuration(i2, TimeUnit.HOURS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final long m1386microsecondsUwyO8pc(int i2) {
            return DurationKt.toDuration(i2, TimeUnit.MICROSECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final long m1389millisecondsUwyO8pc(int i2) {
            return DurationKt.toDuration(i2, TimeUnit.MILLISECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final long m1392minutesUwyO8pc(int i2) {
            return DurationKt.toDuration(i2, TimeUnit.MINUTES);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final long m1395nanosecondsUwyO8pc(int i2) {
            return DurationKt.toDuration(i2, TimeUnit.NANOSECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final long m1398secondsUwyO8pc(int i2) {
            return DurationKt.toDuration(i2, TimeUnit.SECONDS);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final long m1378daysUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, TimeUnit.DAYS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final long m1384hoursUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, TimeUnit.HOURS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final long m1387microsecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, TimeUnit.MICROSECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final long m1390millisecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, TimeUnit.MILLISECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final long m1393minutesUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, TimeUnit.MINUTES);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final long m1396nanosecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, TimeUnit.NANOSECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final long m1399secondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, TimeUnit.SECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final long m1376daysUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, TimeUnit.DAYS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final long m1382hoursUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, TimeUnit.HOURS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final long m1385microsecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, TimeUnit.MICROSECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final long m1388millisecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, TimeUnit.MILLISECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final long m1391minutesUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, TimeUnit.MINUTES);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final long m1394nanosecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, TimeUnit.NANOSECONDS);
        }

        @SinceKotlin(version = "1.5")
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final long m1397secondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, TimeUnit.SECONDS);
        }
    }

    private /* synthetic */ Duration(long j4) {
        this.rawValue = j4;
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc  reason: not valid java name */
    private static final long m1317addValuesMixedRangesUwyO8pc(long j4, long j5, long j6) {
        long access$nanosToMillis = DurationKt.access$nanosToMillis(j6);
        long j7 = j5 + access$nanosToMillis;
        if (-4611686018426L <= j7 && 4611686018426L >= j7) {
            return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(j7) + (j6 - DurationKt.access$millisToNanos(access$nanosToMillis)));
        }
        return DurationKt.access$durationOfMillis(RangesKt.coerceIn(j7, -4611686018427387903L, (long) DurationKt.MAX_MILLIS));
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Duration m1318boximpl(long j4) {
        return new Duration(j4);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m1320constructorimpl(long j4) {
        if (m1351isInNanosimpl(j4)) {
            long m1347getValueimpl = m1347getValueimpl(j4);
            if (-4611686018426999999L > m1347getValueimpl || DurationKt.MAX_NANOS < m1347getValueimpl) {
                throw new AssertionError(m1347getValueimpl(j4) + " ns is out of nanoseconds range");
            }
        } else {
            long m1347getValueimpl2 = m1347getValueimpl(j4);
            if (-4611686018427387903L <= m1347getValueimpl2 && DurationKt.MAX_MILLIS >= m1347getValueimpl2) {
                long m1347getValueimpl3 = m1347getValueimpl(j4);
                if (-4611686018426L <= m1347getValueimpl3 && 4611686018426L >= m1347getValueimpl3) {
                    throw new AssertionError(m1347getValueimpl(j4) + " ms is denormalized");
                }
            } else {
                throw new AssertionError(m1347getValueimpl(j4) + " ms is out of milliseconds range");
            }
        }
        return j4;
    }

    /* renamed from: div-LRDsOJo  reason: not valid java name */
    public static final double m1321divLRDsOJo(long j4, long j5) {
        TimeUnit timeUnit = (TimeUnit) ComparisonsKt.maxOf(m1345getStorageUnitimpl(j4), m1345getStorageUnitimpl(j5));
        return m1364toDoubleimpl(j4, timeUnit) / m1364toDoubleimpl(j5, timeUnit);
    }

    /* renamed from: div-UwyO8pc  reason: not valid java name */
    public static final long m1323divUwyO8pc(long j4, int i2) {
        int sign;
        if (i2 == 0) {
            if (m1354isPositiveimpl(j4)) {
                return INFINITE;
            }
            if (m1353isNegativeimpl(j4)) {
                return NEG_INFINITE;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        } else if (m1351isInNanosimpl(j4)) {
            return DurationKt.access$durationOfNanos(m1347getValueimpl(j4) / i2);
        } else {
            if (m1352isInfiniteimpl(j4)) {
                sign = MathKt__MathJVMKt.getSign(i2);
                return m1359timesUwyO8pc(j4, sign);
            }
            long j5 = i2;
            long m1347getValueimpl = m1347getValueimpl(j4) / j5;
            if (-4611686018426L <= m1347getValueimpl && 4611686018426L >= m1347getValueimpl) {
                return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(m1347getValueimpl) + (DurationKt.access$millisToNanos(m1347getValueimpl(j4) - (m1347getValueimpl * j5)) / j5));
            }
            return DurationKt.access$durationOfMillis(m1347getValueimpl);
        }
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1324equalsimpl(long j4, Object obj) {
        return (obj instanceof Duration) && j4 == ((Duration) obj).m1375unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1325equalsimpl0(long j4, long j5) {
        return j4 == j5;
    }

    /* renamed from: getAbsoluteValue-UwyO8pc  reason: not valid java name */
    public static final long m1326getAbsoluteValueUwyO8pc(long j4) {
        return m1353isNegativeimpl(j4) ? m1373unaryMinusUwyO8pc(j4) : j4;
    }

    @PublishedApi
    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    /* renamed from: getHoursComponent-impl  reason: not valid java name */
    public static final int m1327getHoursComponentimpl(long j4) {
        if (m1352isInfiniteimpl(j4)) {
            return 0;
        }
        return (int) (m1336getInWholeHoursimpl(j4) % 24);
    }

    @Deprecated(message = "Use inWholeDays property instead or convert toDouble(DAYS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.DAYS)", imports = {}))
    public static /* synthetic */ void getInDays$annotations() {
    }

    /* renamed from: getInDays-impl  reason: not valid java name */
    public static final double m1328getInDaysimpl(long j4) {
        return m1364toDoubleimpl(j4, TimeUnit.DAYS);
    }

    @Deprecated(message = "Use inWholeHours property instead or convert toDouble(HOURS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.HOURS)", imports = {}))
    public static /* synthetic */ void getInHours$annotations() {
    }

    /* renamed from: getInHours-impl  reason: not valid java name */
    public static final double m1329getInHoursimpl(long j4) {
        return m1364toDoubleimpl(j4, TimeUnit.HOURS);
    }

    @Deprecated(message = "Use inWholeMicroseconds property instead or convert toDouble(MICROSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MICROSECONDS)", imports = {}))
    public static /* synthetic */ void getInMicroseconds$annotations() {
    }

    /* renamed from: getInMicroseconds-impl  reason: not valid java name */
    public static final double m1330getInMicrosecondsimpl(long j4) {
        return m1364toDoubleimpl(j4, TimeUnit.MICROSECONDS);
    }

    @Deprecated(message = "Use inWholeMilliseconds property instead or convert toDouble(MILLISECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MILLISECONDS)", imports = {}))
    public static /* synthetic */ void getInMilliseconds$annotations() {
    }

    /* renamed from: getInMilliseconds-impl  reason: not valid java name */
    public static final double m1331getInMillisecondsimpl(long j4) {
        return m1364toDoubleimpl(j4, TimeUnit.MILLISECONDS);
    }

    @Deprecated(message = "Use inWholeMinutes property instead or convert toDouble(MINUTES) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MINUTES)", imports = {}))
    public static /* synthetic */ void getInMinutes$annotations() {
    }

    /* renamed from: getInMinutes-impl  reason: not valid java name */
    public static final double m1332getInMinutesimpl(long j4) {
        return m1364toDoubleimpl(j4, TimeUnit.MINUTES);
    }

    @Deprecated(message = "Use inWholeNanoseconds property instead or convert toDouble(NANOSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.NANOSECONDS)", imports = {}))
    public static /* synthetic */ void getInNanoseconds$annotations() {
    }

    /* renamed from: getInNanoseconds-impl  reason: not valid java name */
    public static final double m1333getInNanosecondsimpl(long j4) {
        return m1364toDoubleimpl(j4, TimeUnit.NANOSECONDS);
    }

    @Deprecated(message = "Use inWholeSeconds property instead or convert toDouble(SECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.SECONDS)", imports = {}))
    public static /* synthetic */ void getInSeconds$annotations() {
    }

    /* renamed from: getInSeconds-impl  reason: not valid java name */
    public static final double m1334getInSecondsimpl(long j4) {
        return m1364toDoubleimpl(j4, TimeUnit.SECONDS);
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getInWholeDays$annotations() {
    }

    /* renamed from: getInWholeDays-impl  reason: not valid java name */
    public static final long m1335getInWholeDaysimpl(long j4) {
        return m1367toLongimpl(j4, TimeUnit.DAYS);
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getInWholeHours$annotations() {
    }

    /* renamed from: getInWholeHours-impl  reason: not valid java name */
    public static final long m1336getInWholeHoursimpl(long j4) {
        return m1367toLongimpl(j4, TimeUnit.HOURS);
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getInWholeMicroseconds$annotations() {
    }

    /* renamed from: getInWholeMicroseconds-impl  reason: not valid java name */
    public static final long m1337getInWholeMicrosecondsimpl(long j4) {
        return m1367toLongimpl(j4, TimeUnit.MICROSECONDS);
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getInWholeMilliseconds$annotations() {
    }

    /* renamed from: getInWholeMilliseconds-impl  reason: not valid java name */
    public static final long m1338getInWholeMillisecondsimpl(long j4) {
        return (m1350isInMillisimpl(j4) && m1349isFiniteimpl(j4)) ? m1347getValueimpl(j4) : m1367toLongimpl(j4, TimeUnit.MILLISECONDS);
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getInWholeMinutes$annotations() {
    }

    /* renamed from: getInWholeMinutes-impl  reason: not valid java name */
    public static final long m1339getInWholeMinutesimpl(long j4) {
        return m1367toLongimpl(j4, TimeUnit.MINUTES);
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getInWholeNanoseconds$annotations() {
    }

    /* renamed from: getInWholeNanoseconds-impl  reason: not valid java name */
    public static final long m1340getInWholeNanosecondsimpl(long j4) {
        long m1347getValueimpl = m1347getValueimpl(j4);
        if (m1351isInNanosimpl(j4)) {
            return m1347getValueimpl;
        }
        if (m1347getValueimpl > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (m1347getValueimpl < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return DurationKt.access$millisToNanos(m1347getValueimpl);
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void getInWholeSeconds$annotations() {
    }

    /* renamed from: getInWholeSeconds-impl  reason: not valid java name */
    public static final long m1341getInWholeSecondsimpl(long j4) {
        return m1367toLongimpl(j4, TimeUnit.SECONDS);
    }

    @PublishedApi
    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    /* renamed from: getMinutesComponent-impl  reason: not valid java name */
    public static final int m1342getMinutesComponentimpl(long j4) {
        if (m1352isInfiniteimpl(j4)) {
            return 0;
        }
        return (int) (m1339getInWholeMinutesimpl(j4) % 60);
    }

    @PublishedApi
    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    /* renamed from: getNanosecondsComponent-impl  reason: not valid java name */
    public static final int m1343getNanosecondsComponentimpl(long j4) {
        if (m1352isInfiniteimpl(j4)) {
            return 0;
        }
        return (int) (m1350isInMillisimpl(j4) ? DurationKt.access$millisToNanos(m1347getValueimpl(j4) % 1000) : m1347getValueimpl(j4) % 1000000000);
    }

    @PublishedApi
    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* renamed from: getSecondsComponent-impl  reason: not valid java name */
    public static final int m1344getSecondsComponentimpl(long j4) {
        if (m1352isInfiniteimpl(j4)) {
            return 0;
        }
        return (int) (m1341getInWholeSecondsimpl(j4) % 60);
    }

    /* renamed from: getStorageUnit-impl  reason: not valid java name */
    private static final TimeUnit m1345getStorageUnitimpl(long j4) {
        return m1351isInNanosimpl(j4) ? TimeUnit.NANOSECONDS : TimeUnit.MILLISECONDS;
    }

    /* renamed from: getUnitDiscriminator-impl  reason: not valid java name */
    private static final int m1346getUnitDiscriminatorimpl(long j4) {
        return ((int) j4) & 1;
    }

    /* renamed from: getValue-impl  reason: not valid java name */
    private static final long m1347getValueimpl(long j4) {
        return j4 >> 1;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1348hashCodeimpl(long j4) {
        return (int) (j4 ^ (j4 >>> 32));
    }

    /* renamed from: isFinite-impl  reason: not valid java name */
    public static final boolean m1349isFiniteimpl(long j4) {
        return !m1352isInfiniteimpl(j4);
    }

    /* renamed from: isInMillis-impl  reason: not valid java name */
    private static final boolean m1350isInMillisimpl(long j4) {
        return (((int) j4) & 1) == 1;
    }

    /* renamed from: isInNanos-impl  reason: not valid java name */
    private static final boolean m1351isInNanosimpl(long j4) {
        return (((int) j4) & 1) == 0;
    }

    /* renamed from: isInfinite-impl  reason: not valid java name */
    public static final boolean m1352isInfiniteimpl(long j4) {
        return j4 == INFINITE || j4 == NEG_INFINITE;
    }

    /* renamed from: isNegative-impl  reason: not valid java name */
    public static final boolean m1353isNegativeimpl(long j4) {
        return j4 < 0;
    }

    /* renamed from: isPositive-impl  reason: not valid java name */
    public static final boolean m1354isPositiveimpl(long j4) {
        return j4 > 0;
    }

    /* renamed from: minus-LRDsOJo  reason: not valid java name */
    public static final long m1355minusLRDsOJo(long j4, long j5) {
        return m1356plusLRDsOJo(j4, m1373unaryMinusUwyO8pc(j5));
    }

    /* renamed from: plus-LRDsOJo  reason: not valid java name */
    public static final long m1356plusLRDsOJo(long j4, long j5) {
        if (m1352isInfiniteimpl(j4)) {
            if (m1349isFiniteimpl(j5) || (j5 ^ j4) >= 0) {
                return j4;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        } else if (m1352isInfiniteimpl(j5)) {
            return j5;
        } else {
            if ((((int) j4) & 1) == (((int) j5) & 1)) {
                long m1347getValueimpl = m1347getValueimpl(j4) + m1347getValueimpl(j5);
                if (m1351isInNanosimpl(j4)) {
                    return DurationKt.access$durationOfNanosNormalized(m1347getValueimpl);
                }
                return DurationKt.access$durationOfMillisNormalized(m1347getValueimpl);
            } else if (m1350isInMillisimpl(j4)) {
                return m1317addValuesMixedRangesUwyO8pc(j4, m1347getValueimpl(j4), m1347getValueimpl(j5));
            } else {
                return m1317addValuesMixedRangesUwyO8pc(j4, m1347getValueimpl(j5), m1347getValueimpl(j4));
            }
        }
    }

    /* renamed from: precision-impl  reason: not valid java name */
    private static final int m1357precisionimpl(long j4, double d4) {
        if (d4 < 1) {
            return 3;
        }
        if (d4 < 10) {
            return 2;
        }
        return d4 < ((double) 100) ? 1 : 0;
    }

    /* renamed from: times-UwyO8pc  reason: not valid java name */
    public static final long m1359timesUwyO8pc(long j4, int i2) {
        int sign;
        int sign2;
        int sign3;
        int sign4;
        if (m1352isInfiniteimpl(j4)) {
            if (i2 != 0) {
                return i2 > 0 ? j4 : m1373unaryMinusUwyO8pc(j4);
            }
            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
        } else if (i2 == 0) {
            return ZERO;
        } else {
            long m1347getValueimpl = m1347getValueimpl(j4);
            long j5 = i2;
            long j6 = m1347getValueimpl * j5;
            if (!m1351isInNanosimpl(j4)) {
                if (j6 / j5 == m1347getValueimpl) {
                    return DurationKt.access$durationOfMillis(RangesKt.coerceIn(j6, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
                }
                sign = MathKt__MathJVMKt.getSign(m1347getValueimpl);
                sign2 = MathKt__MathJVMKt.getSign(i2);
                return sign * sign2 > 0 ? INFINITE : NEG_INFINITE;
            } else if (-2147483647L <= m1347getValueimpl && 2147483647L >= m1347getValueimpl) {
                return DurationKt.access$durationOfNanos(j6);
            } else {
                if (j6 / j5 == m1347getValueimpl) {
                    return DurationKt.access$durationOfNanosNormalized(j6);
                }
                long access$nanosToMillis = DurationKt.access$nanosToMillis(m1347getValueimpl);
                long j7 = access$nanosToMillis * j5;
                long access$nanosToMillis2 = DurationKt.access$nanosToMillis((m1347getValueimpl - DurationKt.access$millisToNanos(access$nanosToMillis)) * j5) + j7;
                if (j7 / j5 == access$nanosToMillis && (access$nanosToMillis2 ^ j7) >= 0) {
                    return DurationKt.access$durationOfMillis(RangesKt.coerceIn(access$nanosToMillis2, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
                }
                sign3 = MathKt__MathJVMKt.getSign(m1347getValueimpl);
                sign4 = MathKt__MathJVMKt.getSign(i2);
                return sign3 * sign4 > 0 ? INFINITE : NEG_INFINITE;
            }
        }
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m1363toComponentsimpl(long j4, @NotNull Function5<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf(m1365toIntimpl(j4, TimeUnit.DAYS)), Integer.valueOf(m1327getHoursComponentimpl(j4)), Integer.valueOf(m1342getMinutesComponentimpl(j4)), Integer.valueOf(m1344getSecondsComponentimpl(j4)), Integer.valueOf(m1343getNanosecondsComponentimpl(j4)));
    }

    /* renamed from: toDouble-impl  reason: not valid java name */
    public static final double m1364toDoubleimpl(long j4, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j4 == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j4 == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m1347getValueimpl(j4), m1345getStorageUnitimpl(j4), unit);
    }

    /* renamed from: toInt-impl  reason: not valid java name */
    public static final int m1365toIntimpl(long j4, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (int) RangesKt.coerceIn(m1367toLongimpl(j4, unit), Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    @NotNull
    /* renamed from: toIsoString-impl  reason: not valid java name */
    public static final String m1366toIsoStringimpl(long j4) {
        String padStart;
        StringBuilder sb = new StringBuilder();
        if (m1353isNegativeimpl(j4)) {
            sb.append('-');
        }
        sb.append("PT");
        long m1326getAbsoluteValueUwyO8pc = m1326getAbsoluteValueUwyO8pc(j4);
        int m1365toIntimpl = m1365toIntimpl(m1326getAbsoluteValueUwyO8pc, TimeUnit.HOURS);
        int m1342getMinutesComponentimpl = m1342getMinutesComponentimpl(m1326getAbsoluteValueUwyO8pc);
        int m1344getSecondsComponentimpl = m1344getSecondsComponentimpl(m1326getAbsoluteValueUwyO8pc);
        int m1343getNanosecondsComponentimpl = m1343getNanosecondsComponentimpl(m1326getAbsoluteValueUwyO8pc);
        boolean z3 = true;
        boolean z4 = m1365toIntimpl != 0;
        boolean z5 = (m1344getSecondsComponentimpl == 0 && m1343getNanosecondsComponentimpl == 0) ? false : true;
        if (m1342getMinutesComponentimpl == 0 && (!z5 || !z4)) {
            z3 = false;
        }
        if (z4) {
            sb.append(m1365toIntimpl);
            sb.append('H');
        }
        if (z3) {
            sb.append(m1342getMinutesComponentimpl);
            sb.append('M');
        }
        if (z5 || (!z4 && !z3)) {
            sb.append(m1344getSecondsComponentimpl);
            if (m1343getNanosecondsComponentimpl != 0) {
                sb.append(d.f65364a);
                padStart = StringsKt__StringsKt.padStart(String.valueOf(m1343getNanosecondsComponentimpl), 9, '0');
                if (m1343getNanosecondsComponentimpl % DurationKt.NANOS_IN_MILLIS == 0) {
                    sb.append((CharSequence) padStart, 0, 3);
                    Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
                } else if (m1343getNanosecondsComponentimpl % 1000 == 0) {
                    sb.append((CharSequence) padStart, 0, 6);
                    Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
                } else {
                    sb.append(padStart);
                }
            }
            sb.append('S');
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: toLong-impl  reason: not valid java name */
    public static final long m1367toLongimpl(long j4, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j4 == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j4 == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m1347getValueimpl(j4), m1345getStorageUnitimpl(j4), unit);
    }

    @Deprecated(message = "Use inWholeMilliseconds property instead.", replaceWith = @ReplaceWith(expression = "this.inWholeMilliseconds", imports = {}))
    /* renamed from: toLongMilliseconds-impl  reason: not valid java name */
    public static final long m1368toLongMillisecondsimpl(long j4) {
        return m1338getInWholeMillisecondsimpl(j4);
    }

    @Deprecated(message = "Use inWholeNanoseconds property instead.", replaceWith = @ReplaceWith(expression = "this.inWholeNanoseconds", imports = {}))
    /* renamed from: toLongNanoseconds-impl  reason: not valid java name */
    public static final long m1369toLongNanosecondsimpl(long j4) {
        return m1340getInWholeNanosecondsimpl(j4);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a5  */
    @org.jetbrains.annotations.NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1370toStringimpl(long r8) {
        /*
            r0 = 0
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 != 0) goto La
            java.lang.String r8 = "0s"
            goto Lc6
        La:
            long r0 = kotlin.time.Duration.INFINITE
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 != 0) goto L14
            java.lang.String r8 = "Infinity"
            goto Lc6
        L14:
            long r0 = kotlin.time.Duration.NEG_INFINITE
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 != 0) goto L1e
            java.lang.String r8 = "-Infinity"
            goto Lc6
        L1e:
            long r0 = m1326getAbsoluteValueUwyO8pc(r8)
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.NANOSECONDS
            double r0 = m1364toDoubleimpl(r0, r2)
            r3 = 4517329193108106637(0x3eb0c6f7a0b5ed8d, double:1.0E-6)
            r5 = 0
            r6 = 1
            int r7 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r7 >= 0) goto L38
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS
        L35:
            r0 = 0
            r5 = 1
            goto L95
        L38:
            double r3 = (double) r6
            int r7 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r7 >= 0) goto L3f
            r0 = 7
            goto L95
        L3f:
            r3 = 4652007308841189376(0x408f400000000000, double:1000.0)
            int r7 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r7 >= 0) goto L4a
        L48:
            r0 = 0
            goto L95
        L4a:
            r2 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L56
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MICROSECONDS
            goto L48
        L56:
            r2 = 4741671816366391296(0x41cdcd6500000000, double:1.0E9)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L62
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS
            goto L48
        L62:
            r2 = 4786511204640096256(0x426d1a94a2000000, double:1.0E12)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L6e
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS
            goto L48
        L6e:
            r2 = 4813020802404319232(0x42cb48eb57e00000, double:6.0E13)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L7a
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MINUTES
            goto L48
        L7a:
            r2 = 4839562400168542208(0x4329945ca2620000, double:3.6E15)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L86
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.HOURS
            goto L48
        L86:
            r2 = 4920018990336211136(0x44476b344f2a78c0, double:8.64E20)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L92
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.DAYS
            goto L48
        L92:
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.DAYS
            goto L35
        L95:
            double r3 = m1364toDoubleimpl(r8, r2)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            if (r5 == 0) goto La5
            java.lang.String r8 = kotlin.time.FormatToDecimalsKt.formatScientific(r3)
            goto Lb8
        La5:
            if (r0 <= 0) goto Lac
            java.lang.String r8 = kotlin.time.FormatToDecimalsKt.formatUpToDecimals(r3, r0)
            goto Lb8
        Lac:
            double r5 = java.lang.Math.abs(r3)
            int r8 = m1357precisionimpl(r8, r5)
            java.lang.String r8 = kotlin.time.FormatToDecimalsKt.formatToExactDecimals(r3, r8)
        Lb8:
            r1.append(r8)
            java.lang.String r8 = kotlin.time.DurationUnitKt__DurationUnitKt.shortName(r2)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
        Lc6:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.Duration.m1370toStringimpl(long):java.lang.String");
    }

    /* renamed from: toString-impl$default  reason: not valid java name */
    public static /* synthetic */ String m1372toStringimpl$default(long j4, TimeUnit timeUnit, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return m1371toStringimpl(j4, timeUnit, i2);
    }

    /* renamed from: unaryMinus-UwyO8pc  reason: not valid java name */
    public static final long m1373unaryMinusUwyO8pc(long j4) {
        return DurationKt.access$durationOf(-m1347getValueimpl(j4), ((int) j4) & 1);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m1374compareToLRDsOJo(duration.m1375unboximpl());
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public int m1374compareToLRDsOJo(long j4) {
        return m1319compareToLRDsOJo(this.rawValue, j4);
    }

    public boolean equals(Object obj) {
        return m1324equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m1348hashCodeimpl(this.rawValue);
    }

    @NotNull
    public String toString() {
        return m1370toStringimpl(this.rawValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m1375unboximpl() {
        return this.rawValue;
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public static int m1319compareToLRDsOJo(long j4, long j5) {
        long j6 = j4 ^ j5;
        if (j6 < 0 || (((int) j6) & 1) == 0) {
            return (j4 > j5 ? 1 : (j4 == j5 ? 0 : -1));
        }
        int i2 = (((int) j4) & 1) - (((int) j5) & 1);
        return m1353isNegativeimpl(j4) ? -i2 : i2;
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m1362toComponentsimpl(long j4, @NotNull Function4<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf(m1365toIntimpl(j4, TimeUnit.HOURS)), Integer.valueOf(m1342getMinutesComponentimpl(j4)), Integer.valueOf(m1344getSecondsComponentimpl(j4)), Integer.valueOf(m1343getNanosecondsComponentimpl(j4)));
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m1361toComponentsimpl(long j4, @NotNull Function3<? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf(m1365toIntimpl(j4, TimeUnit.MINUTES)), Integer.valueOf(m1344getSecondsComponentimpl(j4)), Integer.valueOf(m1343getNanosecondsComponentimpl(j4)));
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m1360toComponentsimpl(long j4, @NotNull Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1341getInWholeSecondsimpl(j4)), Integer.valueOf(m1343getNanosecondsComponentimpl(j4)));
    }

    /* renamed from: div-UwyO8pc  reason: not valid java name */
    public static final long m1322divUwyO8pc(long j4, double d4) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(d4);
        if (roundToInt == d4 && roundToInt != 0) {
            return m1323divUwyO8pc(j4, roundToInt);
        }
        TimeUnit m1345getStorageUnitimpl = m1345getStorageUnitimpl(j4);
        return DurationKt.toDuration(m1364toDoubleimpl(j4, m1345getStorageUnitimpl) / d4, m1345getStorageUnitimpl);
    }

    /* renamed from: times-UwyO8pc  reason: not valid java name */
    public static final long m1358timesUwyO8pc(long j4, double d4) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(d4);
        if (roundToInt == d4) {
            return m1359timesUwyO8pc(j4, roundToInt);
        }
        TimeUnit m1345getStorageUnitimpl = m1345getStorageUnitimpl(j4);
        return DurationKt.toDuration(m1364toDoubleimpl(j4, m1345getStorageUnitimpl) * d4, m1345getStorageUnitimpl);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static final String m1371toStringimpl(long j4, @NotNull TimeUnit unit, int i2) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (i2 >= 0) {
            double m1364toDoubleimpl = m1364toDoubleimpl(j4, unit);
            if (Double.isInfinite(m1364toDoubleimpl)) {
                return String.valueOf(m1364toDoubleimpl);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(Math.abs(m1364toDoubleimpl) < 1.0E14d ? FormatToDecimalsKt.formatToExactDecimals(m1364toDoubleimpl, RangesKt.coerceAtMost(i2, 12)) : FormatToDecimalsKt.formatScientific(m1364toDoubleimpl));
            sb.append(DurationUnitKt__DurationUnitKt.shortName(unit));
            return sb.toString();
        }
        throw new IllegalArgumentException(("decimals must be not negative, but was " + i2).toString());
    }
}
