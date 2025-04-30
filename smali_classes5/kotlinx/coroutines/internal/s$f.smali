.class public final Lkotlinx/coroutines/internal/s$f;
.super Lkotlinx/coroutines/internal/s$c;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/s;->U(Lkotlinx/coroutines/internal/s;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/s$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n*L\n1#1,667:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlinx/coroutines/internal/s$f",
        "Lkotlinx/coroutines/internal/s$c;",
        "Lkotlinx/coroutines/internal/s;",
        "Lkotlinx/coroutines/internal/Node;",
        "affected",
        "",
        "k",
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
.field final synthetic d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlinx/coroutines/internal/s;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/internal/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlinx/coroutines/internal/s;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/internal/s$f;->d:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lkotlinx/coroutines/internal/s$f;->e:Lkotlinx/coroutines/internal/s;

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/s$c;-><init>(Lkotlinx/coroutines/internal/s;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/s;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/s$f;->k(Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;

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
    iget-object p1, p0, Lkotlinx/coroutines/internal/s$f;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

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
