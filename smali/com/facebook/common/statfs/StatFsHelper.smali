.class public Lcom/facebook/common/statfs/StatFsHelper;
.super Ljava/lang/Object;
.source "StatFsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/statfs/StatFsHelper$StorageType;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final h:I = 0x190

.field public static final i:J = 0x19000000L

.field private static j:Lcom/facebook/common/statfs/StatFsHelper;

.field private static final k:J


# instance fields
.field private volatile a:Landroid/os/StatFs;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile b:Ljava/io/File;

.field private volatile c:Landroid/os/StatFs;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile d:Ljava/io/File;

.field private e:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/locks/Lock;

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/common/statfs/StatFsHelper;->k:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->a:Landroid/os/StatFs;

    .line 3
    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->c:Landroid/os/StatFs;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->g:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method protected static a(Ljava/lang/String;)Landroid/os/StatFs;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->g:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->g:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->b:Ljava/io/File;

    .line 5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->d:Ljava/io/File;

    .line 6
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->j()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized e()Lcom/facebook/common/statfs/StatFsHelper;
    .locals 2

    const-class v0, Lcom/facebook/common/statfs/StatFsHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/common/statfs/StatFsHelper;->j:Lcom/facebook/common/statfs/StatFsHelper;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/common/statfs/StatFsHelper;

    invoke-direct {v1}, Lcom/facebook/common/statfs/StatFsHelper;-><init>()V

    sput-object v1, Lcom/facebook/common/statfs/StatFsHelper;->j:Lcom/facebook/common/statfs/StatFsHelper;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/common/statfs/StatFsHelper;->j:Lcom/facebook/common/statfs/StatFsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/common/statfs/StatFsHelper;->e:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/common/statfs/StatFsHelper;->k:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private j()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->a:Landroid/os/StatFs;

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->b:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/facebook/common/statfs/StatFsHelper;->k(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->a:Landroid/os/StatFs;

    .line 2
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->c:Landroid/os/StatFs;

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->d:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/facebook/common/statfs/StatFsHelper;->k(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->c:Landroid/os/StatFs;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->e:J

    return-void
.end method

.method private k(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;
    .locals 2
    .param p1    # Landroid/os/StatFs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/statfs/StatFsHelper;->a(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/facebook/common/internal/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public c(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DeprecatedMethod"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->b()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->g()V

    .line 3
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->a:Landroid/os/StatFs;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->c:Landroid/os/StatFs;

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 6
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    .line 8
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    int-to-long v2, p1

    :goto_1
    mul-long v0, v0, v2

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DeprecatedMethod"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->b()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->g()V

    .line 3
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->a:Landroid/os/StatFs;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->c:Landroid/os/StatFs;

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 6
    invoke-virtual {p1}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v2

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    .line 8
    invoke-virtual {p1}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result p1

    int-to-long v2, p1

    :goto_1
    mul-long v0, v0, v2

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public f(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DeprecatedMethod"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->b()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->g()V

    .line 3
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->a:Landroid/os/StatFs;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->c:Landroid/os/StatFs;

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 6
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    .line 8
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCount()I

    move-result p1

    int-to-long v2, p1

    :goto_1
    mul-long v0, v0, v2

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->b()V

    .line 3
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public i(Lcom/facebook/common/statfs/StatFsHelper$StorageType;J)Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->b()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/common/statfs/StatFsHelper;->c(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J

    move-result-wide v0

    const/4 p1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method
