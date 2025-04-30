.class Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;
.super Ljava/util/Timer;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerThread"
.end annotation


# instance fields
.field private processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 2
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 3
    new-instance v1, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;

    invoke-direct {v1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    return-object p0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->scan()V

    return-void
.end method

.method private scan()V
    .locals 10

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    array-length v4, v4

    if-lt v3, v4, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    aget-object v4, v4, v3

    const-string v5, "worker "

    if-nez v4, :cond_3

    .line 5
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    new-instance v6, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iget-object v7, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-direct {v6, v7}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    aput-object v6, v4, v3

    .line 6
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    aget-object v4, v4, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    aget-object v4, v4, v3

    if-nez v3, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-static {v4, v5}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V

    .line 8
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/16 v8, 0x4e20

    cmp-long v4, v6, v8

    if-lez v4, :cond_4

    .line 10
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->interrupt()V

    .line 11
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Z

    move-result v4

    .line 12
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    new-instance v7, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iget-object v8, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-direct {v7, v8}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    aput-object v7, v6, v3

    .line 13
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 14
    iget-object v5, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v5}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v5, v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V

    .line 15
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
