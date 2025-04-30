.class public Lcom/facebook/fresco/animation/bitmap/cache/a;
.super Ljava/lang/Object;
.source "FrescoFrameCache.java"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/a;


# static fields
.field private static final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/impl/c;

.field private final b:Z

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/bitmap/cache/a;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/cache/a;->e:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    .line 3
    iput-boolean p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->b:Z

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    return-void
.end method

.method static i(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .param p0    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/imagepipeline/image/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/d;->h()Lcom/facebook/common/references/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {p0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 6
    throw v0
.end method

.method private static j(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/image/d;

    sget-object v1, Lcom/facebook/imagepipeline/image/g;->d:Lcom/facebook/imagepipeline/image/h;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/imagepipeline/image/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/image/h;I)V

    .line 2
    invoke-static {v0}, Lcom/facebook/common/references/a;->p(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p0

    return-object p0
.end method

.method private static k(Lcom/facebook/common/references/a;)I
    .locals 1
    .param p0    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/image/c;

    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/cache/a;->l(Lcom/facebook/imagepipeline/image/c;)I

    move-result p0

    return p0
.end method

.method private static l(Lcom/facebook/imagepipeline/image/c;)I
    .locals 1
    .param p0    # Lcom/facebook/imagepipeline/image/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p0, Lcom/facebook/imagepipeline/image/b;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    check-cast p0, Lcom/facebook/imagepipeline/image/b;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/b;->g()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imageutils/a;->g(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized m()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/references/a;

    invoke-static {v2}, Lcom/facebook/fresco/animation/bitmap/cache/a;->k(Lcom/facebook/common/references/a;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private declared-synchronized n(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 5
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/a;->e:Ljava/lang/Class;

    const-string v1, "removePreparedReference(%d) removed. Pending frames: %s"

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    .line 7
    invoke-static {v0, v1, p1, v2}, Lcom/facebook/common/logging/a;->W(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(ILcom/facebook/common/references/a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x0

    .line 2
    :try_start_1
    invoke-static {p2}, Lcom/facebook/fresco/animation/bitmap/cache/a;->j(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_0

    .line 3
    :try_start_2
    invoke-static {p3}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_3
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    .line 6
    invoke-virtual {p2, p1, p3}, Lcom/facebook/imagepipeline/animated/impl/c;->a(ILcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    .line 9
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 10
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object p2, Lcom/facebook/fresco/animation/bitmap/cache/a;->e:Ljava/lang/Class;

    const-string v0, "cachePreparedFrame(%d) cached. Pending frames: %s"

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    .line 13
    invoke-static {p2, v0, p1, v1}, Lcom/facebook/common/logging/a;->W(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :cond_1
    :try_start_4
    invoke-static {p3}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_5
    invoke-static {p3}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 17
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(ILcom/facebook/common/references/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/a;->n(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x0

    .line 3
    :try_start_1
    invoke-static {p2}, Lcom/facebook/fresco/animation/bitmap/cache/a;->j(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->d:Lcom/facebook/common/references/a;

    invoke-static {p2}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 5
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-virtual {p2, p1, p3}, Lcom/facebook/imagepipeline/animated/impl/c;->a(ILcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->d:Lcom/facebook/common/references/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_0
    :try_start_2
    invoke-static {p3}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    invoke-static {p3}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 9
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->d:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/cache/a;->k(Lcom/facebook/common/references/a;)I

    move-result v0

    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/a;->m()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->d:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->d:Lcom/facebook/common/references/a;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/a;

    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized d(I)Lcom/facebook/common/references/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->d:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/fresco/animation/bitmap/cache/a;->i(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(III)Lcom/facebook/common/references/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/impl/c;->d()Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/fresco/animation/bitmap/cache/a;->i(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Lcom/facebook/fresco/animation/bitmap/a$a;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized g(I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->b(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/a;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->c(I)Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/fresco/animation/bitmap/cache/a;->i(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
