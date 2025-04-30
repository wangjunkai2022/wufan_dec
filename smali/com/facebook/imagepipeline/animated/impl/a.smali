.class public Lcom/facebook/imagepipeline/animated/impl/a;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/a;


# instance fields
.field private final a:Lo0/a;

.field private final b:Lcom/facebook/imagepipeline/animated/base/f;

.field private final c:Lcom/facebook/imagepipeline/animated/base/d;

.field private final d:Landroid/graphics/Rect;

.field private final e:[I

.field private final f:[I

.field private final g:I

.field private final h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/graphics/Rect;

.field private k:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo0/a;Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->i:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->j:Landroid/graphics/Rect;

    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->a:Lo0/a;

    .line 5
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    .line 6
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/animated/base/f;->e()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 7
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/d;->j()[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->e:[I

    .line 8
    invoke-virtual {p1, v0}, Lo0/a;->a([I)V

    .line 9
    invoke-virtual {p1, v0}, Lo0/a;->e([I)I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->g:I

    .line 10
    invoke-virtual {p1, v0}, Lo0/a;->c([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->f:[I

    .line 11
    invoke-static {p2, p3}, Lcom/facebook/imagepipeline/animated/impl/a;->t(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    .line 12
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/d;->b()I

    move-result p1

    new-array p1, p1, [Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/d;->b()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    iget-object p3, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {p3, p1}, Lcom/facebook/imagepipeline/animated/base/d;->f(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized s()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static t(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/d;->a()I

    move-result v1

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/d;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v1, v0, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private declared-synchronized u(II)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/a;->s()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private v(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/e;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->a()I

    move-result v0

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getHeight()I

    move-result v1

    .line 3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->d()I

    move-result v2

    .line 4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->e()I

    move-result v3

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/animated/impl/a;->u(II)V

    .line 7
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    invoke-interface {p2, v0, v1, v4}, Lcom/facebook/imagepipeline/animated/base/e;->b(IILandroid/graphics/Bitmap;)V

    .line 8
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->i:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->j:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, v2

    int-to-float v0, v3

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->i:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->j:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private w(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/e;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/d;->a()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->a()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getHeight()I

    move-result v4

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v4, v6

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->d()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v0

    double-to-int v0, v6

    .line 6
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->e()I

    move-result v1

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    double-to-int v1, v6

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 10
    invoke-direct {p0, v2, v3}, Lcom/facebook/imagepipeline/animated/impl/a;->u(II)V

    .line 11
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    invoke-interface {p2, v5, v4, v6}, Lcom/facebook/imagepipeline/animated/base/e;->b(IILandroid/graphics/Bitmap;)V

    .line 12
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->i:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->j:Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->i:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->j:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->a()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->d()I

    move-result v0

    return v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/a;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public g(ILandroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/d;->g(I)Lcom/facebook/imagepipeline/animated/base/e;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p2, p1}, Lcom/facebook/imagepipeline/animated/impl/a;->w(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/e;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/facebook/imagepipeline/animated/impl/a;->v(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/e;->dispose()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/e;->dispose()V

    .line 6
    throw p2
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    move-result v0

    return v0
.end method

.method public h(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/a;->t(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/a;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->a:Lo0/a;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/animated/impl/a;-><init>(Lo0/a;Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public i(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/base/f;->g(I)Z

    move-result p1

    return p1
.end method

.method public j(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->a:Lo0/a;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->f:[I

    invoke-virtual {v0, v1, p1}, Lo0/a;->b([II)I

    move-result p1

    return p1
.end method

.method public k(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/base/f;->c(I)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public l(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->f:[I

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/facebook/common/internal/h;->g(II)I

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->f:[I

    aget p1, v0, p1

    return p1
.end method

.method public declared-synchronized m()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->a:Lo0/a;

    invoke-virtual {v2, v1}, Lo0/a;->d(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/d;->c()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->e:[I

    aget p1, v0, p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->d()I

    move-result v0

    return v0
.end method

.method public r()Lcom/facebook/imagepipeline/animated/base/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    return-object v0
.end method
