.class Lcom/youth/banner/e$a;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/youth/banner/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Lcom/youth/banner/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lcom/youth/banner/e$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field e:Ljava/util/concurrent/locks/Lock;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/locks/Lock;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/youth/banner/e$a;->c:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 4
    new-instance p1, Lcom/youth/banner/e$c;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2}, Lcom/youth/banner/e$c;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/youth/banner/e$a;->d:Lcom/youth/banner/e$c;

    return-void
.end method


# virtual methods
.method public a(Lcom/youth/banner/e$a;)V
    .locals 1
    .param p1    # Lcom/youth/banner/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, v0, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;

    .line 4
    :cond_0
    iput-object v0, p1, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 5
    iput-object p1, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 6
    iput-object p0, p1, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method

.method public b()Lcom/youth/banner/e$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    iput-object v1, v0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    if-eqz v1, :cond_1

    .line 5
    iput-object v0, v1, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;

    .line 7
    iput-object v0, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    iget-object v0, p0, Lcom/youth/banner/e$a;->d:Lcom/youth/banner/e$c;

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw v0
.end method

.method public c(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lcom/youth/banner/e$a;->c:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/youth/banner/e$a;->b()Lcom/youth/banner/e$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
