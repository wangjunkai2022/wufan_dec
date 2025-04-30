.class final Lkotlinx/coroutines/flow/m;
.super Ljava/lang/Object;
.source "Share.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/v;
.implements Lkotlinx/coroutines/flow/a;
.implements Lkotlinx/coroutines/flow/internal/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/v<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/a<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/j<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0008\u0012\u0004\u0012\u00028\u00000\u0004B\u001f\u0012\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0097A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ&\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0016\u0010\u0014\u001a\u00028\u00008\u0016@\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00158\u0016@\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u001a\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/m;",
        "T",
        "Lkotlinx/coroutines/flow/v;",
        "Lkotlinx/coroutines/flow/a;",
        "Lkotlinx/coroutines/flow/internal/j;",
        "Lkotlinx/coroutines/flow/g;",
        "collector",
        "",
        "e",
        "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/flow/f;",
        "a",
        "getValue",
        "()Ljava/lang/Object;",
        "value",
        "",
        "c",
        "()Ljava/util/List;",
        "replayCache",
        "Lkotlinx/coroutines/c2;",
        "Lkotlinx/coroutines/c2;",
        "job",
        "flow",
        "<init>",
        "(Lkotlinx/coroutines/flow/v;Lkotlinx/coroutines/c2;)V",
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
.field private final a:Lkotlinx/coroutines/c2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final synthetic b:Lkotlinx/coroutines/flow/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/v<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/v;Lkotlinx/coroutines/c2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/v<",
            "+TT;>;",
            "Lkotlinx/coroutines/c2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/flow/m;->a:Lkotlinx/coroutines/c2;

    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/flow/m;->b:Lkotlinx/coroutines/flow/v;

    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/f;
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/w;->d(Lkotlinx/coroutines/flow/v;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/f;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/m;->b:Lkotlinx/coroutines/flow/v;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/o;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/g;
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
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/m;->b:Lkotlinx/coroutines/flow/v;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/f;->e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/m;->b:Lkotlinx/coroutines/flow/v;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/v;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
