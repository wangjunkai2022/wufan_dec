.class public interface abstract Lkotlinx/coroutines/channels/b0;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/b0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
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
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u0002J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J&\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00072\u0006\u0010\u0003\u001a\u00028\u0000H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0014\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH&J-\u0010\u0012\u001a\u00020\u00042#\u0010\u0011\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00040\u000eH\'J\u0017\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00028\u0000H\u0017\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0019\u001a\u00020\u000c8&@\'X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R(\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u001a8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/b0;",
        "E",
        "",
        "element",
        "",
        "R",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/n;",
        "B",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "",
        "cause",
        "",
        "P",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "handler",
        "z",
        "offer",
        "(Ljava/lang/Object;)Z",
        "S",
        "()Z",
        "isClosedForSend$annotations",
        "()V",
        "isClosedForSend",
        "Lkotlinx/coroutines/selects/e;",
        "r",
        "()Lkotlinx/coroutines/selects/e;",
        "onSend",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract B(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract P(Ljava/lang/Throwable;)Z
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract R(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
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

.method public abstract S()Z
.end method

.method public abstract offer(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation
.end method

.method public abstract r()Lkotlinx/coroutines/selects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/e<",
            "TE;",
            "Lkotlinx/coroutines/channels/b0<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract z(Lkotlin/jvm/functions/Function1;)V
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation
.end method
