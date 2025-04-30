.class public Lcom/facebook/imagepipeline/datasource/f;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "ListDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/datasource/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "Ljava/util/List<",
        "Lcom/facebook/common/references/a<",
        "TT;>;>;>;"
    }
.end annotation


# instance fields
.field private final g:[Lcom/facebook/datasource/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private h:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>([Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/f;->g:[Lcom/facebook/datasource/c;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/facebook/imagepipeline/datasource/f;->h:I

    return-void
.end method

.method private A(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/c;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->m(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/f;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method private C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/f;->g:[Lcom/facebook/datasource/c;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4}, Lcom/facebook/datasource/c;->getProgress()F

    move-result v4

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/f;->g:[Lcom/facebook/datasource/c;

    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/datasource/AbstractDataSource;->o(F)Z

    return-void
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/datasource/f;Lcom/facebook/datasource/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/f;->A(Lcom/facebook/datasource/c;)V

    return-void
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/datasource/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/f;->z()V

    return-void
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/datasource/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/f;->B()V

    return-void
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/datasource/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/f;->C()V

    return-void
.end method

.method public static varargs w([Lcom/facebook/datasource/c;)Lcom/facebook/imagepipeline/datasource/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)",
            "Lcom/facebook/imagepipeline/datasource/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->o(Z)V

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/datasource/f;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/datasource/f;-><init>([Lcom/facebook/datasource/c;)V

    .line 4
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    .line 5
    new-instance v4, Lcom/facebook/imagepipeline/datasource/f$b;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/facebook/imagepipeline/datasource/f$b;-><init>(Lcom/facebook/imagepipeline/datasource/f;Lcom/facebook/imagepipeline/datasource/f$a;)V

    .line 6
    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object v5

    .line 7
    invoke-interface {v3, v4, v5}, Lcom/facebook/datasource/c;->e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private declared-synchronized y()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/datasource/f;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/datasource/f;->h:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/datasource/f;->g:[Lcom/facebook/datasource/c;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private z()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/datasource/AbstractDataSource;->m(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/datasource/f;->h:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/f;->g:[Lcom/facebook/datasource/c;

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()Z
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/f;->g:[Lcom/facebook/datasource/c;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 3
    invoke-interface {v3}, Lcom/facebook/datasource/c;->close()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic g()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/f;->x()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized x()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/f;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/f;->g:[Lcom/facebook/datasource/c;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/f;->g:[Lcom/facebook/datasource/c;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5
    invoke-interface {v4}, Lcom/facebook/datasource/c;->g()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
