.class public Lcn/aigestudio/downloader/bizs/f;
.super Ljava/lang/Object;
.source "DLInfo.java"


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicLong;

.field public b:Ljava/util/concurrent/atomic/AtomicLong;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/concurrent/atomic/AtomicInteger;

.field h:I

.field volatile i:Z

.field volatile j:Z

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/e;",
            ">;"
        }
    .end annotation
.end field

.field final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/j;",
            ">;"
        }
    .end annotation
.end field

.field q:Ld/b;

.field r:Ljava/io/File;

.field public s:Z

.field public t:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/aigestudio/downloader/bizs/f;->s:Z

    .line 6
    iput-boolean v0, p0, Lcn/aigestudio/downloader/bizs/f;->t:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
