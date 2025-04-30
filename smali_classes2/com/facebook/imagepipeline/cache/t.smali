.class public Lcom/facebook/imagepipeline/cache/t;
.super Ljava/lang/Object;
.source "NoOpImageCacheStatsTracker.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/n;


# static fields
.field private static a:Lcom/facebook/imagepipeline/cache/t;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized n()Lcom/facebook/imagepipeline/cache/t;
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/cache/t;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/t;->a:Lcom/facebook/imagepipeline/cache/t;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/cache/t;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/t;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/cache/t;->a:Lcom/facebook/imagepipeline/cache/t;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/t;->a:Lcom/facebook/imagepipeline/cache/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/cache/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(Lcom/facebook/cache/common/c;)V
    .locals 0

    return-void
.end method

.method public g(Lcom/facebook/cache/common/c;)V
    .locals 0

    return-void
.end method

.method public h(Lcom/facebook/cache/common/c;)V
    .locals 0

    return-void
.end method

.method public i(Lcom/facebook/cache/common/c;)V
    .locals 0

    return-void
.end method

.method public j(Lcom/facebook/imagepipeline/cache/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/h<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method
