.class final Lkotlinx/coroutines/flow/y;
.super Ljava/lang/Object;
.source "Share.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/o<",
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
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002BG\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012-\u0010\u0015\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000f\u00a2\u0006\u0002\u0008\u0012\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b8\u0016@\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR@\u0010\u0015\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000f\u00a2\u0006\u0002\u0008\u00128\u0002@\u0002X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/y;",
        "T",
        "Lkotlinx/coroutines/flow/o;",
        "Lkotlinx/coroutines/flow/g;",
        "collector",
        "",
        "e",
        "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "a",
        "Lkotlinx/coroutines/flow/o;",
        "sharedFlow",
        "",
        "c",
        "()Ljava/util/List;",
        "replayCache",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "b",
        "Lkotlin/jvm/functions/Function2;",
        "action",
        "<init>",
        "(Lkotlinx/coroutines/flow/o;Lkotlin/jvm/functions/Function2;)V",
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
.field private final a:Lkotlinx/coroutines/flow/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/o<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/o;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/o<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/y;->a:Lkotlinx/coroutines/flow/o;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/flow/y;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lkotlinx/coroutines/flow/y;->a:Lkotlinx/coroutines/flow/o;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/o;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/y;->a:Lkotlinx/coroutines/flow/o;

    new-instance v1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    iget-object v2, p0, Lkotlinx/coroutines/flow/y;->b:Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, p1, v2}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;-><init>(Lkotlinx/coroutines/flow/g;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/f;->e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
