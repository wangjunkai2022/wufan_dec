.class public Lcom/facebook/imagepipeline/core/b;
.super Ljava/lang/Object;
.source "DiskStorageCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/f;


# instance fields
.field private a:Lcom/facebook/imagepipeline/core/c;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/b;->a:Lcom/facebook/imagepipeline/core/c;

    return-void
.end method

.method public static b(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/d;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/imagepipeline/core/b;->c(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;Ljava/util/concurrent/Executor;)Lcom/facebook/cache/disk/d;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;Ljava/util/concurrent/Executor;)Lcom/facebook/cache/disk/d;
    .locals 11

    .line 1
    new-instance v7, Lcom/facebook/cache/disk/d$c;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->j()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->i()J

    move-result-wide v3

    .line 4
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->e()J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/cache/disk/d$c;-><init>(JJJ)V

    .line 5
    new-instance v10, Lcom/facebook/cache/disk/d;

    .line 6
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->g()Lcom/facebook/cache/disk/g;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->d()Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->c()Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v5

    .line 9
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->f()Lcom/facebook/common/disk/b;

    move-result-object v6

    .line 10
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 11
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->h()Z

    move-result v9

    move-object v0, v10

    move-object v1, p1

    move-object v3, v7

    move-object v7, v8

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/cache/disk/d;-><init>(Lcom/facebook/cache/disk/c;Lcom/facebook/cache/disk/g;Lcom/facebook/cache/disk/d$c;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lcom/facebook/common/disk/b;Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V

    return-object v10
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/b;->a:Lcom/facebook/imagepipeline/core/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/core/c;->a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/core/b;->b(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/d;

    move-result-object p1

    return-object p1
.end method
