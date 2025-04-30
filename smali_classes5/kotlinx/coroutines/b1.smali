.class public interface abstract Lkotlinx/coroutines/b1;
.super Ljava/lang/Object;
.source "Delay.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/b1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H&J$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00022\n\u0010\r\u001a\u00060\u000bj\u0002`\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/b1;",
        "",
        "",
        "time",
        "",
        "v",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "timeMillis",
        "Lkotlinx/coroutines/p;",
        "continuation",
        "g",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlinx/coroutines/j1;",
        "p",
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
.method public abstract g(JLkotlinx/coroutines/p;)V
    .param p3    # Lkotlinx/coroutines/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/p<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract p(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/j1;
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract v(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
