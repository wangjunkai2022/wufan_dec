.class public interface abstract Lkotlinx/coroutines/selects/f;
.super Ljava/lang/Object;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008g\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u0002J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u001a\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H&J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\tH&J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH&J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H&R\u001c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00138&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00038&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/f;",
        "R",
        "",
        "",
        "n",
        "Lkotlinx/coroutines/internal/s$d;",
        "Lkotlinx/coroutines/internal/PrepareOp;",
        "otherOp",
        "k",
        "Lkotlinx/coroutines/internal/b;",
        "desc",
        "s",
        "",
        "exception",
        "",
        "r",
        "Lkotlinx/coroutines/j1;",
        "handle",
        "j",
        "Lkotlin/coroutines/Continuation;",
        "o",
        "()Lkotlin/coroutines/Continuation;",
        "completion",
        "g",
        "()Z",
        "isSelected",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# virtual methods
.method public abstract g()Z
.end method

.method public abstract j(Lkotlinx/coroutines/j1;)V
    .param p1    # Lkotlinx/coroutines/j1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract k(Lkotlinx/coroutines/internal/s$d;)Ljava/lang/Object;
    .param p1    # Lkotlinx/coroutines/internal/s$d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract n()Z
.end method

.method public abstract o()Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract r(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract s(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;
    .param p1    # Lkotlinx/coroutines/internal/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
