.class public final Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "Duration.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1014:1\n1#2:1015\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\u00087\u001a\"\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\"\u0010\u0005\u001a\u00020\u0004*\u00020\u00072\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0008\u001a\"\u0010\u0005\u001a\u00020\u0004*\u00020\t2\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\n\u001a\u001f\u0010\u000e\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a\u001f\u0010\u000e\u001a\u00020\u0004*\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0087\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0002\u001a\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0002\u001a\u001a\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0007H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u001a\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0007H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u0017\u001a\"\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0000H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001a\u001a\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0007H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u0017\u001a\u001a\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0007H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u0017\"#\u0010$\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\"\u0010#\u001a\u0004\u0008 \u0010!\"#\u0010)\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\'\u0010(\u001a\u0004\u0008%\u0010&\"#\u0010,\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008+\u0010#\u001a\u0004\u0008*\u0010!\"#\u0010/\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008.\u0010(\u001a\u0004\u0008-\u0010&\"#\u00102\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u00081\u0010#\u001a\u0004\u00080\u0010!\"#\u00105\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u00084\u0010(\u001a\u0004\u00083\u0010&\"#\u00105\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u00084\u0010#\u001a\u0004\u00083\u0010!\"#\u0010,\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008+\u00106\u001a\u0004\u0008*\u0010\u0017\"#\u0010)\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\'\u00106\u001a\u0004\u0008%\u0010\u0017\"#\u00109\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u00088\u0010(\u001a\u0004\u00087\u0010&\"#\u0010)\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\'\u0010#\u001a\u0004\u0008%\u0010!\"#\u00109\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u00088\u00106\u001a\u0004\u00087\u0010\u0017\"\u0016\u0010:\u001a\u00020\u00008\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008:\u0010;\"#\u00105\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u00084\u00106\u001a\u0004\u00083\u0010\u0017\"\u0016\u0010<\u001a\u00020\u00078\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008<\u0010=\"#\u0010$\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\"\u00106\u001a\u0004\u0008 \u0010\u0017\"\u0016\u0010>\u001a\u00020\u00078\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008>\u0010=\"#\u0010$\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\"\u0010(\u001a\u0004\u0008 \u0010&\"#\u00102\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u00081\u0010(\u001a\u0004\u00080\u0010&\"\u0016\u0010?\u001a\u00020\u00078\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008?\u0010=\"#\u00102\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u00081\u00106\u001a\u0004\u00080\u0010\u0017\"#\u0010/\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008.\u00106\u001a\u0004\u0008-\u0010\u0017\"#\u00109\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u00088\u0010#\u001a\u0004\u00087\u0010!\"#\u0010,\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008+\u0010(\u001a\u0004\u0008*\u0010&\"#\u0010/\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008.\u0010#\u001a\u0004\u0008-\u0010!\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006@"
    }
    d2 = {
        "",
        "Ljava/util/concurrent/TimeUnit;",
        "Lkotlin/time/DurationUnit;",
        "unit",
        "Lkotlin/time/Duration;",
        "toDuration",
        "(ILjava/util/concurrent/TimeUnit;)J",
        "",
        "(JLjava/util/concurrent/TimeUnit;)J",
        "",
        "(DLjava/util/concurrent/TimeUnit;)J",
        "duration",
        "times-mvk6XK0",
        "(IJ)J",
        "times",
        "times-kIfJnKk",
        "(DJ)J",
        "nanos",
        "nanosToMillis",
        "millis",
        "millisToNanos",
        "normalNanos",
        "durationOfNanos",
        "(J)J",
        "normalMillis",
        "durationOfMillis",
        "normalValue",
        "unitDiscriminator",
        "durationOf",
        "(JI)J",
        "durationOfNanosNormalized",
        "durationOfMillisNormalized",
        "getNanoseconds",
        "(D)J",
        "getNanoseconds$annotations",
        "(D)V",
        "nanoseconds",
        "getMilliseconds",
        "(I)J",
        "getMilliseconds$annotations",
        "(I)V",
        "milliseconds",
        "getMicroseconds",
        "getMicroseconds$annotations",
        "microseconds",
        "getSeconds",
        "getSeconds$annotations",
        "seconds",
        "getHours",
        "getHours$annotations",
        "hours",
        "getMinutes",
        "getMinutes$annotations",
        "minutes",
        "(J)V",
        "getDays",
        "getDays$annotations",
        "days",
        "NANOS_IN_MILLIS",
        "I",
        "MAX_MILLIS",
        "J",
        "MAX_NANOS_IN_MILLIS",
        "MAX_NANOS",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final MAX_MILLIS:J = 0x3fffffffffffffffL

.field public static final MAX_NANOS:J = 0x3ffffffffffa14bfL

.field private static final MAX_NANOS_IN_MILLIS:J = 0x431bde82d7aL

.field public static final NANOS_IN_MILLIS:I = 0xf4240


# direct methods
.method public static final synthetic access$durationOf(JI)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/time/DurationKt;->durationOf(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfMillis(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfMillisNormalized(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfNanos(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfNanosNormalized(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanosNormalized(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$millisToNanos(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$nanosToMillis(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final durationOf(JI)J
    .locals 2
    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    int-to-long v0, p2

    add-long/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final durationOfMillis(J)J
    .locals 2
    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final durationOfMillisNormalized(J)J
    .locals 6
    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    const-wide v0, -0x431bde82d7aL

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x431bde82d7aL

    cmp-long v2, v0, p0

    if-ltz v2, :cond_1

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    move-wide v0, p0

    .line 2
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method private static final durationOfNanos(J)J
    .locals 1
    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final durationOfNanosNormalized(J)J
    .locals 3
    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    const-wide v0, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3ffffffffffa14bfL    # 1.9999999999138678

    cmp-long v2, v0, p0

    if-ltz v2, :cond_1

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static final getDays(D)J
    .locals 1

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getDays(I)J
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lkotlin/time/DurationKt;->toDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getDays(J)J
    .locals 1

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getDays$annotations(D)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.days() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.days(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getDays$annotations(I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.days() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.days(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getDays$annotations(J)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.days() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.days(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static final getHours(D)J
    .locals 1

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getHours(I)J
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lkotlin/time/DurationKt;->toDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getHours(J)J
    .locals 1

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getHours$annotations(D)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.hours() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.hours(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getHours$annotations(I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.hours() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.hours(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getHours$annotations(J)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.hours() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.hours(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static final getMicroseconds(D)J
    .locals 1

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMicroseconds(I)J
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lkotlin/time/DurationKt;->toDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getMicroseconds(J)J
    .locals 1

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getMicroseconds$annotations(D)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.microseconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.microseconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getMicroseconds$annotations(I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.microseconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.microseconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getMicroseconds$annotations(J)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.microseconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.microseconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static final getMilliseconds(D)J
    .locals 1

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMilliseconds(I)J
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lkotlin/time/DurationKt;->toDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getMilliseconds(J)J
    .locals 1

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getMilliseconds$annotations(D)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.milliseconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.milliseconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getMilliseconds$annotations(I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.milliseconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.milliseconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getMilliseconds$annotations(J)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.milliseconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.milliseconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static final getMinutes(D)J
    .locals 1

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMinutes(I)J
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lkotlin/time/DurationKt;->toDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getMinutes(J)J
    .locals 1

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getMinutes$annotations(D)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.minutes() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.minutes(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getMinutes$annotations(I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.minutes() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.minutes(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getMinutes$annotations(J)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.minutes() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.minutes(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static final getNanoseconds(D)J
    .locals 1

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getNanoseconds(I)J
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lkotlin/time/DurationKt;->toDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getNanoseconds(J)J
    .locals 1

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getNanoseconds$annotations(D)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.nanoseconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.nanoseconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getNanoseconds$annotations(I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.nanoseconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.nanoseconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getNanoseconds$annotations(J)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.nanoseconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.nanoseconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static final getSeconds(D)J
    .locals 1

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getSeconds(I)J
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lkotlin/time/DurationKt;->toDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getSeconds(J)J
    .locals 1

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getSeconds$annotations(D)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.seconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.seconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getSeconds$annotations(I)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.seconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.seconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static synthetic getSeconds$annotations(J)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Duration.seconds() function instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Duration.seconds(this)"
            imports = {
                "kotlin.time.Duration"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method private static final millisToNanos(J)J
    .locals 2

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long p0, p0, v0

    return-wide p0
.end method

.method private static final nanosToMillis(J)J
    .locals 2

    const v0, 0xf4240

    int-to-long v0, v0

    .line 1
    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static final times-kIfJnKk(DJ)J
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .line 1
    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->times-UwyO8pc(JD)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final times-mvk6XK0(IJ)J
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .line 1
    invoke-static {p1, p2, p0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toDuration(DLjava/util/concurrent/TimeUnit;)J
    .locals 7
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    double-to-long v0, v0

    const-wide v2, 0x3ffffffffffa14bfL    # 1.9999999999138678

    const-wide v4, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    .line 10
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    double-to-long p0, p0

    .line 12
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    :goto_1
    return-wide p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration value cannot be NaN."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toDuration(ILjava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    int-to-long v0, p0

    .line 2
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1, p0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    int-to-long v0, p0

    .line 3
    invoke-static {v0, v1, p1}, Lkotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final toDuration(JLjava/util/concurrent/TimeUnit;)J
    .locals 7
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    neg-long v3, v1

    cmp-long v5, v3, p0

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v3, v1, p0

    if-ltz v3, :cond_1

    .line 5
    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 7
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method
