.class public Lcom/facebook/imagepipeline/animated/base/f;
.super Ljava/lang/Object;
.source "AnimatedImageResult.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/d;

.field private final b:I

.field private c:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/animated/base/d;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/animated/base/d;

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/f;->a:Lcom/facebook/imagepipeline/animated/base/d;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/f;->b:I

    return-void
.end method

.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->d()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/animated/base/d;

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->a:Lcom/facebook/imagepipeline/animated/base/d;

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->b:I

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->e()Lcom/facebook/common/references/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->c:Lcom/facebook/common/references/a;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/f;->d:Ljava/util/List;

    return-void
.end method

.method public static b(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/f;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/f;-><init>(Lcom/facebook/imagepipeline/animated/base/d;)V

    return-object v0
.end method

.method public static h(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/g;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/g;-><init>(Lcom/facebook/imagepipeline/animated/base/d;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->c:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->c:Lcom/facebook/common/references/a;

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/f;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/facebook/common/references/a;->h(Ljava/lang/Iterable;)V

    .line 4
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)Lcom/facebook/common/references/a;
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
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->b:I

    return v0
.end method

.method public e()Lcom/facebook/imagepipeline/animated/base/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->a:Lcom/facebook/imagepipeline/animated/base/d;

    return-object v0
.end method

.method public declared-synchronized f()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->c:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/f;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
