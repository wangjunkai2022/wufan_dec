.class public final Lcn/aigestudio/downloader/bizs/g;
.super Ljava/lang/Object;
.source "DLManager.java"


# static fields
.field private static final c:Ljava/lang/String; = "g"

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/ThreadFactory;

.field private static final j:Ljava/util/concurrent/ThreadFactory;

.field private static final k:Ljava/util/concurrent/ExecutorService;

.field private static final l:Ljava/util/concurrent/ExecutorService;

.field public static final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcn/aigestudio/downloader/bizs/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcn/aigestudio/downloader/bizs/f;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Lcn/aigestudio/downloader/bizs/g;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcn/aigestudio/downloader/bizs/g;->d:I

    add-int/lit8 v1, v0, 0x1

    .line 2
    sput v1, Lcn/aigestudio/downloader/bizs/g;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 3
    sput v0, Lcn/aigestudio/downloader/bizs/g;->f:I

    .line 4
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x38

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v7, Lcn/aigestudio/downloader/bizs/g;->g:Ljava/util/concurrent/BlockingQueue;

    .line 5
    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x100

    invoke-direct {v14, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v14, Lcn/aigestudio/downloader/bizs/g;->h:Ljava/util/concurrent/BlockingQueue;

    .line 6
    new-instance v8, Lcn/aigestudio/downloader/bizs/g$a;

    invoke-direct {v8}, Lcn/aigestudio/downloader/bizs/g$a;-><init>()V

    sput-object v8, Lcn/aigestudio/downloader/bizs/g;->i:Ljava/util/concurrent/ThreadFactory;

    .line 7
    new-instance v15, Lcn/aigestudio/downloader/bizs/g$b;

    invoke-direct {v15}, Lcn/aigestudio/downloader/bizs/g$b;-><init>()V

    sput-object v15, Lcn/aigestudio/downloader/bizs/g;->j:Ljava/util/concurrent/ThreadFactory;

    .line 8
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x3

    const/4 v3, 0x3

    const-wide/16 v4, 0x3

    move-object v1, v0

    move-object v6, v13

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->k:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-wide/16 v11, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->l:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcn/aigestudio/downloader/bizs/g;->b:I

    .line 3
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    return-void
.end method

.method public static q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;
    .locals 1

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/aigestudio/downloader/bizs/g;

    invoke-direct {v0, p0}, Lcn/aigestudio/downloader/bizs/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    .line 3
    :cond_0
    sget-object p0, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    return-object p0
.end method


# virtual methods
.method declared-synchronized a()Lcn/aigestudio/downloader/bizs/g;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget v3, p0, Lcn/aigestudio/downloader/bizs/g;->b:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/bizs/f;

    .line 3
    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcn/aigestudio/downloader/bizs/g;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/aigestudio/downloader/bizs/h;

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcn/aigestudio/downloader/bizs/h;-><init>(Landroid/content/Context;Lcn/aigestudio/downloader/bizs/f;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcn/aigestudio/downloader/bizs/i;)Lcn/aigestudio/downloader/bizs/g;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized c(Lcn/aigestudio/downloader/bizs/f;)Lcn/aigestudio/downloader/bizs/g;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/bizs/f;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcn/aigestudio/downloader/bizs/f;->t:Z

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->h(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->i(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcn/aigestudio/downloader/bizs/g;->n(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    sget-object v2, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/aigestudio/downloader/bizs/f;

    .line 4
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/aigestudio/downloader/bizs/j;

    .line 6
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v4}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcn/aigestudio/downloader/bizs/c;->f(Lcn/aigestudio/downloader/bizs/j;)V

    const/4 v4, 0x1

    .line 7
    iput-boolean v4, v3, Lcn/aigestudio/downloader/bizs/j;->g:Z

    .line 8
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/aigestudio/downloader/bizs/c;->d(Lcn/aigestudio/downloader/bizs/f;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 6

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/g;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ld/b;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ld/b;)V
    .locals 6

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/g;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ld/b;)V

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ld/b;)V
    .locals 6

    const-string v3, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/g;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ld/b;)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ld/b;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/g;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ld/b;)V

    return-void
.end method

