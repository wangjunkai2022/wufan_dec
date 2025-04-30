.class public Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/factory/a;


# annotations
.annotation build Lcom/facebook/common/internal/DoNotStrip;
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final h:I = 0x3


# instance fields
.field private final a:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final b:Lcom/facebook/imagepipeline/core/e;

.field private final c:Lcom/facebook/imagepipeline/cache/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/animated/factory/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/animated/impl/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lo0/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lp0/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/core/e;Lcom/facebook/imagepipeline/cache/h;)V
    .locals 0
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "Lcom/facebook/imagepipeline/core/e;",
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b:Lcom/facebook/imagepipeline/core/e;

    .line 4
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c:Lcom/facebook/imagepipeline/cache/h;

    return-void
.end method

.method static synthetic d(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lcom/facebook/imagepipeline/animated/factory/d;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->j()Lcom/facebook/imagepipeline/animated/factory/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lo0/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->i()Lo0/a;

    move-result-object p0

    return-object p0
.end method

.method private f()Lcom/facebook/imagepipeline/animated/factory/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/animated/factory/e;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/animated/factory/e;-><init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/bitmaps/f;)V

    return-object v1
.end method

.method private g()Lcom/facebook/fresco/animation/factory/a;
    .locals 10

    .line 1
    new-instance v7, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$c;

    invoke-direct {v7, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$c;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 2
    new-instance v3, Lcom/facebook/common/executors/c;

    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b:Lcom/facebook/imagepipeline/core/e;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/e;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/common/executors/c;-><init>(Ljava/util/concurrent/Executor;)V

    .line 4
    new-instance v8, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$d;

    invoke-direct {v8, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$d;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 5
    new-instance v9, Lcom/facebook/fresco/animation/factory/a;

    .line 6
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->h()Lcom/facebook/imagepipeline/animated/impl/b;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/facebook/common/executors/i;->f()Lcom/facebook/common/executors/i;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    iget-object v6, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c:Lcom/facebook/imagepipeline/cache/h;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/fresco/animation/factory/a;-><init>(Lcom/facebook/imagepipeline/animated/impl/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/c;Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/cache/h;Lcom/facebook/common/internal/k;Lcom/facebook/common/internal/k;)V

    return-object v9
.end method

.method private h()Lcom/facebook/imagepipeline/animated/impl/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Lcom/facebook/imagepipeline/animated/impl/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Lcom/facebook/imagepipeline/animated/impl/b;

    return-object v0
.end method

.method private i()Lo0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Lo0/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lo0/a;

    invoke-direct {v0}, Lo0/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Lo0/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Lo0/a;

    return-object v0
.end method

.method private j()Lcom/facebook/imagepipeline/animated/factory/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Lcom/facebook/imagepipeline/animated/factory/d;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f()Lcom/facebook/imagepipeline/animated/factory/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Lcom/facebook/imagepipeline/animated/factory/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Lcom/facebook/imagepipeline/animated/factory/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lp0/a;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Lp0/a;

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g()Lcom/facebook/fresco/animation/factory/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Lp0/a;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Lp0/a;

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$a;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$b;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
