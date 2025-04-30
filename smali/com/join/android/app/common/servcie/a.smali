.class public Lcom/join/android/app/common/servcie/a;
.super Ljava/lang/Object;
.source "DownloadFactory.java"


# static fields
.field private static final a:Ljava/lang/String; = "DownloadFactory"

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/join/android/app/common/servcie/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    .line 2
    new-instance v0, Lcom/join/android/app/common/utils/e;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1f4

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/join/android/app/common/utils/e;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/join/android/app/common/servcie/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/f0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const-string v5, "_v2"

    if-eqz v2, :cond_7

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 5
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 12
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 13
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 16
    :cond_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/RomArchived;

    .line 18
    invoke-virtual {v7}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x1

    goto :goto_2

    .line 19
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 20
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/RomArchived;

    if-eqz v6, :cond_c

    if-nez v3, :cond_c

    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_3

    .line 23
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_c
    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 25
    invoke-virtual {v7}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 27
    :cond_d
    invoke-virtual {v7}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_3

    .line 28
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_f
    if-eqz v0, :cond_10

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    return v4

    :cond_10
    return v1
.end method

.method public static e()Lcom/join/android/app/common/servcie/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->e:Lcom/join/android/app/common/servcie/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/join/android/app/common/servcie/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/join/android/app/common/servcie/a;->e:Lcom/join/android/app/common/servcie/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/android/app/common/servcie/a;

    invoke-direct {v1}, Lcom/join/android/app/common/servcie/a;-><init>()V

    sput-object v1, Lcom/join/android/app/common/servcie/a;->e:Lcom/join/android/app/common/servcie/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/android/app/common/servcie/a;->e:Lcom/join/android/app/common/servcie/a;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "del removeTask  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/join/android/app/common/servcie/a;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method delTask() called."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";runtimeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRemove:Lcom/papa/sim/statistic/Event;

    invoke-static {p1, p2, v0}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/task/c;

    .line 4
    invoke-interface {v0}, Lcom/join/mgps/task/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    sget-object v0, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x7

    if-eqz v0, :cond_3

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";runtimestatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    sget-object v2, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_0

    .line 10
    invoke-static {v0}, Lcom/join/android/app/common/utils/k;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/a;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/l;

    invoke-direct {v3, v0, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/l;

    invoke-direct {v3, v0, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 19
    :cond_2
    :goto_1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 20
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/a;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 21
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/l;

    invoke-direct {v3, v0, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 22
    :cond_3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 23
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/a;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 25
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/event/l;

    invoke-direct {v2, p2, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 26
    :goto_2
    invoke-direct {p0, p2}, Lcom/join/android/app/common/servcie/a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.deletecheckhasfile"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plugNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameZipPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "romType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "gameName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/a$b;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/common/servcie/a$b;-><init>(Lcom/join/android/app/common/servcie/a;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p1
.end method

.method public g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v1, 0x24

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eq p1, v3, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v0, 0x26

    if-eq p1, v0, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish removeTask  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x1d

    const/4 v4, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/l;

    invoke-direct {v3, v1, v4}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/join/android/app/common/utils/k;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 10
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/l;

    invoke-direct {v3, v1, v4}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x26

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 13
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "del removeAllTask  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-object v2, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTask 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p1
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized m(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method start() called."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   downloadTaskPool .size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDownType()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownLimit()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    .line 5
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMobleNetNeedStop(I)V

    .line 6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v5, 0x24

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v5, 0x26

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "method start() called. return"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-nez v4, :cond_3

    .line 11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 12
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDownType()Z

    move-result v1

    .line 13
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownLimit()I

    move-result v4

    .line 14
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    .line 15
    invoke-virtual {p2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    .line 16
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_7

    .line 18
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v1, :cond_5

    .line 19
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 20
    monitor-exit p0

    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 21
    :try_start_2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownLimit()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    .line 22
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDownType()Z

    move-result p2

    invoke-virtual {v4, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    move-object p2, v4

    :cond_6
    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v1, 0x0

    .line 23
    :goto_4
    invoke-virtual {p2, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 24
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 25
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 26
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_8
    :try_start_3
    invoke-virtual {p2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 29
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v1, :cond_a

    .line 30
    sget-object v1, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-static {p1, p2, v1}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    goto :goto_5

    :cond_9
    if-nez v1, :cond_a

    .line 31
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-static {p1, p2, v1}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 32
    :cond_a
    :goto_5
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz p3, :cond_c

    .line 33
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p3

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p3, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    if-eqz p3, :cond_c

    .line 34
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_c
    :goto_6
    if-nez v0, :cond_d

    .line 35
    sget-object p3, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u68c0\u6d4b\u4e0d\u5728\u4efb\u52a1\u6c60\u4e2d  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, p2

    goto :goto_7

    .line 37
    :cond_d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u68c0\u6d4b\u5df2\u7ecf\u5728\u4efb\u52a1\u6c60\u4e2d "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 39
    :goto_7
    invoke-static {v0}, Lcom/join/android/app/common/utils/k;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const/4 p2, 0x2

    .line 40
    invoke-static {p1, v0, p2}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/l;

    invoke-direct {v3, p1, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v2, 0x1f

    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/16 v2, 0xd

    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v2, 0x23

    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v2, 0x1d

    if-eq p1, v2, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x1b

    .line 6
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/event/l;

    invoke-direct {v2, v0, p1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 8
    new-instance p1, Lcom/join/android/app/common/servcie/a$a;

    invoke-direct {p1, p0, v0}, Lcom/join/android/app/common/servcie/a$a;-><init>(Lcom/join/android/app/common/servcie/a;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/join/android/app/common/utils/k;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 13
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v2, Lcom/join/mgps/event/l;

    invoke-direct {v2, v0, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/event/j;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x26

    invoke-direct {v1, v0, v2}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public o(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    const-wide/32 v3, 0x6400000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-wide/16 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1, v2}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x64

    .line 6
    invoke-virtual {p1, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1, v2}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    goto :goto_1

    .line 11
    :cond_1
    sget-object v1, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v1, "unzipfailedxx"

    const-string v2, "send failed"

    .line 12
    invoke-static {v1, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/event/j;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/event/l;

    invoke-direct {v2, p1, v0}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/j;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x26

    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public p(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    const-wide/32 v3, 0x6400000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-wide/16 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1, v2}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x64

    .line 6
    invoke-virtual {p1, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1, v2}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    goto :goto_1

    .line 11
    :cond_1
    sget-object v1, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v1, "unzipfailedxx"

    const-string v2, "send failed"

    .line 12
    invoke-static {v1, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/event/l;

    invoke-direct {v2, p1, v0}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/j;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x26

    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    const/16 v4, 0xc

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    const-wide/16 v0, 0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v5, p2, v4, v0, v1}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    .line 4
    invoke-virtual {p2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v5, p2, v4, v0, v1}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 9
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    .line 12
    :goto_1
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v5, 0x24

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v5, Lcom/join/mgps/event/l;

    invoke-direct {v5, v0, v4}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v1, v5}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 15
    sget-object v1, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/task/c;

    if-eqz v1, :cond_2

    .line 16
    invoke-interface {v1}, Lcom/join/mgps/task/c;->isRunning()Z

    move-result v1

    if-nez v1, :cond_b

    .line 17
    :cond_2
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "%s_%s"

    const-string v9, "onZIPMd5Failed"

    const/4 v10, 0x1

    if-ne v1, v4, :cond_8

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 18
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wufun.unzip.failed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    const-string v1, "gameId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 22
    :cond_3
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 24
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-static {v1, p1, v10}, Lcom/join/mgps/Util/UtilsMy;->j2(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;Z)V

    .line 25
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    move-result-object v1

    .line 26
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    .line 29
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_5
    :goto_2
    new-instance v4, Lcom/join/mgps/task/f;

    invoke-direct {v4, v0, p1, v1}, Lcom/join/mgps/task/f;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v11

    cmp-long v1, v11, v2

    if-gtz v1, :cond_7

    .line 33
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getRemark()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    invoke-virtual {v3, v11, v12}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 37
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    new-array p2, v7, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v6

    aput-object v5, p2, v10

    .line 39
    invoke-static {v8, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v9, p2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 40
    :cond_6
    sget-object p1, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .line 42
    :cond_7
    sget-object p1, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object p1, Lcom/join/android/app/common/servcie/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 44
    :cond_8
    new-instance v1, Lcom/join/mgps/task/g;

    invoke-direct {v1, v0, p1}, Lcom/join/mgps/task/g;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v11

    cmp-long v4, v11, v2

    if-gtz v4, :cond_a

    .line 46
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v3

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v3

    .line 48
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getRemark()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    invoke-virtual {v4, v11, v12}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 50
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    new-array p2, v7, [Ljava/lang/Object;

    .line 51
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v6

    aput-object v5, p2, v10

    .line 52
    invoke-static {v8, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v9, p2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 53
    :cond_9
    sget-object p1, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 55
    :cond_a
    sget-object p1, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object p1, Lcom/join/android/app/common/servcie/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    const/16 v4, 0xc

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    const-wide/16 v0, 0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v5, p2, v4, v0, v1}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    .line 4
    invoke-virtual {p2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v5, p2, v4, v0, v1}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    goto :goto_1

    .line 9
    :cond_1
    sget-object v0, Lcom/join/android/app/common/servcie/a;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    .line 10
    :goto_1
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v5, 0x24

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v5, Lcom/join/mgps/event/l;

    invoke-direct {v5, v0, v4}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v1, v5}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    const-string v1, "gameId"

    const-string v4, "com.wufun.unzip.failed"

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz p3, :cond_f

    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 14
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-le v6, v7, :cond_2

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 15
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    if-eq p3, v6, :cond_3

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 16
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    if-eq p3, v6, :cond_3

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 17
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    if-eq p3, v6, :cond_3

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 18
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    if-eq p3, v6, :cond_3

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 19
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    if-eq p3, v6, :cond_3

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 20
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    if-eq p3, v6, :cond_3

    :cond_2
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 21
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    if-ne p3, v6, :cond_c

    .line 22
    :cond_3
    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 23
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 27
    :cond_4
    sget-object p2, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/task/c;

    if-eqz p2, :cond_5

    .line 28
    invoke-interface {p2}, Lcom/join/mgps/task/c;->isRunning()Z

    move-result p2

    if-nez p2, :cond_13

    .line 29
    :cond_5
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31
    sget-object p2, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p2

    if-ne p3, p2, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    .line 32
    :goto_2
    new-instance p3, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p3, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-static {p3, p1, p2}, Lcom/join/mgps/Util/UtilsMy;->j2(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;Z)V

    .line 33
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    move-result-object p2

    .line 34
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 37
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 38
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :cond_8
    :goto_3
    new-instance p3, Lcom/join/mgps/task/h;

    invoke-direct {p3, v0, p1, p2}, Lcom/join/mgps/task/h;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    new-instance p3, Lcom/join/mgps/task/f;

    invoke-direct {p3, v0, p1, p2}, Lcom/join/mgps/task/f;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    :cond_9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide p1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_b

    .line 43
    instance-of p1, p3, Lcom/join/mgps/task/f;

    if-eqz p1, :cond_a

    .line 44
    check-cast p3, Lcom/join/mgps/task/f;

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4

    .line 45
    :cond_a
    check-cast p3, Lcom/join/mgps/task/h;

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4

    .line 46
    :cond_b
    sget-object p1, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object p1, Lcom/join/android/app/common/servcie/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 48
    :cond_c
    sget-object p2, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/task/c;

    if-eqz p2, :cond_d

    .line 49
    invoke-interface {p2}, Lcom/join/mgps/task/c;->isRunning()Z

    move-result p2

    if-nez p2, :cond_13

    .line 50
    :cond_d
    new-instance p2, Lcom/join/mgps/task/h;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/task/h;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gtz p1, :cond_e

    .line 52
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_4

    .line 53
    :cond_e
    sget-object p1, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object p1, Lcom/join/android/app/common/servcie/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 55
    :cond_f
    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_10

    .line 56
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 57
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 60
    :cond_10
    sget-object p3, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/task/c;

    if-eqz p3, :cond_11

    .line 61
    invoke-interface {p3}, Lcom/join/mgps/task/c;->isRunning()Z

    move-result p3

    if-nez p3, :cond_13

    .line 62
    :cond_11
    new-instance p3, Lcom/join/mgps/task/e;

    invoke-direct {p3, v0, p1}, Lcom/join/mgps/task/e;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 63
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide p1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_12

    .line 64
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto :goto_4

    .line 65
    :cond_12
    sget-object p1, Lcom/join/android/app/common/servcie/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object p1, Lcom/join/android/app/common/servcie/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_13
    :goto_4
    return-void
.end method
