.class public final Lkotlin/time/jdk8/DurationConversionsJDK8Kt;
.super Ljava/lang/Object;
.source "DurationConversions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDurationConversions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DurationConversions.kt\nkotlin/time/jdk8/DurationConversionsJDK8Kt\n+ 2 Duration.kt\nkotlin/time/Duration\n*L\n1#1,35:1\n437#2,2:36\n*S KotlinDebug\n*F\n+ 1 DurationConversions.kt\nkotlin/time/jdk8/DurationConversionsJDK8Kt\n*L\n35#1:36,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0017\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u001a\u0010\u0006\u001a\u00020\u0000*\u00020\u0001H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "Ljava/time/Duration;",
        "Lkotlin/time/Duration;",
        "toKotlinDuration",
        "(Ljava/time/Duration;)J",
        "toJavaDuration-LRDsOJo",
        "(J)Ljava/time/Duration;",
        "toJavaDuration",
        "kotlin-stdlib-jdk8"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    pn = "kotlin.time"
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "DurationConversionsJDK8Kt"
.end annotation


# direct methods
.method private static final toJavaDuration-LRDsOJo(J)Ljava/time/Duration;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    int-to-long p0, p0

    .line 2
    invoke-static {v0, v1, p0, p1}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    const-string p1, "toComponents { seconds, \u2026, nanoseconds.toLong()) }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final toKotlinDuration(Ljava/time/Duration;)J
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lkotlin/time/Duration$Companion;->seconds-UwyO8pc(J)J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/time/Duration$Companion;->nanoseconds-UwyO8pc(I)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method
