.class Lkotlinx/coroutines/channels/b$b;
.super Lkotlinx/coroutines/internal/s$b;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/s$b<",
        "Lkotlinx/coroutines/channels/b$a<",
        "+TE;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0012\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00030\u0002j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0003`\u0004B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00028\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "kotlinx/coroutines/channels/b$b",
        "E",
        "Lkotlinx/coroutines/internal/s$b;",
        "Lkotlinx/coroutines/channels/b$a;",
        "Lkotlinx/coroutines/internal/AddLastDesc;",
        "Lkotlinx/coroutines/internal/s;",
        "affected",
        "",
        "e",
        "Lkotlinx/coroutines/internal/q;",
        "queue",
        "element",
        "<init>",
        "(Lkotlinx/coroutines/internal/q;Ljava/lang/Object;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/q;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/q;",
            "TE;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/b$a;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/b$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/internal/s$b;-><init>(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;)V

    return-void
.end method


# virtual methods
.method protected e(Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/channels/p;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p1, p1, Lkotlinx/coroutines/channels/y;

    if-eqz p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/internal/i0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
