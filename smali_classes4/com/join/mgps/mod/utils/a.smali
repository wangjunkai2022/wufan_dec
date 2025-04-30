.class public Lcom/join/mgps/mod/utils/a;
.super Ljava/lang/Object;
.source "ApkInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/mod/utils/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/join/mgps/mod/utils/a;


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/mod/utils/a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/mod/utils/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/mod/utils/a;->a:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method

.method public static a()Lcom/join/mgps/mod/utils/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/mod/utils/a;->b:Lcom/join/mgps/mod/utils/a;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/mod/utils/a;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/mod/utils/a;

    invoke-direct {v1}, Lcom/join/mgps/mod/utils/a;-><init>()V

    sput-object v1, Lcom/join/mgps/mod/utils/a;->b:Lcom/join/mgps/mod/utils/a;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/join/mgps/mod/utils/a;->b:Lcom/join/mgps/mod/utils/a;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcom/join/mgps/mod/utils/a$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/mod/utils/a$a;-><init>(Lcom/join/mgps/mod/utils/a;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/mod/utils/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
