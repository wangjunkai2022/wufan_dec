.class public abstract Lkotlin/time/AbstractLongTimeSource;
.super Ljava/lang/Object;
.source "TimeSources.kt"

# interfaces
.implements Lkotlin/time/TimeSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/AbstractLongTimeSource$LongTimeMark;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\'\u0018\u00002\u00020\u0001:\u0001\u000eB\u0013\u0012\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H$J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016R \u0010\u0008\u001a\u00060\u0006j\u0002`\u00078\u0004@\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/time/AbstractLongTimeSource;",
        "Lkotlin/time/TimeSource;",
        "",
        "read",
        "Lkotlin/time/TimeMark;",
        "markNow",
        "Ljava/util/concurrent/TimeUnit;",
        "Lkotlin/time/DurationUnit;",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "getUnit",
        "()Ljava/util/concurrent/TimeUnit;",
        "<init>",
        "(Ljava/util/concurrent/TimeUnit;)V",
        "LongTimeMark",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation

.annotation build Lkotlin/time/ExperimentalTime;
.end annotation


# instance fields
.field private final unit:Ljava/util/concurrent/TimeUnit;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/time/AbstractLongTimeSource;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method protected final getUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public markNow()Lkotlin/time/TimeMark;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;

    invoke-virtual {p0}, Lkotlin/time/AbstractLongTimeSource;->read()J

    move-result-wide v1

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;-><init>(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method protected abstract read()J
.end method
