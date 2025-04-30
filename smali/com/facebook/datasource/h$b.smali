.class Lcom/facebook/datasource/h$b;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "RetainingDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/h$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private g:Lcom/facebook/datasource/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/c<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "RetainingDataSource.this"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/datasource/h$b;->g:Lcom/facebook/datasource/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/h$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/facebook/datasource/h$b;-><init>()V

    return-void
.end method

.method static synthetic s(Lcom/facebook/datasource/h$b;Lcom/facebook/datasource/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/datasource/h$b;->x(Lcom/facebook/datasource/c;)V

    return-void
.end method

.method static synthetic t(Lcom/facebook/datasource/h$b;Lcom/facebook/datasource/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/datasource/h$b;->w(Lcom/facebook/datasource/c;)V

    return-void
.end method

.method static synthetic u(Lcom/facebook/datasource/h$b;Lcom/facebook/datasource/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/datasource/h$b;->y(Lcom/facebook/datasource/c;)V

    return-void
.end method

.method private static v(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/facebook/datasource/c;->close()Z

    :cond_0
    return-void
.end method

.method private w(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method private x(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/h$b;->g:Lcom/facebook/datasource/c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method private y(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/h$b;->g:Lcom/facebook/datasource/c;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/datasource/c;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->o(F)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/h$b;->g:Lcom/facebook/datasource/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/datasource/c;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

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
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/datasource/h$b;->g:Lcom/facebook/datasource/c;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/facebook/datasource/h$b;->g:Lcom/facebook/datasource/c;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Lcom/facebook/datasource/h$b;->v(Lcom/facebook/datasource/c;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/h$b;->g:Lcom/facebook/datasource/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/datasource/c;->g()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z(Lcom/facebook/common/internal/k;)V
    .locals 3
    .param p1    # Lcom/facebook/common/internal/k;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/datasource/c;

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 3
    :goto_0
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {p1}, Lcom/facebook/datasource/h$b;->v(Lcom/facebook/datasource/c;)V

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/facebook/datasource/h$b;->g:Lcom/facebook/datasource/c;

    .line 8
    iput-object p1, p0, Lcom/facebook/datasource/h$b;->g:Lcom/facebook/datasource/c;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 10
    new-instance v2, Lcom/facebook/datasource/h$b$a;

    invoke-direct {v2, p0, v0}, Lcom/facebook/datasource/h$b$a;-><init>(Lcom/facebook/datasource/h$b;Lcom/facebook/datasource/h$a;)V

    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/facebook/datasource/c;->e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    .line 11
    :cond_3
    invoke-static {v1}, Lcom/facebook/datasource/h$b;->v(Lcom/facebook/datasource/c;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
