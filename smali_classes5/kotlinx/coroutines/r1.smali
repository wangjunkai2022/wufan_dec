.class public final Lkotlinx/coroutines/r1;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0000\"\u001c\u0010\n\u001a\u00020\u00058\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u0012\u0004\u0008\u0008\u0010\t\"\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u000c\"\u001c\u0010\u0010\u001a\u00020\u00058\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0007\u0012\u0004\u0008\u000f\u0010\t\"\u0016\u0010\u0011\u001a\u00020\u000b8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u000c\"\u0016\u0010\u0014\u001a\u00020\u00008\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\"\u0016\u0010\u0016\u001a\u00020\u000b8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u000c\"\u0016\u0010\u0018\u001a\u00020\u00008\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0013\"\u0016\u0010\u001a\u001a\u00020\u00008\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0013*\u001e\u0008\u0002\u0010\u001d\u001a\u0004\u0008\u0000\u0010\u001b\"\u0008\u0012\u0004\u0012\u00028\u00000\u001c2\u0008\u0012\u0004\u0012\u00028\u00000\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "",
        "timeMillis",
        "d",
        "timeNanos",
        "c",
        "Lkotlinx/coroutines/internal/i0;",
        "h",
        "Lkotlinx/coroutines/internal/i0;",
        "getCLOSED_EMPTY$annotations",
        "()V",
        "CLOSED_EMPTY",
        "",
        "I",
        "SCHEDULE_COMPLETED",
        "a",
        "getDISPOSED_TASK$annotations",
        "DISPOSED_TASK",
        "SCHEDULE_DISPOSED",
        "f",
        "J",
        "MAX_MS",
        "b",
        "SCHEDULE_OK",
        "e",
        "MS_TO_NS",
        "g",
        "MAX_DELAY_NS",
        "T",
        "Lkotlinx/coroutines/internal/v;",
        "Queue",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final a:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:J = 0xf4240L

.field private static final f:J = 0x8637bd05af6L

.field private static final g:J = 0x3fffffffffffffffL

.field private static final h:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/r1;->a:Lkotlinx/coroutines/internal/i0;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/r1;->h:Lkotlinx/coroutines/internal/i0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/r1;->h:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/r1;->a:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final c(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 1
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static final d(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p0

    :goto_0
    return-wide v0
.end method

.method private static synthetic e()V
    .locals 0

    return-void
.end method

.method private static synthetic f()V
    .locals 0

    return-void
.end method
