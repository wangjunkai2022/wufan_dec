.class public final Lkotlinx/coroutines/test/a$a$a;
.super Ljava/lang/Object;
.source "TestCoroutineContext.kt"

# interfaces
.implements Lkotlinx/coroutines/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/test/a$a;->p(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlinx/coroutines/test/a$a$a",
        "Lkotlinx/coroutines/j1;",
        "",
        "dispose",
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
.field final synthetic a:Lkotlinx/coroutines/test/a;

.field final synthetic b:Lkotlinx/coroutines/test/c;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/test/a;Lkotlinx/coroutines/test/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/test/a$a$a;->a:Lkotlinx/coroutines/test/a;

    iput-object p2, p0, Lkotlinx/coroutines/test/a$a$a;->b:Lkotlinx/coroutines/test/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/test/a$a$a;->a:Lkotlinx/coroutines/test/a;

    invoke-static {v0}, Lkotlinx/coroutines/test/a;->f(Lkotlinx/coroutines/test/a;)Lkotlinx/coroutines/internal/q0;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/test/a$a$a;->b:Lkotlinx/coroutines/test/c;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/q0;->j(Lkotlinx/coroutines/internal/r0;)Z

    return-void
.end method
