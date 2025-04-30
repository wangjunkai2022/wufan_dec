.class final Lkotlinx/coroutines/selects/b$b;
.super Lkotlinx/coroutines/internal/s;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "kotlinx/coroutines/selects/b$b",
        "Lkotlinx/coroutines/internal/s;",
        "Lkotlinx/coroutines/j1;",
        "d",
        "Lkotlinx/coroutines/j1;",
        "handle",
        "<init>",
        "(Lkotlinx/coroutines/j1;)V",
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
.field public final d:Lkotlinx/coroutines/j1;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/j1;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/j1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/s;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/selects/b$b;->d:Lkotlinx/coroutines/j1;

    return-void
.end method
