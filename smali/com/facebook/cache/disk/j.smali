.class public Lcom/facebook/cache/disk/j;
.super Ljava/lang/Object;
.source "SettableCacheEvent.java"

# interfaces
.implements Lcom/facebook/cache/common/b;


# static fields
.field private static final i:Ljava/lang/Object;

.field private static final j:I = 0x5

.field private static k:Lcom/facebook/cache/disk/j;

.field private static l:I


# instance fields
.field private a:Lcom/facebook/cache/common/c;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/io/IOException;

.field private g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

.field private h:Lcom/facebook/cache/disk/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/cache/disk/j;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lcom/facebook/cache/disk/j;
    .locals 3
    .annotation build Lcom/facebook/infer/annotation/ReturnsOwnership;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/cache/disk/j;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/facebook/cache/disk/j;->k:Lcom/facebook/cache/disk/j;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lcom/facebook/cache/disk/j;->h:Lcom/facebook/cache/disk/j;

    sput-object v2, Lcom/facebook/cache/disk/j;->k:Lcom/facebook/cache/disk/j;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lcom/facebook/cache/disk/j;->h:Lcom/facebook/cache/disk/j;

    .line 5
    sget v2, Lcom/facebook/cache/disk/j;->l:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/facebook/cache/disk/j;->l:I

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v0, Lcom/facebook/cache/disk/j;

    invoke-direct {v0}, Lcom/facebook/cache/disk/j;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/facebook/cache/disk/j;->a:Lcom/facebook/cache/common/c;

    .line 2
    iput-object v0, p0, Lcom/facebook/cache/disk/j;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/facebook/cache/disk/j;->c:J

    .line 4
    iput-wide v1, p0, Lcom/facebook/cache/disk/j;->d:J

    .line 5
    iput-wide v1, p0, Lcom/facebook/cache/disk/j;->e:J

    .line 6
    iput-object v0, p0, Lcom/facebook/cache/disk/j;->f:Ljava/io/IOException;

    .line 7
    iput-object v0, p0, Lcom/facebook/cache/disk/j;->g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/j;->f:Ljava/io/IOException;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/j;->e:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/j;->d:J

    return-wide v0
.end method

.method public e()Lcom/facebook/cache/common/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/j;->a:Lcom/facebook/cache/common/c;

    return-object v0
.end method

.method public f()Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/j;->g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/j;->c:J

    return-wide v0
.end method

.method public i()V
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/cache/disk/j;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/facebook/cache/disk/j;->l:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/facebook/cache/disk/j;->j()V

    .line 4
    sget v1, Lcom/facebook/cache/disk/j;->l:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/facebook/cache/disk/j;->l:I

    .line 5
    sget-object v1, Lcom/facebook/cache/disk/j;->k:Lcom/facebook/cache/disk/j;

    if-eqz v1, :cond_0

    .line 6
    iput-object v1, p0, Lcom/facebook/cache/disk/j;->h:Lcom/facebook/cache/disk/j;

    .line 7
    :cond_0
    sput-object p0, Lcom/facebook/cache/disk/j;->k:Lcom/facebook/cache/disk/j;

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k(Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/j;->a:Lcom/facebook/cache/common/c;

    return-object p0
.end method

.method public l(J)Lcom/facebook/cache/disk/j;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/cache/disk/j;->d:J

    return-object p0
.end method

.method public m(J)Lcom/facebook/cache/disk/j;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/cache/disk/j;->e:J

    return-object p0
.end method

.method public n(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/j;->g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object p0
.end method

.method public o(Ljava/io/IOException;)Lcom/facebook/cache/disk/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/j;->f:Ljava/io/IOException;

    return-object p0
.end method

.method public p(J)Lcom/facebook/cache/disk/j;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/cache/disk/j;->c:J

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/facebook/cache/disk/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/j;->b:Ljava/lang/String;

    return-object p0
.end method
