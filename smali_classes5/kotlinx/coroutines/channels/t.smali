.class final Lkotlinx/coroutines/channels/t;
.super Lkotlinx/coroutines/channels/j;
.source "Broadcast.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/j<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002BO\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r\u0012-\u0010\u0013\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000f\u00a2\u0006\u0002\u0008\u0012\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0014R\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/t;",
        "E",
        "Lkotlinx/coroutines/channels/j;",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "v",
        "",
        "Y0",
        "Lkotlin/coroutines/Continuation;",
        "d",
        "Lkotlin/coroutines/Continuation;",
        "continuation",
        "Lkotlin/coroutines/CoroutineContext;",
        "parentContext",
        "Lkotlinx/coroutines/channels/h;",
        "channel",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/channels/w;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/h;Lkotlin/jvm/functions/Function2;)V",
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
.field private final d:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/h;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/channels/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/h<",
            "TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/w<",
            "-TE;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/j;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/h;Z)V

    .line 2
    invoke-static {p3, p0, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/t;->d:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method protected Y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/t;->d:Lkotlin/coroutines/Continuation;

    invoke-static {v0, p0}, Lb3/a;->d(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public v()Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->u1()Lkotlinx/coroutines/channels/h;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/channels/h;->v()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->start()Z

    return-object v0
.end method
