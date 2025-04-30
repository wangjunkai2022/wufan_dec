.class Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
.super Ljava/lang/Thread;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field private curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

.field private lastReport:J

.field private localType:Z

.field private processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z

    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    return-wide v0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z

    return p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    return-void
.end method

.method static synthetic access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    return-object p0
.end method

.method private doLocalTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 3
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 4
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 5
    invoke-static {v0, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V

    .line 6
    invoke-static {v0, v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 7
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lm/framework/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-direct {p0, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    return-void

    .line 11
    :cond_2
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_4

    .line 12
    :goto_1
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_3

    .line 13
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_3
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_4
    :goto_2
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    goto :goto_4

    .line 17
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    const-wide/16 v0, 0x1e

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :goto_4
    return-void
.end method

.method private doNetworkTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    :cond_1
    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 6
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 7
    invoke-static {v0, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V

    .line 8
    invoke-static {v0, v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 10
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    const-wide/16 v0, 0x1e

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :goto_2
    return-void
.end method

.method private doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 2
    invoke-static {p1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lm/framework/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm/framework/utils/Utils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 8
    :cond_0
    iput-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lm/framework/network/NetworkHelper;

    invoke-direct {v1}, Lm/framework/network/NetworkHelper;-><init>()V

    .line 10
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;

    invoke-direct {v4, p0, v0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Ljava/io/File;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    invoke-virtual {v1, v3, v4}, Lm/framework/network/NetworkHelper;->download(Ljava/lang/String;Lm/framework/network/ResponseCallback;)V

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 13
    :cond_2
    iput-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    return-void
.end method

.method private saveFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lm/framework/utils/Utils;->getFileMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "png"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 10
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x64

    .line 11
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 13
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_0
    return-void
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
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doLocalTask()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doNetworkTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