.method public declared-synchronized l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ld/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/e;",
            ">;",
            "Ld/b;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    const/4 p2, 0x2

    const-string p3, "Url can not be null."

    .line 2
    invoke-interface {p5, p1, p2, p3}, Ld/b;->g(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_1
    monitor-exit p0

    return-void

    .line 4
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/aigestudio/downloader/bizs/k;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    const-string p2, "Network is not available."

    .line 5
    invoke-interface {p5, p1, v1, p2}, Ld/b;->g(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_3
    monitor-exit p0

    return-void

    .line 7
    :cond_4
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TASK_DLING.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";dlStart.url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 9
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_5
    sget-object v3, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/aigestudio/downloader/bizs/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_6
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_7

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_7
    :try_start_4
    sget-object v3, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 16
    sget-boolean v4, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 17
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/aigestudio/downloader/bizs/f;

    goto :goto_2

    .line 18
    :cond_8
    sget-boolean v3, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 19
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/aigestudio/downloader/bizs/c;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 20
    sget-boolean v4, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 21
    iget-object v4, v3, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 22
    iget-object v4, v3, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v5}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcn/aigestudio/downloader/bizs/c;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v4, v3, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    const/4 v3, 0x0

    :cond_9
    :goto_2
    if-nez v3, :cond_b

    .line 24
    sget-boolean v3, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 25
    new-instance v3, Lcn/aigestudio/downloader/bizs/f;

    invoke-direct {v3}, Lcn/aigestudio/downloader/bizs/f;-><init>()V

    .line 26
    iput-object p1, v3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 27
    iput-object p1, v3, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    :cond_a
    const-string v4, ".zip"

    const-string v5, ""

    .line 29
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 30
    iput-object p2, v3, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 31
    iput-object p3, v3, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    goto :goto_4

    .line 32
    :cond_b
    iput-boolean v0, v3, Lcn/aigestudio/downloader/bizs/f;->j:Z

    .line 33
    iget-object p2, v3, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/aigestudio/downloader/bizs/j;

    .line 34
    iput-boolean v1, p3, Lcn/aigestudio/downloader/bizs/j;->e:Z

    goto :goto_3

    .line 35
    :cond_c
    :goto_4
    iput v1, v3, Lcn/aigestudio/downloader/bizs/f;->h:I

    .line 36
    invoke-static {p4, v3}, Lcn/aigestudio/downloader/bizs/k;->c(Ljava/util/List;Lcn/aigestudio/downloader/bizs/f;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v3, Lcn/aigestudio/downloader/bizs/f;->o:Ljava/util/List;

    .line 37
    iput-object p5, v3, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    .line 38
    iput-boolean v2, v3, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 39
    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p3

    iget p4, p0, Lcn/aigestudio/downloader/bizs/g;->b:I

    if-lt p3, p4, :cond_11

    .line 40
    sget-boolean p2, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 41
    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/aigestudio/downloader/bizs/f;

    .line 42
    iget-object p3, p3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object p4, v3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    const/4 v1, 0x1

    goto :goto_5

    :cond_e
    if-nez v1, :cond_f

    .line 43
    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v2, :cond_10

    .line 44
    invoke-interface {p5, p1}, Ld/b;->a(Ljava/lang/String;)V

    .line 45
    :cond_10
    sget-boolean p1, Lcn/aigestudio/downloader/bizs/a;->a:Z

    if-eqz p1, :cond_14

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TASK_PREPARE size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 46
    :cond_11
    sget-boolean p3, Lcn/aigestudio/downloader/bizs/a;->a:Z

    if-eqz p3, :cond_12

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Prepare download from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eqz v2, :cond_13

    .line 47
    invoke-interface {p5}, Ld/b;->onPrepare()V

    .line 48
    :cond_13
    invoke-virtual {p2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->k:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcn/aigestudio/downloader/bizs/h;

    iget-object p3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-direct {p2, p3, v3}, Lcn/aigestudio/downloader/bizs/h;-><init>(Landroid/content/Context;Lcn/aigestudio/downloader/bizs/f;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50
    :cond_14
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public declared-synchronized m(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mehtod dlStop() called.url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/aigestudio/downloader/bizs/f;

    .line 5
    iget-object v3, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-boolean v3, v1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz v3, :cond_0

    .line 8
    iget-object v0, v1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    const-wide/16 v3, -0x2

    invoke-interface {v0, p1, v3, v4}, Ld/b;->e(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return v2

    .line 10
    :cond_1
    :try_start_1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/aigestudio/downloader/bizs/f;

    .line 12
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/bizs/j;

    .line 14
    iput-boolean v2, v0, Lcn/aigestudio/downloader/bizs/j;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :cond_2
    monitor-exit p0

    return v2

    .line 16
    :cond_3
    :try_start_2
    iput-boolean v2, p1, Lcn/aigestudio/downloader/bizs/f;->s:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 p1, 0x0

    .line 17
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized n(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mehtod dlStopDel() called.url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/aigestudio/downloader/bizs/f;

    .line 5
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-boolean v2, v1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz v2, :cond_0

    .line 8
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    const-wide/16 v2, -0x1

    invoke-interface {v1, p1, v2, v3}, Ld/b;->e(Ljava/lang/String;J)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/bizs/f;

    .line 11
    iget-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/aigestudio/downloader/bizs/j;

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v1, Lcn/aigestudio/downloader/bizs/j;->e:Z

    goto :goto_1

    .line 14
    :cond_2
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public o()Lcn/aigestudio/downloader/bizs/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method recoveryTaskInfo() called.url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->i(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/aigestudio/downloader/bizs/c;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 11
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/aigestudio/downloader/bizs/c;->d(Lcn/aigestudio/downloader/bizs/f;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/aigestudio/downloader/bizs/j;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iput-wide v3, v2, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/bizs/j;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/aigestudio/downloader/bizs/j;->g:Z

    .line 15
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/aigestudio/downloader/bizs/j;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->f(Lcn/aigestudio/downloader/bizs/j;)V

    :cond_2
    return-void
.end method

.method declared-synchronized s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeDLTask() called.url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/aigestudio/downloader/bizs/f;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 4
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/aigestudio/downloader/bizs/j;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p2, Lcn/aigestudio/downloader/bizs/j;->e:Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public t(Z)Lcn/aigestudio/downloader/bizs/g;
    .locals 0

    .line 1
    sput-boolean p1, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 2
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    return-object p1
.end method

.method public u(I)Lcn/aigestudio/downloader/bizs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcn/aigestudio/downloader/bizs/g;->b:I

    .line 2
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    return-object p1
.end method
