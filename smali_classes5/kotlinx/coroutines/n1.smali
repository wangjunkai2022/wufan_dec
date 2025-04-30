.class public abstract Lkotlinx/coroutines/n1;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "EventLoop.common.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,529:1\n1#2:530\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0006\u0010\u0007\u001a\u00020\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0012\u0010\u000c\u001a\u00020\u000b2\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\tJ\u0010\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u000f\u001a\u00020\u000bH\u0014R\"\u0010\u0013\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00028T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0018\u001a\u00020\u00028F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u0013\u0010\u001a\u001a\u00020\u00028F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0015R\u0013\u0010\u001b\u001a\u00020\u00028F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0015R\u0016\u0010\u001e\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00048T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/n1;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "",
        "unconfined",
        "",
        "B",
        "L",
        "M",
        "N",
        "Lkotlinx/coroutines/d1;",
        "task",
        "",
        "C",
        "G",
        "y",
        "shutdown",
        "Lkotlinx/coroutines/internal/a;",
        "c",
        "Lkotlinx/coroutines/internal/a;",
        "unconfinedQueue",
        "I",
        "()Z",
        "isEmpty",
        "J",
        "isUnconfinedLoopActive",
        "K",
        "isUnconfinedQueueEmpty",
        "isActive",
        "b",
        "Z",
        "shared",
        "F",
        "()J",
        "nextTime",
        "a",
        "useCount",
        "<init>",
        "()V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Lkotlinx/coroutines/internal/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/a<",
            "Lkotlinx/coroutines/d1<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    return-void
.end method

.method private final B(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public static synthetic H(Lkotlinx/coroutines/n1;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/n1;->G(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic z(Lkotlinx/coroutines/n1;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/n1;->y(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final C(Lkotlinx/coroutines/d1;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/d1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/d1<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n1;->c:Lkotlinx/coroutines/internal/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/a;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/a;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/n1;->c:Lkotlinx/coroutines/internal/a;

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected F()J
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n1;->c:Lkotlinx/coroutines/internal/a;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public final G(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/n1;->a:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->B(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/n1;->a:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lkotlinx/coroutines/n1;->b:Z

    :cond_0
    return-void
.end method

.method protected I()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->K()Z

    move-result v0

    return v0
.end method

.method public final J()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/n1;->a:J

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/n1;->B(Z)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n1;->c:Lkotlinx/coroutines/internal/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/a;->d()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public L()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->M()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final M()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n1;->c:Lkotlinx/coroutines/internal/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/d1;

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/d1;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isActive()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/n1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected shutdown()V
    .locals 0

    return-void
.end method

.method public final y(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/n1;->a:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/n1;->B(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/n1;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lkotlinx/coroutines/n1;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lkotlinx/coroutines/n1;->b:Z

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/n1;->shutdown()V

    :cond_4
    return-void
.end method
