.class final synthetic Lkotlinx/coroutines/g2;
.super Ljava/lang/Object;
.source "Future.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0007\u001a\u001a\u0010\u0007\u001a\u00020\u0006*\u0006\u0012\u0002\u0008\u00030\u00052\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/c2;",
        "Ljava/util/concurrent/Future;",
        "future",
        "Lkotlinx/coroutines/j1;",
        "b",
        "Lkotlinx/coroutines/p;",
        "",
        "a",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xs = "kotlinx/coroutines/JobKt"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/p;Ljava/util/concurrent/Future;)V
    .locals 1
    .param p0    # Lkotlinx/coroutines/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/p<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/l;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/l;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/p;->l(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final b(Lkotlinx/coroutines/c2;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/j1;
    .locals 1
    .param p0    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c2;",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lkotlinx/coroutines/j1;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/m;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/m;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/c2;->u(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;

    move-result-object p0

    return-object p0
.end method
