.class final Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;
.super Lkotlin/time/TimeMark;
.source "TimeSources.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/AbstractDoubleTimeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleTimeMark"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\n\u001a\u00020\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0005\u001a\u00020\u0002H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\t\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;",
        "Lkotlin/time/TimeMark;",
        "Lkotlin/time/Duration;",
        "elapsedNow-UwyO8pc",
        "()J",
        "elapsedNow",
        "duration",
        "plus-LRDsOJo",
        "(J)Lkotlin/time/TimeMark;",
        "plus",
        "offset",
        "J",
        "Lkotlin/time/AbstractDoubleTimeSource;",
        "timeSource",
        "Lkotlin/time/AbstractDoubleTimeSource;",
        "",
        "startedAt",
        "D",
        "<init>",
        "(DLkotlin/time/AbstractDoubleTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field private final startedAt:D

.field private final timeSource:Lkotlin/time/AbstractDoubleTimeSource;


# direct methods
.method private constructor <init>(DLkotlin/time/AbstractDoubleTimeSource;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/time/TimeMark;-><init>()V

    iput-wide p1, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->startedAt:D

    iput-object p3, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->timeSource:Lkotlin/time/AbstractDoubleTimeSource;

    iput-wide p4, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(DLkotlin/time/AbstractDoubleTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;-><init>(DLkotlin/time/AbstractDoubleTimeSource;J)V

    return-void
.end method


# virtual methods
.method public elapsedNow-UwyO8pc()J
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->timeSource:Lkotlin/time/AbstractDoubleTimeSource;

    invoke-virtual {v0}, Lkotlin/time/AbstractDoubleTimeSource;->read()D

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->startedAt:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->timeSource:Lkotlin/time/AbstractDoubleTimeSource;

    invoke-virtual {v2}, Lkotlin/time/AbstractDoubleTimeSource;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->offset:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public plus-LRDsOJo(J)Lkotlin/time/TimeMark;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;

    iget-wide v1, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->startedAt:D

    iget-object v3, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->timeSource:Lkotlin/time/AbstractDoubleTimeSource;

    iget-wide v4, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->offset:J

    invoke-static {v4, v5, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;-><init>(DLkotlin/time/AbstractDoubleTimeSource;J)V

    return-object v6
.end method
