.class public abstract Lkotlinx/coroutines/internal/s$c;
.super Lkotlinx/coroutines/internal/d;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/d<",
        "Lkotlinx/coroutines/internal/s;",
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
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008!\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u0001B\u0013\u0012\n\u0010\r\u001a\u00060\u0002j\u0002`\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001e\u0010\u0008\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016R\u001e\u0010\u000b\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001a\u0010\r\u001a\u00060\u0002j\u0002`\u00038\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "kotlinx/coroutines/internal/s$c",
        "Lkotlinx/coroutines/internal/d;",
        "Lkotlinx/coroutines/internal/s;",
        "Lkotlinx/coroutines/internal/Node;",
        "affected",
        "",
        "failure",
        "",
        "j",
        "c",
        "Lkotlinx/coroutines/internal/s;",
        "oldNext",
        "b",
        "newNode",
        "<init>",
        "(Lkotlinx/coroutines/internal/s;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/internal/s;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lkotlinx/coroutines/internal/s;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/s;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/d;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/s$c;->b:Lkotlinx/coroutines/internal/s;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/s;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/s$c;->j(Lkotlinx/coroutines/internal/s;Ljava/lang/Object;)V

    return-void
.end method

.method public j(Lkotlinx/coroutines/internal/s;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/s$c;->b:Lkotlinx/coroutines/internal/s;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/s$c;->c:Lkotlinx/coroutines/internal/s;

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lkotlinx/coroutines/internal/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/internal/s$c;->b:Lkotlinx/coroutines/internal/s;

    iget-object p2, p0, Lkotlinx/coroutines/internal/s$c;->c:Lkotlinx/coroutines/internal/s;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/s;->w(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)V

    :cond_2
    return-void
.end method
