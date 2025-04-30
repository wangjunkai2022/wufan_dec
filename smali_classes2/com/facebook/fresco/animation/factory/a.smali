.class public Lcom/facebook/fresco/animation/factory/a;
.super Ljava/lang/Object;
.source "ExperimentalBitmapAnimationDrawableFactory.java"

# interfaces
.implements Lp0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/factory/a$a;
    }
.end annotation


# static fields
.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/impl/b;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/facebook/common/time/c;

.field private final e:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final f:Lcom/facebook/imagepipeline/cache/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/c;Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/cache/h;Lcom/facebook/common/internal/k;Lcom/facebook/common/internal/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/impl/b;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/facebook/common/time/c;",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p4, p0, Lcom/facebook/fresco/animation/factory/a;->d:Lcom/facebook/common/time/c;

    .line 6
    iput-object p5, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 7
    iput-object p6, p0, Lcom/facebook/fresco/animation/factory/a;->f:Lcom/facebook/imagepipeline/cache/h;

    .line 8
    iput-object p7, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/k;

    .line 9
    iput-object p8, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/k;

    return-void
.end method

.method private c(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/base/a;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/f;->e()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->a()I

    move-result v2

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/b;->a(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/impl/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/c;

    new-instance v1, Lcom/facebook/fresco/animation/factory/a$a;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/factory/a$a;-><init>(I)V

    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->f:Lcom/facebook/imagepipeline/cache/h;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/impl/c;-><init>(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/cache/h;)V

    return-object v0
.end method

.method private e(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/fresco/animation/backend/a;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->c(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->f(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/fresco/animation/bitmap/a;

    move-result-object v3

    .line 3
    new-instance v5, Lcom/facebook/fresco/animation/bitmap/wrapper/b;

    invoke-direct {v5, v3, v0}, Lcom/facebook/fresco/animation/bitmap/wrapper/b;-><init>(Lcom/facebook/fresco/animation/bitmap/a;Lcom/facebook/imagepipeline/animated/base/a;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/k;

    invoke-interface {p1}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 5
    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/d;

    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/d;-><init>(I)V

    .line 6
    invoke-direct {p0, v5}, Lcom/facebook/fresco/animation/factory/a;->g(Lcom/facebook/fresco/animation/bitmap/b;)Lcom/facebook/fresco/animation/bitmap/preparation/b;

    move-result-object p1

    move-object v7, p1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v1

    move-object v7, v6

    .line 7
    :goto_0
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/bitmaps/f;

    new-instance v4, Lcom/facebook/fresco/animation/bitmap/wrapper/a;

    invoke-direct {v4, v0}, Lcom/facebook/fresco/animation/bitmap/wrapper/a;-><init>(Lcom/facebook/imagepipeline/animated/base/a;)V

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;-><init>(Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/fresco/animation/bitmap/a;Lcom/facebook/fresco/animation/backend/d;Lcom/facebook/fresco/animation/bitmap/b;Lcom/facebook/fresco/animation/bitmap/preparation/a;Lcom/facebook/fresco/animation/bitmap/preparation/b;)V

    .line 8
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->d:Lcom/facebook/common/time/c;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, v1}, Lcom/facebook/fresco/animation/backend/c;->r(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/common/time/c;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/b;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/fresco/animation/bitmap/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/k;

    invoke-interface {v0}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 2
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/cache/c;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/cache/c;-><init>()V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/cache/b;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/cache/b;-><init>()V

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/a;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->d(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/impl/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/cache/a;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;Z)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/a;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->d(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/impl/c;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/cache/a;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;Z)V

    return-object v0
.end method

.method private g(Lcom/facebook/fresco/animation/bitmap/b;)Lcom/facebook/fresco/animation/bitmap/preparation/b;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/c;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/bitmaps/f;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v3, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/c;-><init>(Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/fresco/animation/bitmap/b;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/c;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/facebook/imagepipeline/image/a;

    return p1
.end method

.method public bridge synthetic b(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->h(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/fresco/animation/drawable/a;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/fresco/animation/drawable/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/drawable/a;

    check-cast p1, Lcom/facebook/imagepipeline/image/a;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/a;->h()Lcom/facebook/imagepipeline/animated/base/f;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->e(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/fresco/animation/backend/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/fresco/animation/drawable/a;-><init>(Lcom/facebook/fresco/animation/backend/a;)V

    return-object v0
.end method
