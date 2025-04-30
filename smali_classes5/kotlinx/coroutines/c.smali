.class public final Lkotlinx/coroutines/c;
.super Ljava/lang/Object;
.source "AbstractTimeSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\t\u0010\u0001\u001a\u00020\u0000H\u0081\u0008\u001a\t\u0010\u0002\u001a\u00020\u0000H\u0081\u0008\u001a\u0019\u0010\u0006\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0081\u0008\u001a\t\u0010\u0008\u001a\u00020\u0007H\u0081\u0008\u001a\t\u0010\t\u001a\u00020\u0007H\u0081\u0008\u001a\t\u0010\n\u001a\u00020\u0007H\u0081\u0008\u001a\t\u0010\u000b\u001a\u00020\u0007H\u0081\u0008\u001a\u0019\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0000H\u0081\u0008\u001a\u0011\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0081\u0008\"$\u0010\u0019\u001a\u0004\u0018\u00010\u00138\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0001\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "",
        "a",
        "c",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "k",
        "",
        "g",
        "h",
        "e",
        "j",
        "",
        "blocker",
        "nanos",
        "d",
        "Ljava/lang/Thread;",
        "thread",
        "i",
        "Lkotlinx/coroutines/b;",
        "Lkotlinx/coroutines/b;",
        "b",
        "()Lkotlinx/coroutines/b;",
        "f",
        "(Lkotlinx/coroutines/b;)V",
        "timeSource",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static a:Lkotlinx/coroutines/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static final a()J
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final b()Lkotlinx/coroutines/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/c;->a:Lkotlinx/coroutines/b;

    return-object v0
.end method

.method private static final c()J
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static final d(Ljava/lang/Object;J)V
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lkotlinx/coroutines/b;->c(Ljava/lang/Object;J)V

    :goto_0
    return-void
.end method

.method private static final e()V
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->d()V

    :goto_0
    return-void
.end method

.method public static final f(Lkotlinx/coroutines/b;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lkotlinx/coroutines/c;->a:Lkotlinx/coroutines/b;

    return-void
.end method

.method private static final g()V
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->e()V

    :goto_0
    return-void
.end method

.method private static final h()V
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->f()V

    :goto_0
    return-void
.end method

.method private static final i(Ljava/lang/Thread;)V
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/b;->g(Ljava/lang/Thread;)V

    :goto_0
    return-void
.end method

.method private static final j()V
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->h()V

    :goto_0
    return-void
.end method

.method private static final k(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/b;->i(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    :goto_0
    return-object p0
.end method
