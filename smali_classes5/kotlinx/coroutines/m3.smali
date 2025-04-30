.class public final Lkotlinx/coroutines/m3;
.super Lkotlinx/coroutines/internal/e0;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/e0<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,182:1\n55#2,13:183\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n141#1:183,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\n\u001a\u00020\tJ\u0012\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0014R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/coroutines/m3;",
        "T",
        "Lkotlinx/coroutines/internal/e0;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "",
        "oldValue",
        "",
        "w1",
        "",
        "v1",
        "state",
        "p1",
        "e",
        "Ljava/lang/Object;",
        "savedOldValue",
        "d",
        "Lkotlin/coroutines/CoroutineContext;",
        "savedContext",
        "Lkotlin/coroutines/Continuation;",
        "uCont",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V",
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
.field private d:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .locals 2
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/n3;->a:Lkotlinx/coroutines/n3;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/e0;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method protected p1(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/m3;->d:Lkotlin/coroutines/CoroutineContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/m3;->e:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lkotlinx/coroutines/m3;->d:Lkotlin/coroutines/CoroutineContext;

    .line 4
    iput-object v1, p0, Lkotlinx/coroutines/m3;->e:Ljava/lang/Object;

    .line 5
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/e0;->c:Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0}, Lkotlinx/coroutines/m0;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lkotlinx/coroutines/internal/e0;->c:Lkotlin/coroutines/Continuation;

    .line 7
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 8
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->c(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    sget-object v4, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lkotlinx/coroutines/internal/i0;

    if-eq v3, v4, :cond_1

    .line 10
    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/o0;->f(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/m3;

    move-result-object v1

    .line 11
    :cond_1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/e0;->c:Lkotlin/coroutines/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Lkotlinx/coroutines/m3;->v1()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    :cond_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Lkotlinx/coroutines/m3;->v1()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    :cond_4
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method public final v1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/m3;->d:Lkotlin/coroutines/CoroutineContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/m3;->d:Lkotlin/coroutines/CoroutineContext;

    .line 3
    iput-object v0, p0, Lkotlinx/coroutines/m3;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public final w1(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/m3;->d:Lkotlin/coroutines/CoroutineContext;

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/m3;->e:Ljava/lang/Object;

    return-void
.end method
