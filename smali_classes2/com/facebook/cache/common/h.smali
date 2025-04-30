.class public Lcom/facebook/cache/common/h;
.super Ljava/lang/Object;
.source "NoOpCacheEventListener.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheEventListener;


# static fields
.field private static a:Lcom/facebook/cache/common/h;


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

.method public static declared-synchronized i()Lcom/facebook/cache/common/h;
    .locals 2

    const-class v0, Lcom/facebook/cache/common/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/cache/common/h;->a:Lcom/facebook/cache/common/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/cache/common/h;

    invoke-direct {v1}, Lcom/facebook/cache/common/h;-><init>()V

    sput-object v1, Lcom/facebook/cache/common/h;->a:Lcom/facebook/cache/common/h;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/cache/common/h;->a:Lcom/facebook/cache/common/h;
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
.method public a(Lcom/facebook/cache/common/b;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/facebook/cache/common/b;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/facebook/cache/common/b;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/facebook/cache/common/b;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/facebook/cache/common/b;)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(Lcom/facebook/cache/common/b;)V
    .locals 0

    return-void
.end method

.method public h(Lcom/facebook/cache/common/b;)V
    .locals 0

    return-void
.end method
