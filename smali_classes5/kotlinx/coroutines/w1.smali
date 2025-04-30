.class public final Lkotlinx/coroutines/w1;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/x1;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0005\u001a\u00020\u00048V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u000c\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/w1;",
        "Lkotlinx/coroutines/x1;",
        "",
        "toString",
        "",
        "isActive",
        "()Z",
        "Lkotlinx/coroutines/n2;",
        "a",
        "Lkotlinx/coroutines/n2;",
        "e",
        "()Lkotlinx/coroutines/n2;",
        "list",
        "<init>",
        "(Lkotlinx/coroutines/n2;)V",
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
.field private final a:Lkotlinx/coroutines/n2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/n2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/n2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/w1;->a:Lkotlinx/coroutines/n2;

    return-void
.end method


# virtual methods
.method public e()Lkotlinx/coroutines/n2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/w1;->a:Lkotlinx/coroutines/n2;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/w1;->e()Lkotlinx/coroutines/n2;

    move-result-object v0

    const-string v1, "New"

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/n2;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
