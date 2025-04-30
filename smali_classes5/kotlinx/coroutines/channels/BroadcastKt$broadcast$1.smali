.class final Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Broadcast.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/BroadcastKt;->b(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlinx/coroutines/CoroutineStart;)Lkotlinx/coroutines/channels/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n"
    }
    d2 = {
        "E",
        "",
        "it",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->a:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->a:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-static {v0, p1}, Lkotlinx/coroutines/channels/o;->b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-void
.end method
