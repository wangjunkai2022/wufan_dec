.class final Lkotlin/time/AbstractLongTimeSource$LongTimeMark;
.super Lkotlin/time/TimeMark;
.source "TimeSources.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/AbstractLongTimeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongTimeMark"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0005\u001a\u00020\u0002H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\t\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000f\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/time/AbstractLongTimeSource$LongTimeMark;",
        "Lkotlin/time/TimeMark;",
        "Lkotlin/time/Duration;",
        "elapsedNow-UwyO8pc",
        "()J",
        "elapsedNow",
        "duration",
        "plus-LRDsOJo",
        "(J)Lkotlin/time/TimeMark;",
        "plus",
        "Lkotlin/time/AbstractLongTimeSource;",
        "timeSource",
        "Lkotlin/time/AbstractLongTimeSource;",
        "",
        "startedAt",
        "J",
        "offset",
        "<init>",
        "(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final offset:J

.field private final startedAt:J

.field private final timeSource:Lkotlin/time/AbstractLongTimeSource;


# direct methods
.method private constructor <init>(JLkotlin/time/AbstractLongTimeSource;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/time/TimeMark;-><init>()V

    iput-wide p1, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    iput-object p3, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    iput-wide p4, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;-><init>(JLkotlin/time/AbstractLongTimeSource;J)V

    return-void
.end method


# virtual methods
.method public elapsedNow-UwyO8pc()J
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    invoke-virtual {v0}, Lkotlin/time/AbstractLongTimeSource;->read()J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    invoke-virtual {v2}, Lkotlin/time/AbstractLongTimeSource;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public plus-LRDsOJo(J)Lkotlin/time/TimeMark;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;

    iget-wide v1, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    iget-object v3, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    iget-wide v4, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    invoke-static {v4, v5, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;-><init>(JLkotlin/time/AbstractLongTimeSource;J)V

    return-object v6
.end method
