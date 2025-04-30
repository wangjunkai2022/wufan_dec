.class public interface abstract Lkotlinx/coroutines/channels/ReceiveChannel;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/ReceiveChannel$DefaultImpls;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002J\u0013\u0010\u0003\u001a\u00028\u0000H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\"\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u00a6@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u001e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u00a6\u0002J\u001a\u0010\u000f\u001a\u00020\u000e2\u0010\u0008\u0002\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\u000cH&J\u0008\u0010\u0010\u001a\u00020\u000eH\u0017J\u0014\u0010\u0013\u001a\u00020\u00122\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0011H\'J\u0011\u0010\u0014\u001a\u0004\u0018\u00018\u0000H\u0017\u00a2\u0006\u0004\u0008\u0014\u0010\u0008J\u0015\u0010\u0015\u001a\u0004\u0018\u00018\u0000H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0004R\u001c\u0010\u001a\u001a\u00020\u00128&@\'X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017R%\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u001b8&@&X\u00a6\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001b8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001dR\u001c\u0010!\u001a\u00020\u00128&@\'X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\"\u0010\u0019\u001a\u0004\u0008!\u0010\u0017R$\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001b8V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008$\u0010\u0019\u001a\u0004\u0008#\u0010\u001d\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "E",
        "",
        "O",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/n;",
        "K",
        "I",
        "()Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "iterator",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cause",
        "",
        "b",
        "cancel",
        "",
        "",
        "a",
        "poll",
        "J",
        "g",
        "()Z",
        "isClosedForReceive$annotations",
        "()V",
        "isClosedForReceive",
        "Lkotlinx/coroutines/selects/d;",
        "G",
        "()Lkotlinx/coroutines/selects/d;",
        "onReceiveCatching",
        "F",
        "onReceive",
        "isEmpty",
        "isEmpty$annotations",
        "H",
        "getOnReceiveOrNull$annotations",
        "onReceiveOrNull",
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
.method public abstract F()Lkotlinx/coroutines/selects/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract G()Lkotlinx/coroutines/selects/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "Lkotlinx/coroutines/channels/n<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract H()Lkotlinx/coroutines/selects/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract I()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract J(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of \'receiveCatching\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'receiveOrNull\' did, for the detailed replacement please refer to the \'receiveOrNull\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "receiveCatching().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/internal/LowPriorityInOverloadResolution;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract K(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/n<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract O(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract synthetic a(Ljava/lang/Throwable;)Z
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation
.end method

.method public abstract b(Ljava/util/concurrent/CancellationException;)V
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract synthetic cancel()V
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation
.end method

.method public abstract g()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract poll()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'tryReceive\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'poll\' did, for the precise replacement please refer to the \'poll\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "tryReceive().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
