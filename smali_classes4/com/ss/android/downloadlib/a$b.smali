.class Lcom/ss/android/downloadlib/a$b;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:J

.field private d:I

.field private e:J


# direct methods
.method private constructor <init>(JIJI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/ss/android/downloadlib/a$b;->a:J

    .line 4
    iput p3, p0, Lcom/ss/android/downloadlib/a$b;->b:I

    .line 5
    iput-wide p4, p0, Lcom/ss/android/downloadlib/a$b;->c:J

    .line 6
    iput p6, p0, Lcom/ss/android/downloadlib/a$b;->d:I

    return-void
.end method

.method synthetic constructor <init>(JIJILcom/ss/android/downloadlib/a$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/downloadlib/a$b;-><init>(JIJI)V

    return-void
.end method

.method private a(ZLcom/ss/android/downloadad/api/a/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLorg/json/JSONObject;)I
    .locals 6

    .line 23
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "install_failed_check_ttmd5"

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 25
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->checkMd5Status()I

    move-result v1

    :try_start_0
    const-string v3, "ttmd5_status"

    .line 26
    invoke-virtual {p5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 27
    :goto_0
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p1, 0x7d5

    return p1

    .line 28
    :cond_0
    iget v1, p0, Lcom/ss/android/downloadlib/a$b;->d:I

    const/16 v3, 0x7d0

    if-eq v1, v3, :cond_1

    return v1

    :cond_1
    const-string v1, "install_failed_check_signature"

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 30
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/downloadad/api/a/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/l;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/downloadad/api/a/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/l;->g(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/ss/android/downloadlib/g/l;->h(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p3

    .line 33
    invoke-static {p3, v0}, Lcom/ss/android/downloadlib/g/l;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p3

    if-nez p3, :cond_2

    const/16 p1, 0x7d6

    return p1

    :cond_2
    if-nez p1, :cond_3

    const/16 p1, 0x7d2

    return p1

    .line 34
    :cond_3
    iget-wide v0, p0, Lcom/ss/android/downloadlib/a$b;->e:J

    iget-wide v4, p0, Lcom/ss/android/downloadlib/a$b;->c:J

    cmp-long p1, v0, v4

    if-lez p1, :cond_6

    :try_start_1
    const-string p1, "install_time"

    sub-long/2addr v0, v4

    .line 35
    invoke-virtual {p5, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "install_again"

    .line 36
    invoke-virtual {p2}, Lcom/ss/android/downloadad/api/a/b;->C()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/a$b;->c:J

    cmp-long v3, p2, v0

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    nop

    :goto_2
    if-nez p4, :cond_5

    const/16 p1, 0x7d3

    return p1

    :cond_5
    const/16 p1, 0x7d4

    return p1

    :cond_6
    return v3
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$b;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a$b;->e:J

    return-void
.end method


# virtual methods
.method a()Z
    .locals 21

    move-object/from16 v7, p0

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v1, v7, Lcom/ss/android/downloadlib/a$b;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v8

    const/4 v0, 0x0

    if-eqz v8, :cond_9

    .line 3
    invoke-static {v8}, Lcom/ss/android/downloadlib/g/l;->b(Lcom/ss/android/downloadad/api/a/b;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v8, Lcom/ss/android/downloadad/api/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v8}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    if-nez v4, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {v8}, Lcom/ss/android/downloadad/api/a/b;->M()J

    move-result-wide v9

    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/g/l;->a(Ljava/io/File;)J

    move-result-wide v11

    const-wide/32 v1, 0x1f400000

    const-wide/16 v5, 0xa

    .line 7
    div-long v5, v11, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 8
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v13

    long-to-double v1, v1

    long-to-double v5, v13

    const-wide/high16 v15, 0x4004000000000000L    # 2.5

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v15

    const-wide/16 v15, -0x1

    const/16 v17, 0x1

    cmp-long v3, v9, v15

    if-lez v3, :cond_2

    cmp-long v3, v13, v15

    if-lez v3, :cond_2

    move-wide v15, v5

    long-to-double v5, v9

    cmpg-double v3, v5, v1

    if-gez v3, :cond_3

    goto :goto_0

    :cond_2
    move-wide v15, v5

    :cond_3
    const/4 v0, 0x1

    .line 10
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;)Z

    move-result v18

    .line 11
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v1, p0

    move v2, v0

    move-object v3, v8

    move/from16 v5, v18

    move-object/from16 v19, v6

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/ss/android/downloadlib/a$b;->a(ZLcom/ss/android/downloadad/api/a/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLorg/json/JSONObject;)I

    move-result v1

    iput v1, v7, Lcom/ss/android/downloadlib/a$b;->d:I

    :try_start_0
    const-string v2, "fail_status"

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, v19

    :try_start_1
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "available_space"

    const-wide/32 v4, 0x100000

    .line 14
    div-long v19, v9, v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "total_space"

    .line 15
    div-long/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    cmp-long v6, v13, v1

    if-lez v6, :cond_4

    const-string v6, "package_size"

    .line 16
    div-long v4, v13, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v4, "space_enough"

    const/4 v5, 0x2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    .line 17
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    cmp-long v0, v9, v1

    if-lez v0, :cond_6

    cmp-long v0, v13, v1

    if-lez v0, :cond_6

    const-string v0, "available_space_ratio"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double v1, v9

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v15

    :try_start_2
    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_6
    const-string v0, "permission_unknown_source_install"

    if-eqz v18, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    .line 19
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_update_download"

    .line 20
    invoke-virtual {v8}, Lcom/ss/android/downloadad/api/a/b;->V()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v5, 0x1

    :cond_8
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, v19

    .line 21
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_4
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "install_failed"

    invoke-virtual {v0, v1, v3, v8}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    return v17

    :cond_9
    :goto_5
    return v0
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/a$b;->a:J

    iget v3, p0, Lcom/ss/android/downloadlib/a$b;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a;->a(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
