.class public Lkotlinx/coroutines/channels/l;
.super Lkotlinx/coroutines/a;
.source "ChannelCoroutine.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/channels/k<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,41:1\n702#2,2:42\n702#2,2:44\n702#2,2:46\n*S KotlinDebug\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n*L\n21#1:42,2\n26#1:44,2\n32#1:46,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0004B-\u0012\u0006\u0010@\u001a\u00020?\u0012\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010A\u001a\u00020\u0006\u0012\u0006\u0010B\u001a\u00020\u0006\u00a2\u0006\u0004\u0008C\u0010DJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028\u0000H\u0097\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00018\u0000H\u0097\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000b\u001a\u0004\u0018\u00018\u0000H\u0097A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ.\u0010\u0013\u001a\u00020\u00032#\u0010\u0012\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00030\rH\u0097\u0001J\u0013\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0096\u0001J\u000f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015H\u0096\u0003J\u001f\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0096\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\nJ\'\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00172\u0006\u0010\u0005\u001a\u00028\u0000H\u0096\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0013\u0010\u001b\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u000cJ\"\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0096A\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u000cJ\u001b\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0008\u0010\u001f\u001a\u00020\u0003H\u0016J\u0012\u0010 \u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0007J\u0016\u0010#\u001a\u00020\u00032\u000e\u0010\u0011\u001a\n\u0018\u00010!j\u0004\u0018\u0001`\"J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u000eH\u0016R\u0019\u0010\'\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00048F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0016\u0010*\u001a\u00020\u00068\u0016@\u0017X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u001e\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000+8V@\u0017X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\"\u00102\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00048\u0004@\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u0010&R%\u00104\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00170+8\u0016@\u0016X\u0096\u0005\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u00083\u0010-R\u001c\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u00000+8\u0016@\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00085\u0010-R\u0016\u00108\u001a\u00020\u00068\u0016@\u0017X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u00087\u0010)R\u0016\u00109\u001a\u00020\u00068\u0016@\u0017X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u00089\u0010)R(\u0010>\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000;0:8\u0016@\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006E"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/l;",
        "E",
        "Lkotlinx/coroutines/a;",
        "",
        "Lkotlinx/coroutines/channels/k;",
        "element",
        "",
        "offer",
        "(Ljava/lang/Object;)Z",
        "poll",
        "()Ljava/lang/Object;",
        "J",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "handler",
        "z",
        "P",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "iterator",
        "Lkotlinx/coroutines/channels/n;",
        "I",
        "B",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "O",
        "K",
        "R",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancel",
        "a",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "b",
        "i0",
        "getChannel",
        "()Lkotlinx/coroutines/channels/k;",
        "channel",
        "g",
        "()Z",
        "isClosedForReceive",
        "Lkotlinx/coroutines/selects/d;",
        "H",
        "()Lkotlinx/coroutines/selects/d;",
        "onReceiveOrNull",
        "c",
        "Lkotlinx/coroutines/channels/k;",
        "u1",
        "_channel",
        "G",
        "onReceiveCatching",
        "F",
        "onReceive",
        "S",
        "isClosedForSend",
        "isEmpty",
        "Lkotlinx/coroutines/selects/e;",
        "Lkotlinx/coroutines/channels/b0;",
        "r",
        "()Lkotlinx/coroutines/selects/e;",
        "onSend",
        "Lkotlin/coroutines/CoroutineContext;",
        "parentContext",
        "initParentJob",
        "active",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/k;ZZ)V",
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
.field private final c:Lkotlinx/coroutines/channels/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/k<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/k;ZZ)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/channels/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/k<",
            "TE;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public F()Lkotlinx/coroutines/selects/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->F()Lkotlinx/coroutines/selects/d;

    move-result-object v0

    return-object v0
.end method

.method public G()Lkotlinx/coroutines/selects/d;
    .locals 1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->G()Lkotlinx/coroutines/selects/d;

    move-result-object v0

    return-object v0
.end method

.method public H()Lkotlinx/coroutines/selects/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->H()Lkotlinx/coroutines/selects/d;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->I()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public J(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->J(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public K(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->K(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p1
.end method

.method public O(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->O(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public P(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->P(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public R(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/channels/b0;->R(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public S()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/b0;->S()Z

    move-result v0

    return v0
.end method

.method public final synthetic a(Ljava/lang/Throwable;)Z
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 1
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/l;->i0(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    move-object p1, v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/l;->i0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic cancel()V
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/l;->i0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->g()Z

    move-result v0

    return v0
.end method

.method public final getChannel()Lkotlinx/coroutines/channels/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/k<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public i0(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/coroutines/JobSupport;->i1(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->b(Ljava/util/concurrent/CancellationException;)V

    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->g0(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public r()Lkotlinx/coroutines/selects/e;
    .locals 1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/b0;->r()Lkotlinx/coroutines/selects/e;

    move-result-object v0

    return-object v0
.end method

.method protected final u1()Lkotlinx/coroutines/channels/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/k<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    return-object v0
.end method

.method public z(Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->c:Lkotlinx/coroutines/channels/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/b0;->z(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
