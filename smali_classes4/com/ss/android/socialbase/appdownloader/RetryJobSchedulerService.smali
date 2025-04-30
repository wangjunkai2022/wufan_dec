.class public Lcom/ss/android/socialbase/appdownloader/RetryJobSchedulerService;
.super Landroid/app/job/JobService;
.source "RetryJobSchedulerService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JZI)V
    .locals 11

    if-eqz p0, :cond_9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v3, p0, v5, v4}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V

    :cond_2
    :try_start_0
    const-string v3, "jobscheduler"

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_3

    return-void

    .line 6
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    .line 7
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    if-eq p4, v5, :cond_4

    goto :goto_1

    :cond_4
    const-wide/32 v6, 0xea60

    add-long/2addr v6, p1

    goto :goto_2

    :cond_5
    :goto_1
    const-wide/16 p1, 0x3e8

    move-wide v6, v0

    .line 8
    :goto_2
    new-instance p4, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v8

    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v10, Lcom/ss/android/socialbase/appdownloader/RetryJobSchedulerService;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p4, v8, v9}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 9
    invoke-virtual {p4, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    .line 10
    :goto_3
    invoke-virtual {p1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    cmp-long p2, v6, v0

    if-lez p2, :cond_7

    .line 13
    invoke-virtual {p1, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 14
    :cond_7
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    if-lez p1, :cond_8

    .line 15
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 17
    invoke-interface {p2, p0, v4, v4}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V

    :cond_8
    if-gtz p1, :cond_9

    const-string p0, "RetrySchedulerService"

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "schedule err errCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 2
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/job/JobService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    :cond_0
    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartJob, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetrySchedulerService"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
