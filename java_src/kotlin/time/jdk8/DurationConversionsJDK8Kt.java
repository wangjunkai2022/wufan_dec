package kotlin.time.jdk8;

import java.time.Duration;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.ExperimentalTime;
/* compiled from: DurationConversions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0017\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001a\u0010\u0006\u001a\u00020\u0000*\u00020\u0001H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0007"}, d2 = {"Ljava/time/Duration;", "Lkotlin/time/Duration;", "toKotlinDuration", "(Ljava/time/Duration;)J", "toJavaDuration-LRDsOJo", "(J)Ljava/time/Duration;", "toJavaDuration", "kotlin-stdlib-jdk8"}, k = 2, mv = {1, 5, 1}, pn = "kotlin.time")
@JvmName(name = "DurationConversionsJDK8Kt")
/* loaded from: classes5.dex */
public final class DurationConversionsJDK8Kt {
    @SinceKotlin(version = "1.3")
    @InlineOnly
    @ExperimentalTime
    /* renamed from: toJavaDuration-LRDsOJo  reason: not valid java name */
    private static final Duration m1409toJavaDurationLRDsOJo(long j4) {
        Duration ofSeconds = Duration.ofSeconds(kotlin.time.Duration.m1341getInWholeSecondsimpl(j4), kotlin.time.Duration.m1343getNanosecondsComponentimpl(j4));
        Intrinsics.checkNotNullExpressionValue(ofSeconds, "toComponents { seconds, …, nanoseconds.toLong()) }");
        return ofSeconds;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    @ExperimentalTime
    private static final long toKotlinDuration(Duration duration) {
        Duration.Companion companion = kotlin.time.Duration.Companion;
        return kotlin.time.Duration.m1356plusLRDsOJo(companion.m1399secondsUwyO8pc(duration.getSeconds()), companion.m1395nanosecondsUwyO8pc(duration.getNano()));
    }
}
