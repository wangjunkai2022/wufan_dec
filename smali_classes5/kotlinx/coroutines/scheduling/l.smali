.class public final Lkotlinx/coroutines/scheduling/l;
.super Ljava/lang/Object;
.source "Tasks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\"\u0016\u0010\u0003\u001a\u00020\u00008\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0001\u0010\u0002\"\u0016\u0010\u0007\u001a\u00020\u00048\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\"\u0016\u0010\u000b\u001a\u00020\u00088\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\"\u0016\u0010\r\u001a\u00020\u00088\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\n\"\u0016\u0010\u0011\u001a\u00020\u000e8\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\"\u0016\u0010\u0013\u001a\u00020\u000e8\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0010\"\u0016\u0010\u0015\u001a\u00020\u000e8\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0010\"\u0016\u0010\u0017\u001a\u00020\u00048\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0006\"\u0016\u0010\u0019\u001a\u00020\u000e8\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0010\"\u001b\u0010\u001d\u001a\u00020\u001b*\u00020\u001a8\u00c0\u0002@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u001c\"\u0016\u0010\u001f\u001a\u00020\u000e8\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/h;",
        "h",
        "Lkotlinx/coroutines/scheduling/h;",
        "schedulerTimeSource",
        "",
        "g",
        "J",
        "IDLE_WORKER_KEEP_ALIVE_NS",
        "",
        "b",
        "Ljava/lang/String;",
        "DEFAULT_SCHEDULER_NAME",
        "a",
        "DEFAULT_DISPATCHER_NAME",
        "",
        "d",
        "I",
        "BLOCKING_DEFAULT_PARALLELISM",
        "e",
        "CORE_POOL_SIZE",
        "j",
        "TASK_PROBABLY_BLOCKING",
        "c",
        "WORK_STEALING_TIME_RESOLUTION_NS",
        "f",
        "MAX_POOL_SIZE",
        "Lkotlinx/coroutines/scheduling/i;",
        "",
        "(Lkotlinx/coroutines/scheduling/i;)Z",
        "isBlocking",
        "i",
        "TASK_NON_BLOCKING",
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
.field public static final a:Ljava/lang/String; = "Dispatchers.Default"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "DefaultDispatcher"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final d:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final e:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final f:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final g:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static h:Lkotlinx/coroutines/scheduling/h; = null
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:I = 0x0

.field public static final j:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 1
    invoke-static/range {v0 .. v8}, Lkotlinx/coroutines/internal/k0;->g(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/l;->c:J

    const-string v2, "kotlinx.coroutines.scheduler.blocking.parallelism"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/k0;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/l;->d:I

    .line 3
    invoke-static {}, Lkotlinx/coroutines/internal/k0;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v4, 0x1

    const/16 v6, 0x8

    .line 4
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/k0;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/l;->e:I

    .line 5
    invoke-static {}, Lkotlinx/coroutines/internal/k0;->a()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    const v2, 0x1ffffe

    invoke-static {v1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    const-string v3, "kotlinx.coroutines.scheduler.max.pool.size"

    const v6, 0x1ffffe

    const/4 v7, 0x4

    .line 6
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/internal/k0;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/l;->f:I

    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 8
    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/k0;->g(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/l;->g:J

    .line 10
    sget-object v0, Lkotlinx/coroutines/scheduling/f;->a:Lkotlinx/coroutines/scheduling/f;

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->h:Lkotlinx/coroutines/scheduling/h;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/scheduling/i;)Z
    .locals 1
    .param p0    # Lkotlinx/coroutines/scheduling/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/i;->b:Lkotlinx/coroutines/scheduling/j;

    invoke-interface {p0}, Lkotlinx/coroutines/scheduling/j;->r()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
