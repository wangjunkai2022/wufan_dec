.class public Lcom/facebook/imagepipeline/cache/h;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/p;
.implements Lcom/facebook/common/memory/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/h$d;,
        Lcom/facebook/imagepipeline/cache/h$e;,
        Lcom/facebook/imagepipeline/cache/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/p<",
        "TK;TV;>;",
        "Lcom/facebook/common/memory/b;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field static final i:J
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final a:Lcom/facebook/imagepipeline/cache/g;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/g<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final b:Lcom/facebook/imagepipeline/cache/g;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/g<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/cache/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/v<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/h$c;

.field private final f:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcom/facebook/imagepipeline/cache/q;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/imagepipeline/cache/h;->i:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/cache/v;Lcom/facebook/imagepipeline/cache/h$c;Lcom/facebook/common/internal/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/v<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/h$c;",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->c:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/h;->d:Lcom/facebook/imagepipeline/cache/v;

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->F(Lcom/facebook/imagepipeline/cache/v;)Lcom/facebook/imagepipeline/cache/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/g;-><init>(Lcom/facebook/imagepipeline/cache/v;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->F(Lcom/facebook/imagepipeline/cache/v;)Lcom/facebook/imagepipeline/cache/v;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/cache/g;-><init>(Lcom/facebook/imagepipeline/cache/v;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/h;->e:Lcom/facebook/imagepipeline/cache/h$c;

    .line 7
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/h;->f:Lcom/facebook/common/internal/k;

    .line 8
    invoke-interface {p3}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/q;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/h;->g:Lcom/facebook/imagepipeline/cache/q;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/imagepipeline/cache/h;->h:J

    return-void
.end method

.method private declared-synchronized A(Lcom/facebook/imagepipeline/cache/h$d;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->q(Lcom/facebook/imagepipeline/cache/h$d;)V

    .line 2
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->b:Lcom/facebook/common/references/a;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/cache/h$b;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/h$b;-><init>(Lcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/h$d;)V

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->q(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

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

.method private declared-synchronized B(Lcom/facebook/imagepipeline/cache/h$d;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->c:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/h$d;->b:Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private C(Lcom/facebook/imagepipeline/cache/h$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->j(Lcom/facebook/imagepipeline/cache/h$d;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->t(Lcom/facebook/imagepipeline/cache/h$d;)Z

    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->B(Lcom/facebook/imagepipeline/cache/h$d;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/h;->w(Lcom/facebook/imagepipeline/cache/h$d;)V

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->z()V

    .line 10
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->v()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized E(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/g;->d()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/g;->h()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/g;->d()I

    move-result v1

    if-gt v1, p1, :cond_2

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/g;->h()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v1, p2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    monitor-exit p0

    return-object v0

    .line 8
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/g;->e()Ljava/lang/Object;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/g;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/g;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private F(Lcom/facebook/imagepipeline/cache/v;)Lcom/facebook/imagepipeline/cache/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/v<",
            "TV;>;)",
            "Lcom/facebook/imagepipeline/cache/v<",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/cache/h$a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/h$a;-><init>(Lcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/v;)V

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/h$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->C(Lcom/facebook/imagepipeline/cache/h$d;)V

    return-void
.end method

.method private declared-synchronized g(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->d:Lcom/facebook/imagepipeline/cache/v;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/v;->a(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->g:Lcom/facebook/imagepipeline/cache/q;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/q;->e:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/h;->n()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/h;->g:Lcom/facebook/imagepipeline/cache/q;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/q;->b:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/h;->o()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/h;->g:Lcom/facebook/imagepipeline/cache/q;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/q;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized j(Lcom/facebook/imagepipeline/cache/h$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->o(Z)V

    .line 3
    iget v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized q(Lcom/facebook/imagepipeline/cache/h$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->o(Z)V

    .line 3
    iget v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized r(Lcom/facebook/imagepipeline/cache/h$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->o(Z)V

    .line 3
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/h$d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized s(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/h$d;

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/h;->r(Lcom/facebook/imagepipeline/cache/h$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 3
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized t(Lcom/facebook/imagepipeline/cache/h$d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->d:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/h$d;->c:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/h$d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/g;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private u(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/h$d;

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/h;->B(Lcom/facebook/imagepipeline/cache/h$d;)Lcom/facebook/common/references/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private v()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->g:Lcom/facebook/imagepipeline/cache/q;

    iget v1, v0, Lcom/facebook/imagepipeline/cache/q;->d:I

    iget v0, v0, Lcom/facebook/imagepipeline/cache/q;->b:I

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/h;->n()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->g:Lcom/facebook/imagepipeline/cache/q;

    iget v2, v1, Lcom/facebook/imagepipeline/cache/q;->c:I

    iget v1, v1, Lcom/facebook/imagepipeline/cache/q;->a:I

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/h;->o()I

    move-result v3

    sub-int/2addr v1, v3

    .line 7
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/h;->E(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/h;->s(Ljava/util/ArrayList;)V

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/h;->u(Ljava/util/ArrayList;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/h;->y(Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static w(Lcom/facebook/imagepipeline/cache/h$d;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/h$d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h$d;->e:Lcom/facebook/imagepipeline/cache/h$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/h$d;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/h$e;->a(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private static x(Lcom/facebook/imagepipeline/cache/h$d;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/h$d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h$d;->e:Lcom/facebook/imagepipeline/cache/h$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/h$d;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/h$e;->a(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private y(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/h$d<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/h$d;

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/h;->x(Lcom/facebook/imagepipeline/cache/h$d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized z()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/h;->h:J

    sget-wide v2, Lcom/facebook/imagepipeline/cache/h;->i:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/h;->h:J

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->f:Lcom/facebook/common/internal/k;

    invoke-interface {v0}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/q;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->g:Lcom/facebook/imagepipeline/cache/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public D(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/g;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/h$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/g;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/h$d;

    .line 5
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v3, p1, Lcom/facebook/imagepipeline/cache/h$d;->c:I

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/facebook/common/internal/h;->o(Z)V

    .line 7
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/h$d;->b:Lcom/facebook/common/references/a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/h;->x(Lcom/facebook/imagepipeline/cache/h$d;)V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/h;->f(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/h$e;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/facebook/common/internal/i;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i<",
            "TK;>;)I"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/g;->m(Lcom/facebook/common/internal/i;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/g;->m(Lcom/facebook/common/internal/i;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->s(Ljava/util/ArrayList;)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->u(Ljava/util/ArrayList;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/h;->y(Ljava/util/ArrayList;)V

    .line 8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->z()V

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->v()V

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Lcom/facebook/common/internal/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i<",
            "TK;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/g;->g(Lcom/facebook/common/internal/i;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->e:Lcom/facebook/imagepipeline/cache/h$c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/h$c;->a(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/g;->h()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int p1, v2

    const/4 v0, 0x0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/h;->o()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const v0, 0x7fffffff

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/h;->E(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->s(Ljava/util/ArrayList;)V

    .line 7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->u(Ljava/util/ArrayList;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->y(Ljava/util/ArrayList;)V

    .line 10
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->z()V

    .line 11
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->v()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public f(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/h$e;)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/h$e<",
            "TK;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->z()V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/g;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/h$d;

    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/g;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/h$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/h;->r(Lcom/facebook/imagepipeline/cache/h$d;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/h;->B(Lcom/facebook/imagepipeline/cache/h$d;)Lcom/facebook/common/references/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/h;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/h$d;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/h$e;)Lcom/facebook/imagepipeline/cache/h$d;

    move-result-object p2

    .line 11
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/g;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/h;->A(Lcom/facebook/imagepipeline/cache/h$d;)Lcom/facebook/common/references/a;

    move-result-object v2

    .line 13
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 15
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/h;->x(Lcom/facebook/imagepipeline/cache/h$d;)V

    .line 16
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->v()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/g;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/h$d;

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/h$d;

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/h;->A(Lcom/facebook/imagepipeline/cache/h$d;)Lcom/facebook/common/references/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/h;->x(Lcom/facebook/imagepipeline/cache/h$d;)V

    .line 8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->z()V

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->v()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/g;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/h;->s(Ljava/util/ArrayList;)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/h;->u(Ljava/util/ArrayList;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/h;->y(Ljava/util/ArrayList;)V

    .line 8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/h;->z()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized i(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/g;->b(Ljava/lang/Object;)Z

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

.method public declared-synchronized k()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/g;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/g;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/g;->h()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/g;->d()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/g;->d()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/g;->h()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/h;->a:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/g;->h()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/g;->h()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
