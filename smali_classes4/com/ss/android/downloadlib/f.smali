.class public Lcom/ss/android/downloadlib/f;
.super Ljava/lang/Object;
.source "DownloadDispatcher.java"


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/f;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/downloadlib/addownload/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/addownload/f;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/f;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/f;
    .locals 2

    .line 2
    sget-object v0, Lcom/ss/android/downloadlib/f;->a:Lcom/ss/android/downloadlib/f;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/ss/android/downloadlib/f;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/f;->a:Lcom/ss/android/downloadlib/f;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/ss/android/downloadlib/f;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/f;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/f;->a:Lcom/ss/android/downloadlib/f;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/f;->a:Lcom/ss/android/downloadlib/f;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/f;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private declared-synchronized b(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/f;->c(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/addownload/f;

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/f;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 5
    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/f;->b(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 6
    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/f;->b(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/f;->a()V

    .line 8
    iget-object p1, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()V
    .locals 7

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/ss/android/downloadlib/f;->f:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 9
    :cond_0
    iput-wide v0, p0, Lcom/ss/android/downloadlib/f;->f:J

    .line 10
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/ss/android/downloadlib/f;->d()V

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/addownload/e;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/e;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/f;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/f;->b(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 4
    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/f;->b(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/f;->a()V

    .line 6
    iget-object p1, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/downloadlib/addownload/f;

    .line 4
    invoke-interface {v4}, Lcom/ss/android/downloadlib/addownload/f;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v4}, Lcom/ss/android/downloadlib/addownload/f;->d()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/32 v7, 0x493e0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 6
    invoke-interface {v4}, Lcom/ss/android/downloadlib/addownload/f;->h()V

    .line 7
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/e;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/f;

    .line 16
    instance-of v0, p1, Lcom/ss/android/downloadlib/addownload/e;

    if-eqz v0, :cond_1

    .line 17
    check-cast p1, Lcom/ss/android/downloadlib/addownload/e;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public a(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 2

    if-eqz p4, :cond_3

    .line 8
    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/addownload/f;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/f;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/f;->b(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/f;->b(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/f;->a()V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/f;->b(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/f;->c(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;)V
    .locals 2
    .param p2    # Lcom/ss/android/download/api/download/DownloadController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/download/api/download/DownloadEventConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/f$1;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/ss/android/download/api/download/a/a;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 37
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "fix_listener_oom"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$5;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/f$5;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/f$2;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/f$3;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/addownload/f;

    if-eqz v0, :cond_2

    .line 20
    invoke-interface {v0, p2}, Lcom/ss/android/downloadlib/addownload/f;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 21
    iget-object p2, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p2, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/f;->c()V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 27
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 28
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/OnItemClickListener;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/f;

    if-eqz p1, :cond_1

    .line 31
    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/f;->a(J)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 32
    invoke-interface {p1, p5}, Lcom/ss/android/downloadlib/addownload/f;->b(Lcom/ss/android/download/api/download/DownloadEventConfig;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 33
    invoke-interface {p1, p6}, Lcom/ss/android/downloadlib/addownload/f;->b(Lcom/ss/android/download/api/download/DownloadController;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 34
    invoke-interface {p1, p7}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/download/api/config/OnItemClickListener;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 35
    invoke-interface {p1, p8}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    .line 36
    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/f;->b(I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/f;

    if-eqz p1, :cond_1

    .line 26
    invoke-interface {p1, p2}, Lcom/ss/android/downloadlib/addownload/f;->a(Z)V

    :cond_1
    return-void
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/f$4;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
