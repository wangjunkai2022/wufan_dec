.class public final Lkotlinx/coroutines/sync/SemaphoreKt;
.super Ljava/lang/Object;
.source "Semaphore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u001a\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0000\u001a8\u0010\u0008\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0005*\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0086H\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u001a\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\"\u001c\u0010\u0013\u001a\u00020\u00008\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u0012\u0004\u0008\u0011\u0010\u0012\"\u001c\u0010\u0018\u001a\u00020\u00148\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u0012\u0004\u0008\u0017\u0010\u0012\"\u001c\u0010\u001b\u001a\u00020\u00148\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0016\u0012\u0004\u0008\u001a\u0010\u0012\"\u001c\u0010\u001d\u001a\u00020\u00008\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0010\u0012\u0004\u0008\u001c\u0010\u0012\"\u001c\u0010 \u001a\u00020\u00148\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0016\u0012\u0004\u0008\u001f\u0010\u0012\"\u001c\u0010#\u001a\u00020\u00148\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0016\u0012\u0004\u0008\"\u0010\u0012\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "",
        "permits",
        "acquiredPermits",
        "Lkotlinx/coroutines/sync/d;",
        "a",
        "T",
        "Lkotlin/Function0;",
        "action",
        "q",
        "(Lkotlinx/coroutines/sync/d;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "id",
        "Lkotlinx/coroutines/sync/e;",
        "prev",
        "j",
        "f",
        "I",
        "getSEGMENT_SIZE$annotations",
        "()V",
        "SEGMENT_SIZE",
        "Lkotlinx/coroutines/internal/i0;",
        "b",
        "Lkotlinx/coroutines/internal/i0;",
        "getPERMIT$annotations",
        "PERMIT",
        "d",
        "getBROKEN$annotations",
        "BROKEN",
        "getMAX_SPIN_CYCLES$annotations",
        "MAX_SPIN_CYCLES",
        "c",
        "getTAKEN$annotations",
        "TAKEN",
        "e",
        "getCANCELLED$annotations",
        "CANCELLED",
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
.field private static final a:I

.field private static final b:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    .line 1
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/internal/k0;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->a:I

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->b:Lkotlinx/coroutines/internal/i0;

    .line 3
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->c:Lkotlinx/coroutines/internal/i0;

    .line 4
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->d:Lkotlinx/coroutines/internal/i0;

    .line 5
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->e:Lkotlinx/coroutines/internal/i0;

    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 6
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/k0;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->f:I

    return-void
.end method

.method public static final a(II)Lkotlinx/coroutines/sync/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;-><init>(II)V

    return-object v0
.end method

.method public static synthetic b(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/d;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreKt;->a(II)Lkotlinx/coroutines/sync/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(JLkotlinx/coroutines/sync/e;)Lkotlinx/coroutines/sync/e;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/sync/SemaphoreKt;->j(JLkotlinx/coroutines/sync/e;)Lkotlinx/coroutines/sync/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->d:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->e:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/sync/SemaphoreKt;->a:I

    return v0
.end method

.method public static final synthetic g()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->b:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic h()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/sync/SemaphoreKt;->f:I

    return v0
.end method

.method public static final synthetic i()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->c:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method private static final j(JLkotlinx/coroutines/sync/e;)Lkotlinx/coroutines/sync/e;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/sync/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlinx/coroutines/sync/e;-><init>(JLkotlinx/coroutines/sync/e;I)V

    return-object v0
.end method

.method private static synthetic k()V
    .locals 0

    return-void
.end method

.method private static synthetic l()V
    .locals 0

    return-void
.end method

.method private static synthetic m()V
    .locals 0

    return-void
.end method

.method private static synthetic n()V
    .locals 0

    return-void
.end method

.method private static synthetic o()V
    .locals 0

    return-void
.end method

.method private static synthetic p()V
    .locals 0

    return-void
.end method

.method public static final q(Lkotlinx/coroutines/sync/d;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/sync/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/sync/d;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;

    iget v1, v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object p0, v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/d;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;->b:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/sync/SemaphoreKt$withPermit$1;->d:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/sync/d;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 6
    invoke-interface {p0}, Lkotlinx/coroutines/sync/d;->release()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 8
    invoke-interface {p0}, Lkotlinx/coroutines/sync/d;->release()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method private static final r(Lkotlinx/coroutines/sync/d;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/sync/d;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2}, Lkotlinx/coroutines/sync/d;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 2
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/sync/d;->release()V

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 5
    invoke-interface {p0}, Lkotlinx/coroutines/sync/d;->release()V

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method
