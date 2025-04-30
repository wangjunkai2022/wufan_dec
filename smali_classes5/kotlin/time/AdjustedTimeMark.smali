.class final Lkotlin/time/AdjustedTimeMark;
.super Lkotlin/time/TimeMark;
.source "TimeSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0003\u0018\u00002\u00020\u0001B\u001a\u0012\u0006\u0010\n\u001a\u00020\u0001\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0005\u001a\u00020\u0002H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\t\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\n\u001a\u00020\u00018\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001f\u0010\u000e\u001a\u00020\u00028\u0006@\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0004\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/time/AdjustedTimeMark;",
        "Lkotlin/time/TimeMark;",
        "Lkotlin/time/Duration;",
        "elapsedNow-UwyO8pc",
        "()J",
        "elapsedNow",
        "duration",
        "plus-LRDsOJo",
        "(J)Lkotlin/time/TimeMark;",
        "plus",
        "mark",
        "Lkotlin/time/TimeMark;",
        "getMark",
        "()Lkotlin/time/TimeMark;",
        "adjustment",
        "J",
        "getAdjustment-UwyO8pc",
        "<init>",
        "(Lkotlin/time/TimeMark;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation build Lkotlin/time/ExperimentalTime;
.end annotation


# instance fields
.field private final adjustment:J

.field private final mark:Lkotlin/time/TimeMark;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlin/time/TimeMark;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/time/TimeMark;-><init>()V

    iput-object p1, p0, Lkotlin/time/AdjustedTimeMark;->mark:Lkotlin/time/TimeMark;

    iput-wide p2, p0, Lkotlin/time/AdjustedTimeMark;->adjustment:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/time/TimeMark;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lkotlin/time/AdjustedTimeMark;-><init>(Lkotlin/time/TimeMark;J)V

    return-void
.end method


# virtual methods
.method public elapsedNow-UwyO8pc()J
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/time/AdjustedTimeMark;->mark:Lkotlin/time/TimeMark;

    invoke-virtual {v0}, Lkotlin/time/TimeMark;->elapsedNow-UwyO8pc()J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AdjustedTimeMark;->adjustment:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAdjustment-UwyO8pc()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/AdjustedTimeMark;->adjustment:J

    return-wide v0
.end method

.method public final getMark()Lkotlin/time/TimeMark;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/time/AdjustedTimeMark;->mark:Lkotlin/time/TimeMark;

    return-object v0
.end method

.method public plus-LRDsOJo(J)Lkotlin/time/TimeMark;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/time/AdjustedTimeMark;

    iget-object v1, p0, Lkotlin/time/AdjustedTimeMark;->mark:Lkotlin/time/TimeMark;

    iget-wide v2, p0, Lkotlin/time/AdjustedTimeMark;->adjustment:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    invoke-direct {v0, v1, p1, p2}, Lkotlin/time/AdjustedTimeMark;-><init>(Lkotlin/time/TimeMark;J)V

    return-object v0
.end method
