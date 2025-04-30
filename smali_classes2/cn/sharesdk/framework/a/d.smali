.class public Lcn/sharesdk/framework/a/d;
.super Lcn/sharesdk/framework/utils/g;
.source "StatisticsLogger.java"


# static fields
.field private static b:Lcn/sharesdk/framework/a/d;


# instance fields
.field private c:Lcom/mob/tools/utils/DeviceHelper;

.field private d:Lcn/sharesdk/framework/a/a;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:J

.field private h:Ljava/io/File;

.field private i:Lcom/mob/tools/utils/FileLocker;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/g;-><init>()V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/a/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/a/d;->d:Lcn/sharesdk/framework/a/a;

    .line 4
    new-instance v0, Lcom/mob/tools/utils/FileLocker;

    invoke-direct {v0}, Lcom/mob/tools/utils/FileLocker;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/a/d;->i:Lcom/mob/tools/utils/FileLocker;

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".statistics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sharesdk/framework/a/d;->h:Ljava/io/File;

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/a/d;)Lcn/sharesdk/framework/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/a/d;->d:Lcn/sharesdk/framework/a/a;

    return-object p0
.end method

.method public static declared-synchronized a()Lcn/sharesdk/framework/a/d;
    .locals 2

    const-class v0, Lcn/sharesdk/framework/a/d;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/a/d;->b:Lcn/sharesdk/framework/a/d;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcn/sharesdk/framework/a/d;

    invoke-direct {v1}, Lcn/sharesdk/framework/a/d;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/a/d;->b:Lcn/sharesdk/framework/a/d;

    .line 4
    :cond_0
    sget-object v1, Lcn/sharesdk/framework/a/d;->b:Lcn/sharesdk/framework/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/a/d$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/a/d$3;-><init>(Lcn/sharesdk/framework/a/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private c(Lcn/sharesdk/framework/a/b/c;)V
    .locals 5

    .line 11
    new-instance v0, Lcom/mob/commons/SHARESDK;

    invoke-direct {v0}, Lcom/mob/commons/SHARESDK;-><init>()V

    invoke-static {v0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/a/b/c;->f:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/a/b/c;->g:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result v0

    iput v0, p1, Lcn/sharesdk/framework/a/b/c;->h:I

    .line 14
    sget v0, Lcn/sharesdk/framework/ShareSDK;->SDK_VERSION_CODE:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/a/b/c;->i:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v0

    iput v0, p1, Lcn/sharesdk/framework/a/b/c;->j:I

    .line 16
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/a/b/c;->k:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ShareSDKCore"

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Your appKey of ShareSDK is null , this will cause its data won\'t be count!"

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p1, Lcn/sharesdk/framework/a/b/c;->g:Ljava/lang/String;

    const-string v4, "cn.sharesdk.demo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "api20"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "androidv1101"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Your app is using the appkey of ShareSDK Demo, this will cause its data won\'t be count!"

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 22
    :cond_2
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/a/b/c;->l:Ljava/lang/String;

    return-void
.end method

.method private d(Lcn/sharesdk/framework/a/b/c;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->d:Lcn/sharesdk/framework/a/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/a/a;->a(Lcn/sharesdk/framework/a/b/c;)V

    .line 2
    invoke-virtual {p1}, Lcn/sharesdk/framework/a/b/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/a/b/c;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcn/sharesdk/framework/a/d;->e:Landroid/os/Handler;

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 3

    .line 6
    iget-boolean p1, p0, Lcn/sharesdk/framework/a/d;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcn/sharesdk/framework/a/d;->f:Z

    .line 8
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->i:Lcom/mob/tools/utils/FileLocker;

    iget-object v1, p0, Lcn/sharesdk/framework/a/d;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/FileLocker;->setLockFile(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->i:Lcom/mob/tools/utils/FileLocker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/FileLocker;->lock(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/a/d$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/a/d$1;-><init>(Lcn/sharesdk/framework/a/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->d:Lcn/sharesdk/framework/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/a/a;->b()V

    .line 13
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->d:Lcn/sharesdk/framework/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/a/a;->c()V

    .line 14
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->setEnableAuthTag(Z)V

    .line 15
    invoke-direct {p0}, Lcn/sharesdk/framework/a/d;->b()V

    .line 16
    iget-object p1, p0, Lcn/sharesdk/framework/utils/g;->a:Landroid/os/Handler;

    const/4 v0, 0x4

    const-wide/32 v1, 0x36ee80

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcn/sharesdk/framework/a/b/c;)V
    .locals 2

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 19
    new-instance v0, Lcn/sharesdk/framework/a/d$2;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/framework/a/d$2;-><init>(Lcn/sharesdk/framework/a/d;Lcn/sharesdk/framework/a/b/c;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/a/d;->b(Lcn/sharesdk/framework/a/b/c;)V

    :goto_0
    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 9

    .line 12
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/a/a/e;->a()Lcn/sharesdk/framework/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/a/a/e;->i()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 18
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 22
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v3, v2, :cond_1

    if-ne v4, v1, :cond_1

    if-eq v6, v0, :cond_2

    .line 23
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/a/d;->d:Lcn/sharesdk/framework/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/a/a;->c()V

    .line 24
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/utils/g;->a:Landroid/os/Handler;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 26
    check-cast p1, Lcn/sharesdk/framework/a/b/c;

    .line 27
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/a/d;->d(Lcn/sharesdk/framework/a/b/c;)V

    .line 28
    iget-object p1, p0, Lcn/sharesdk/framework/utils/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    iget-object p1, p0, Lcn/sharesdk/framework/utils/g;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 30
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/framework/a/d;->d:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p1}, Lcn/sharesdk/framework/a/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 31
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public b(Lcn/sharesdk/framework/a/b/c;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isMob()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcn/sharesdk/framework/a/d;->f:Z

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/a/d;->c(Lcn/sharesdk/framework/a/b/c;)V

    .line 4
    invoke-virtual {p1}, Lcn/sharesdk/framework/a/b/c;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    .line 6
    iput v2, v1, Landroid/os/Message;->what:I

    .line 7
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object p1, p0, Lcn/sharesdk/framework/utils/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drop event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/sharesdk/framework/a/b/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected c(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcn/sharesdk/framework/a/d;->f:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/sharesdk/framework/a/d;->g:J

    sub-long/2addr v0, v2

    .line 3
    new-instance p1, Lcn/sharesdk/framework/a/b/e;

    invoke-direct {p1}, Lcn/sharesdk/framework/a/b/e;-><init>()V

    .line 4
    iput-wide v0, p1, Lcn/sharesdk/framework/a/b/e;->a:J

    .line 5
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/a/d;->a(Lcn/sharesdk/framework/a/b/c;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcn/sharesdk/framework/a/d;->f:Z

    .line 7
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/framework/a/d;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 9
    sput-object p1, Lcn/sharesdk/framework/a/d;->b:Lcn/sharesdk/framework/a/d;

    .line 10
    iget-object p1, p0, Lcn/sharesdk/framework/utils/g;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method
