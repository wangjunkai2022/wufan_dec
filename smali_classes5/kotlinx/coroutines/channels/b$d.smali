.class public final Lkotlinx/coroutines/channels/b$d;
.super Lkotlinx/coroutines/internal/s$e;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/s$e<",
        "Lkotlinx/coroutines/channels/y<",
        "-TE;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1131:1\n1#2:1132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0004\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00030\u0002j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0003`\u0004B\u0017\u0012\u0006\u0010\u000e\u001a\u00028\u0001\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u00072\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0016R\u0016\u0010\u000e\u001a\u00028\u00018\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "kotlinx/coroutines/channels/b$d",
        "E",
        "Lkotlinx/coroutines/internal/s$e;",
        "Lkotlinx/coroutines/channels/y;",
        "Lkotlinx/coroutines/internal/RemoveFirstDesc;",
        "Lkotlinx/coroutines/internal/s;",
        "affected",
        "",
        "e",
        "Lkotlinx/coroutines/internal/s$d;",
        "Lkotlinx/coroutines/internal/PrepareOp;",
        "prepareOp",
        "j",
        "Ljava/lang/Object;",
        "element",
        "Lkotlinx/coroutines/internal/q;",
        "queue",
        "<init>",
        "(Ljava/lang/Object;Lkotlinx/coroutines/internal/q;)V",
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
.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/internal/q;)V
    .locals 0
    .param p2    # Lkotlinx/coroutines/internal/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/s$e;-><init>(Lkotlinx/coroutines/internal/s;)V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/b$d;->e:Ljava/lang/Object;

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

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/internal/i0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public j(Lkotlinx/coroutines/internal/s$d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/s$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/internal/s$d;->a:Lkotlinx/coroutines/internal/s;

    check-cast v0, Lkotlinx/coroutines/channels/y;

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/b$d;->e:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/channels/y;->t(Ljava/lang/Object;Lkotlinx/coroutines/internal/s$d;)Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/internal/t;->a:Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lkotlinx/coroutines/r;->d:Lkotlinx/coroutines/internal/i0;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
