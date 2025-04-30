.class public final Lkotlinx/coroutines/channels/b$e;
.super Lkotlinx/coroutines/internal/s$c;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/b;->k(Lkotlinx/coroutines/channels/a0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel\n*L\n1#1,667:1\n254#2:668\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "kotlinx/coroutines/channels/b$e",
        "Lkotlinx/coroutines/internal/s$c;",
        "Lkotlinx/coroutines/internal/s;",
        "Lkotlinx/coroutines/internal/Node;",
        "affected",
        "",
        "k",
        "kotlinx-coroutines-core",
        "kotlinx/coroutines/internal/s$f"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic d:Lkotlinx/coroutines/internal/s;

.field final synthetic e:Lkotlinx/coroutines/channels/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/channels/b;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$e;->d:Lkotlinx/coroutines/internal/s;

    iput-object p2, p0, Lkotlinx/coroutines/channels/b$e;->e:Lkotlinx/coroutines/channels/b;

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/s$c;-><init>(Lkotlinx/coroutines/internal/s;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/s;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b$e;->k(Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/channels/b$e;->e:Lkotlinx/coroutines/channels/b;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/b;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/r;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
