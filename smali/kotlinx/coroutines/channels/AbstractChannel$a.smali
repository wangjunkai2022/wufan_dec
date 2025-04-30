.class final Lkotlinx/coroutines/channels/AbstractChannel$a;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/ChannelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ChannelIterator<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel$Itr\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1131:1\n328#2,5:1132\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel$Itr\n*L\n852#1:1132,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0013\u0010\u0007\u001a\u00020\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\t\u001a\u00020\u0005H\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0010\u0010\n\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u000c\u001a\u0004\u0008\r\u0010\u000b\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00108\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "kotlinx/coroutines/channels/AbstractChannel$a",
        "E",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "",
        "result",
        "",
        "e",
        "f",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "b",
        "next",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "d",
        "setResult",
        "(Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "a",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "channel",
        "<init>",
        "(Lkotlinx/coroutines/channels/AbstractChannel;)V",
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
.field public final a:Lkotlinx/coroutines/channels/AbstractChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/AbstractChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/AbstractChannel;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/channels/AbstractChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/AbstractChannel<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->a:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 2
    sget-object p1, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/internal/i0;

    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(Lkotlinx/coroutines/channels/AbstractChannel$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$a;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final e(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/channels/p;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v0, p1, Lkotlinx/coroutines/channels/p;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/p;->l0()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/h0;->p(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private final f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/s;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/q;

    move-result-object v0

    .line 2
    new-instance v1, Lkotlinx/coroutines/channels/AbstractChannel$d;

    invoke-direct {v1, p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel$d;-><init>(Lkotlinx/coroutines/channels/AbstractChannel$a;Lkotlinx/coroutines/p;)V

    .line 3
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->a:Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/AbstractChannel;->U(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/x;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->a:Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/channels/AbstractChannel;->X(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/p;Lkotlinx/coroutines/channels/x;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->a:Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/AbstractChannel;->l0()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/channels/AbstractChannel$a;->setResult(Ljava/lang/Object;)V

    .line 7
    instance-of v3, v2, Lkotlinx/coroutines/channels/p;

    if-eqz v3, :cond_3

    .line 8
    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v1, v2, Lkotlinx/coroutines/channels/p;->d:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/p;->l0()Ljava/lang/Throwable;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_3
    sget-object v3, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/internal/i0;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->a:Lkotlinx/coroutines/channels/AbstractChannel;

    iget-object v3, v3, Lkotlinx/coroutines/channels/b;->a:Lkotlin/jvm/functions/Function1;

    if-nez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/p;->y(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 13
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/q;->x()Ljava/lang/Object;

    move-result-object v0

    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.3.0, binary compatibility with versions <= 1.2.x"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "next"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/ChannelIterator$DefaultImpls;->a(Lkotlinx/coroutines/channels/ChannelIterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel$a;->d()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/internal/i0;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel$a;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$a;->e(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->a:Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/AbstractChannel;->l0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel$a;->setResult(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel$a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel$a;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$a;->e(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$a;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->b:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/channels/p;

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/internal/i0;

    if-eq v0, v1, :cond_0

    .line 4
    iput-object v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->b:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    check-cast v0, Lkotlinx/coroutines/channels/p;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/p;->l0()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/h0;->p(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$a;->b:Ljava/lang/Object;

    return-void
.end method
