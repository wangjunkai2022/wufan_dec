.class public Lkotlinx/coroutines/e2;
.super Lkotlinx/coroutines/JobSupport;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/f0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0004\u001a\u00020\u0003H\u0003J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u001c\u0010\r\u001a\u00020\u00038\u0010@\u0010X\u0090\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000f\u001a\u00020\u00038P@\u0010X\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/e2;",
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/f0;",
        "",
        "p1",
        "complete",
        "",
        "exception",
        "d",
        "b",
        "Z",
        "z0",
        "()Z",
        "handlesException",
        "A0",
        "onCancelComplete",
        "Lkotlinx/coroutines/c2;",
        "parent",
        "<init>",
        "(Lkotlinx/coroutines/c2;)V",
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
.field private final b:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/c2;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->G0(Lkotlinx/coroutines/c2;)V

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/e2;->p1()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/coroutines/e2;->b:Z

    return-void
.end method

.method private final p1()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->C0()Lkotlinx/coroutines/v;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/w;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/w;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/i2;->f0()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    .line 2
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->z0()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->C0()Lkotlinx/coroutines/v;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/coroutines/w;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlinx/coroutines/w;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/i2;->f0()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public A0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public complete()Z
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->O0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lkotlinx/coroutines/h0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlinx/coroutines/h0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->O0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public z0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/coroutines/e2;->b:Z

    return v0
.end method
