.class Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field private curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

.field private localType:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/BitmapProcessor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->saveFile(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z

    return p1
.end method

.method private doLocalTask()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_7

    .line 5
    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePoolInner;

    move-result-object v0

    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mob/tools/gui/CachePoolInner;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 8
    iput-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 9
    invoke-static {v1, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 10
    invoke-static {v1, v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 11
    :cond_3
    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v3

    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-direct {p0, v1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    goto :goto_4

    .line 13
    :cond_4
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 14
    :try_start_1
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_6

    .line 15
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 17
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 20
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 21
    :cond_6
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 23
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :cond_7
    const-wide/16 v0, 0x1e

    .line 24
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    :goto_4
    return-void

    :catchall_3
    move-exception v1

    .line 25
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method private doNetworkTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    .line 5
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 7
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 8
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 9
    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePoolInner;

    move-result-object v0

    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/tools/gui/CachePoolInner;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 12
    iput-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 13
    invoke-static {v1, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 14
    invoke-static {v1, v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 15
    :cond_5
    invoke-direct {p0, v1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    goto :goto_3

    :cond_6
    const-wide/16 v0, 0x1e

    .line 16
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_3
    return-void

    :catchall_2
    move-exception v1

    .line 17
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 2
    invoke-static {p1, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 3
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$400(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 8
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$400(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)J

    move-result-wide v7

    add-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v1

    iget v5, v1, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredWidth:I

    .line 14
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v1

    iget v6, v1, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredHeight:I

    .line 15
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v1

    iget v7, v1, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->quality:I

    .line 16
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v1

    iget-wide v8, v1, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->maxBytes:J

    .line 17
    invoke-static/range {v4 .. v9}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressQuality(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    .line 19
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePoolInner;

    move-result-object v2

    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/gui/CachePoolInner;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    :cond_3
    invoke-static {p1, v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 22
    :cond_4
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1800(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    .line 23
    :goto_2
    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    goto :goto_3

    .line 24
    :cond_5
    new-instance v2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;-><init>(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    .line 26
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$2100()Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    move-result-object v1

    .line 27
    invoke-virtual {v2, v3, v4, v1}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 28
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 29
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1800(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    .line 30
    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    :goto_3
    return-void
.end method

.method private saveFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x100

    :try_start_1
    new-array v0, v0, [B

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    if-lez v2, :cond_2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 9
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 12
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-object v0, v1

    .line 13
    :catchall_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 15
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    :goto_2
    return-void

    :catchall_3
    move-exception p2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 17
    :catchall_4
    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public interrupt()V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :goto_0
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doLocalTask()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doNetworkTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method
