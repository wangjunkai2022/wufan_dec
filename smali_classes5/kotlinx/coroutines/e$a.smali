.class final Lkotlinx/coroutines/e$a;
.super Lkotlinx/coroutines/i2;
.source "Await.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n11328#2:128\n11663#2,3:129\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n*L\n121#1:128\n121#1:129,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001a\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R<\u0010\u001b\u001a\u000e\u0018\u00010\u0014R\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0012\u0010\u0016\u001a\u000e\u0018\u00010\u0014R\u0008\u0012\u0004\u0012\u00028\u00000\u00158F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "kotlinx/coroutines/e$a",
        "Lkotlinx/coroutines/i2;",
        "",
        "cause",
        "",
        "e0",
        "(Ljava/lang/Throwable;)V",
        "Lkotlinx/coroutines/p;",
        "",
        "e",
        "Lkotlinx/coroutines/p;",
        "continuation",
        "Lkotlinx/coroutines/j1;",
        "f",
        "Lkotlinx/coroutines/j1;",
        "i0",
        "()Lkotlinx/coroutines/j1;",
        "k0",
        "(Lkotlinx/coroutines/j1;)V",
        "handle",
        "Lkotlinx/coroutines/e$b;",
        "Lkotlinx/coroutines/e;",
        "value",
        "h0",
        "()Lkotlinx/coroutines/e$b;",
        "j0",
        "(Lkotlinx/coroutines/e$b;)V",
        "disposer",
        "<init>",
        "(Lkotlinx/coroutines/e;Lkotlinx/coroutines/p;)V",
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
.field private volatile synthetic _disposer:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lkotlinx/coroutines/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/p<",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lkotlinx/coroutines/j1;

.field final synthetic g:Lkotlinx/coroutines/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/e;Lkotlinx/coroutines/p;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/p<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/e$a;->g:Lkotlinx/coroutines/e;

    invoke-direct {p0}, Lkotlinx/coroutines/i2;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/e$a;->e:Lkotlinx/coroutines/p;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/e$a;->_disposer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public e0(Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/e$a;->e:Lkotlinx/coroutines/p;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/p;->p(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/e$a;->e:Lkotlinx/coroutines/p;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/p;->V(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/e$a;->h0()Lkotlinx/coroutines/e$b;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/e$b;->b()V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/e$a;->g:Lkotlinx/coroutines/e;

    sget-object v0, Lkotlinx/coroutines/e;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lkotlinx/coroutines/e$a;->e:Lkotlinx/coroutines/p;

    iget-object v0, p0, Lkotlinx/coroutines/e$a;->g:Lkotlinx/coroutines/e;

    invoke-static {v0}, Lkotlinx/coroutines/e;->a(Lkotlinx/coroutines/e;)[Lkotlinx/coroutines/z0;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 8
    invoke-interface {v4}, Lkotlinx/coroutines/z0;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final h0()Lkotlinx/coroutines/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/e<",
            "TT;>.b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/e$a;->_disposer:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/e$b;

    return-object v0
.end method

.method public final i0()Lkotlinx/coroutines/j1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/e$a;->f:Lkotlinx/coroutines/j1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "handle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/e$a;->e0(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final j0(Lkotlinx/coroutines/e$b;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/e$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/e<",
            "TT;>.b;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/e$a;->_disposer:Ljava/lang/Object;

    return-void
.end method

.method public final k0(Lkotlinx/coroutines/j1;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/j1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/e$a;->f:Lkotlinx/coroutines/j1;

    return-void
.end method
