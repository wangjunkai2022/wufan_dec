.class public abstract Lcom/facebook/imagepipeline/producers/b0;
.super Ljava/lang/Object;
.source "MultiplexProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/b0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "TT;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/facebook/imagepipeline/producers/b0<",
            "TK;TT;>.b;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/b0;->b:Lcom/facebook/imagepipeline/producers/i0;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/b0;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/b0;Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/b0$b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/b0;->h(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/b0$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/b0;Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/b0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/b0;->j(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/b0$b;)V

    return-void
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/producers/b0;)Lcom/facebook/imagepipeline/producers/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/b0;->b:Lcom/facebook/imagepipeline/producers/i0;

    return-object p0
.end method

.method private declared-synchronized g(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/b0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/imagepipeline/producers/b0<",
            "TK;TT;>.b;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/b0$b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/b0$b;-><init>(Lcom/facebook/imagepipeline/producers/b0;Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/b0;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized h(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/b0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/imagepipeline/producers/b0<",
            "TK;TT;>.b;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/b0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/b0$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized j(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/b0$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/imagepipeline/producers/b0<",
            "TK;TT;>.b;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/b0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/b0;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#produceResults"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/producers/b0;->i(Lcom/facebook/imagepipeline/producers/k0;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    .line 4
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/b0;->h(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/b0$b;

    move-result-object v2

    if-nez v2, :cond_2

    .line 6
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/b0;->g(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/b0$b;

    move-result-object v2

    const/4 v1, 0x1

    .line 7
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v2, p1, p2}, Lcom/facebook/imagepipeline/producers/b0$b;->h(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/b0$b;->a(Lcom/facebook/imagepipeline/producers/b0$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 15
    :cond_5
    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method protected abstract f(Ljava/io/Closeable;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method protected abstract i(Lcom/facebook/imagepipeline/producers/k0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")TK;"
        }
    .end annotation
.end method
