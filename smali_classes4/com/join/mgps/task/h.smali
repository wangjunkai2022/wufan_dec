.class public Lcom/join/mgps/task/h;
.super Ljava/lang/Thread;
.source "UNZIPThread.java"

# interfaces
.implements Lcom/join/mgps/task/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/task/h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public c:Z

.field d:Lcom/join/mgps/task/h$a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/task/h;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/task/h;->d:Lcom/join/mgps/task/h$a;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/task/h;->c:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/task/h;->d:Lcom/join/mgps/task/h$a;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iput-object p2, p0, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/task/h;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/task/h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/task/h;->e:Ljava/lang/String;

    return-object p0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    const-string v0, "-"

    move-object/from16 v1, p1

    .line 1
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, ""

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v2, "999"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    new-array v2, v4, [Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 7
    array-length v2, v1

    const-string v3, "\u6a21\u5757"

    const-string v6, "\u6700\u65b0\u7f51\u6e38"

    const-string v7, "\u5927\u5bb6\u90fd\u5728\u73a9"

    const-string v8, "home"

    const-string v9, "0"

    const-string v10, "\u7f51\u6e38\u63a8\u8350"

    if-lez v2, :cond_10

    .line 8
    array-length v2, v1

    const-string v12, "4"

    const/4 v13, 0x2

    if-le v2, v13, :cond_3

    aget-object v2, v1, v4

    const-string v14, "22"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    aget-object v2, v1, v5

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v7

    goto :goto_1

    .line 10
    :cond_1
    aget-object v2, v1, v5

    const-string v3, "13"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v6

    .line 11
    :cond_2
    :goto_1
    aget-object v1, v1, v13

    :goto_2
    move-object v9, v0

    move-object v10, v1

    goto/16 :goto_6

    .line 12
    :cond_3
    aget-object v2, v1, v4

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    aget-object v2, v1, v4

    const-string v14, "ranking"

    invoke-static {v2, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_5

    .line 13
    :cond_4
    aget-object v2, v1, v4

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    array-length v0, v1

    if-le v0, v5, :cond_5

    aget-object v0, v1, v5

    move-object v10, v0

    goto :goto_3

    :cond_5
    move-object v10, v9

    :goto_3
    move-object v9, v7

    goto/16 :goto_6

    .line 15
    :cond_6
    aget-object v2, v1, v4

    const-string v7, "7"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    array-length v0, v1

    if-le v0, v5, :cond_7

    aget-object v0, v1, v5

    move-object v9, v10

    move-object v10, v0

    goto/16 :goto_6

    :cond_7
    move-object v15, v10

    move-object v10, v9

    move-object v9, v15

    goto :goto_6

    .line 17
    :cond_8
    aget-object v2, v1, v4

    const-string v7, "5"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 18
    array-length v0, v1

    if-le v0, v5, :cond_9

    aget-object v0, v1, v5

    move-object v10, v0

    goto :goto_4

    :cond_9
    move-object v10, v9

    :goto_4
    move-object v9, v6

    goto :goto_6

    .line 19
    :cond_a
    aget-object v2, v1, v4

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 20
    array-length v0, v1

    if-le v0, v13, :cond_b

    .line 21
    aget-object v9, v1, v13

    .line 22
    :cond_b
    array-length v0, v1

    const/4 v2, 0x3

    if-le v0, v2, :cond_c

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    aget-object v1, v1, v2

    goto :goto_2

    :cond_c
    move-object v10, v9

    move-object v9, v3

    goto :goto_6

    .line 25
    :cond_d
    :goto_5
    aget-object v2, v1, v4

    .line 26
    array-length v3, v1

    if-le v3, v5, :cond_e

    .line 27
    aget-object v0, v1, v5

    .line 28
    :cond_e
    array-length v3, v1

    if-le v3, v13, :cond_f

    .line 29
    aget-object v1, v1, v13

    move-object v9, v0

    move-object v10, v1

    move-object v8, v2

    goto :goto_6

    :cond_f
    move-object v8, v2

    :cond_10
    move-object v10, v9

    move-object v9, v0

    .line 30
    :goto_6
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "volcannoEvent"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-direct {v0}, Lcom/psk/eventmodule/StatFactory$VolcanoOther;-><init>()V

    .line 33
    invoke-static/range {p3 .. p3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 34
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-object/from16 v2, p3

    invoke-virtual {v0, v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    :cond_11
    move-object v5, v0

    .line 35
    sget-object v0, Lcom/psk/eventmodule/StatFactory;->Companion:Lcom/psk/eventmodule/StatFactory$Companion;

    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/StatFactory$Companion;->getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/StatFactory;

    move-result-object v0

    new-instance v13, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;

    sget-object v2, Lcom/psk/eventmodule/Event;->conversion:Lcom/psk/eventmodule/Event;

    new-instance v4, Lcom/psk/eventmodule/StatFactory$SpmData;

    const-string v7, "wufun"

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/psk/eventmodule/StatFactory$SpmData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v13

    move-object/from16 v3, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;-><init>(Lcom/psk/eventmodule/Event;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$SpmData;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    invoke-virtual {v0, v13}, Lcom/psk/eventmodule/StatFactory;->sendEvent(Lcom/psk/eventmodule/StatFactory$VolcanoEvent;)V

    goto :goto_7

    :cond_12
    move-object/from16 v12, p0

    :goto_7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/task/h;->c:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/task/h;->d:Lcom/join/mgps/task/h$a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/task/h$a;->a(Z)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    :cond_0
    return-void
.end method

.method d()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v0
.end method

.method public interrupt()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/task/h;->c:Z

    return v0
.end method

.method public run()V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "]::"

    const-string v3, ",model="

    const-string v4, ",brand="

    const-string v5, ",size="

    const-string v6, "zip error[gameId="

    .line 1
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v7}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v7}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 4
    :goto_0
    :try_start_0
    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "zip len="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 8
    iget-object v14, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v14

    if-eq v14, v9, :cond_2

    .line 9
    iget-object v14, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v14}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v14

    iget-object v15, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v15

    iget-object v8, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v15, v8, v7}, Lcom/papa/sim/statistic/p;->f1(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    :cond_2
    iget-object v8, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v14

    const-wide/32 v19, 0x6400000

    const-wide v21, 0x80000000L

    cmp-long v8, v14, v19

    if-ltz v8, :cond_4

    .line 11
    iget-object v8, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v14

    cmp-long v8, v14, v21

    if-lez v8, :cond_3

    .line 12
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    iget-object v14, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v8, v14}, Lcom/join/mgps/Util/s;->d(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    iget-object v14, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v8, v14}, Lcom/join/mgps/Util/s2;->c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 14
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get rom path"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance v14, Lcom/join/mgps/task/h$a;

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v14, v1, v8}, Lcom/join/mgps/task/h$a;-><init>(Lcom/join/mgps/task/h;Ljava/io/File;)V

    iput-object v14, v1, Lcom/join/mgps/task/h;->d:Lcom/join/mgps/task/h$a;

    .line 16
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 17
    :cond_4
    iput-boolean v9, v1, Lcom/join/mgps/task/h;->c:Z

    .line 18
    :goto_2
    iget-object v8, v1, Lcom/join/mgps/task/h;->e:Ljava/lang/String;

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 19
    new-instance v8, Ljava/io/File;

    iget-object v14, v1, Lcom/join/mgps/task/h;->e:Ljava/lang/String;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_5

    .line 21
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_5
    iget-object v8, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v14

    cmp-long v8, v14, v21

    if-lez v8, :cond_6

    .line 23
    iget-object v8, v1, Lcom/join/mgps/task/h;->e:Ljava/lang/String;

    iget-object v14, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v11, v8, v14}, Lcom/join/mgps/Util/s;->g(Lcom/join/mgps/task/h;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UNZipPathBackBean;

    move-result-object v8

    goto :goto_3

    .line 24
    :cond_6
    iget-object v8, v1, Lcom/join/mgps/task/h;->e:Ljava/lang/String;

    iget-object v14, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v11, v8, v14}, Lcom/join/mgps/Util/s2;->h(Lcom/join/mgps/task/h;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UNZipPathBackBean;

    move-result-object v8

    goto :goto_3

    .line 25
    :cond_7
    iget-object v8, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v14

    cmp-long v8, v14, v21

    if-lez v8, :cond_8

    .line 26
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    iget-object v14, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v11, v8, v14}, Lcom/join/mgps/Util/s;->g(Lcom/join/mgps/task/h;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UNZipPathBackBean;

    move-result-object v8

    goto :goto_3

    .line 27
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    iget-object v14, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v11, v8, v14}, Lcom/join/mgps/Util/s2;->h(Lcom/join/mgps/task/h;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UNZipPathBackBean;

    move-result-object v8

    .line 28
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/task/h;->d()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 29
    new-instance v14, Ljava/io/File;

    iget-object v15, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    iget-object v9, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v15, v9}, Lcom/join/mgps/Util/s2;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    .line 31
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "romsPath-"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getGameZipPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    .line 32
    :goto_5
    :try_start_2
    iget-boolean v2, v1, Lcom/join/mgps/task/h;->c:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_b

    .line 33
    :goto_6
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    return-void

    .line 34
    :cond_b
    :try_start_3
    iget-object v2, v1, Lcom/join/mgps/task/h;->d:Lcom/join/mgps/task/h$a;

    if-eqz v2, :cond_c

    .line 35
    invoke-virtual {v2, v10}, Lcom/join/mgps/task/h$a;->a(Z)V

    :cond_c
    if-eqz v8, :cond_d

    .line 36
    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 37
    new-instance v15, Ljava/io/File;

    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    const/4 v15, 0x0

    :goto_7
    if-eqz v8, :cond_20

    const-string v2, ""

    .line 38
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    if-eqz v15, :cond_20

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_d

    .line 39
    :cond_e
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 40
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 41
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_f

    .line 42
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 43
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getSoucePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_path(Ljava/lang/String;)V

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "romsPath3-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-wide/16 v5, -0x1

    cmp-long v2, v12, v5

    if-eqz v2, :cond_10

    .line 45
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    div-long/2addr v5, v8

    invoke-virtual {v2, v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setZipCost(J)V

    .line 46
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "romsPath4-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {v11}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    if-eqz v14, :cond_11

    .line 49
    invoke-static {v14}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 50
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "romsPath5-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_13

    .line 52
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/papa/sim/statistic/Where;->article:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 53
    iget-object v2, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v11

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v14

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getInterrupt()I

    move-result v16

    iget-object v2, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v17

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt1()Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getZipCost()J

    move-result-wide v19

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v21

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v22

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v7

    invoke-virtual/range {v11 .. v24}, Lcom/papa/sim/statistic/p;->B0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;I)V

    goto :goto_8

    .line 54
    :cond_12
    iget-object v2, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v11

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v14

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getInterrupt()I

    move-result v16

    iget-object v2, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v17

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getZipCost()J

    move-result-wide v18

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v20

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v21

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v22

    move/from16 v23, v7

    invoke-virtual/range {v11 .. v23}, Lcom/papa/sim/statistic/p;->z0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;I)V

    .line 55
    :goto_8
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 57
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v5

    const-class v6, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v5, v2, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ExtBean;

    if-eqz v2, :cond_13

    .line 58
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 60
    iget-object v6, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    move-result-object v2

    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v7

    invoke-direct {v1, v5, v6, v2, v7}, Lcom/join/mgps/task/h;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "romsPath6-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v5, "crc_sign_id"

    const/4 v6, 0x5

    if-eqz v2, :cond_17

    const/4 v7, 0x1

    if-eq v2, v7, :cond_17

    const/4 v7, 0x2

    if-eq v2, v7, :cond_14

    .line 63
    :try_start_4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v5}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 64
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 65
    :cond_14
    invoke-static {}, Ln1/n;->o()Ln1/n;

    move-result-object v2

    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ln1/n;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/DownlodTaskCopyTable;

    move-result-object v2

    .line 66
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v7

    if-eqz v2, :cond_19

    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->getDownloadTask()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_19

    .line 68
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->getDownloadTask()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7, v8, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 69
    iget-object v9, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    move-result-object v9

    const-class v11, Ljava/util/ArrayList;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const-class v12, Lcom/join/mgps/dto/TipBean;

    aput-object v12, v13, v10

    invoke-virtual {v7, v11, v13}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v8, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 71
    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v7

    if-eqz v7, :cond_15

    .line 72
    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 73
    :cond_15
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 74
    iget-object v9, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v5

    invoke-virtual {v5, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 76
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 77
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/db/tables/EMUUpdateTable;

    .line 78
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_down_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    :cond_16
    const/4 v5, 0x1

    .line 81
    invoke-virtual {v8, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 82
    invoke-virtual {v8, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 83
    invoke-static {}, Ln1/n;->o()Ln1/n;

    move-result-object v5

    invoke-virtual {v5, v2}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 84
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v8}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 85
    :cond_17
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 86
    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v5

    invoke-virtual {v5, v2}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 88
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_18

    .line 89
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/EMUUpdateTable;

    .line 90
    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 91
    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 92
    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_down_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 93
    :cond_18
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :try_start_6
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 95
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v5}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDownloadTask.romwpath="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 97
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :cond_19
    :goto_9
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 99
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v5, v6, v3, v4}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 100
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2, v3, v6}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 101
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 102
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln1/k;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/DownloadHistoryTable;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    goto :goto_a

    .line 104
    :cond_1a
    new-instance v2, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    invoke-direct {v2}, Lcom/join/mgps/db/tables/DownloadHistoryTable;-><init>()V

    .line 105
    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    .line 107
    :goto_a
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1b
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 109
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    const-string v3, ".downloadTask"

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/join/mgps/Util/f0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 111
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    :cond_1c
    :goto_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "gameId"

    .line 113
    iget-object v4, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.join.android.app.mgsim.wufun.broadcast.down_and_unzip_success"

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v3, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/a;->l(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v4, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x26

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/l;

    iget-object v4, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v3, v4, v6}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 119
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/sim/statistic/o;->u(Ljava/lang/String;)V

    .line 120
    iget-object v2, v1, Lcom/join/mgps/task/h;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/s;

    const/16 v4, 0x9

    iget-object v5, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 122
    :cond_1d
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_1f

    .line 123
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 124
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 125
    iget-object v2, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->b2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c

    .line 126
    :cond_1e
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v2

    .line 127
    iget-object v3, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    iget-object v4, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 128
    iget-object v2, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->b2(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    :cond_1f
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDownloadTask.fina="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 130
    :cond_20
    :goto_d
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 131
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_f

    :catch_3
    move-exception v0

    move-object v8, v0

    .line 132
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    iget-object v9, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v9

    iget-object v12, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v13}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13, v7}, Lcom/papa/sim/statistic/p;->Y1(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 134
    :try_start_b
    iget-object v7, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/join/mgps/Util/h;->c(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/papa/sim/statistic/p;->H1(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 135
    :catch_4
    :try_start_c
    iget-object v7, v1, Lcom/join/mgps/task/h;->d:Lcom/join/mgps/task/h$a;

    if-eqz v7, :cond_21

    invoke-virtual {v7, v10}, Lcom/join/mgps/task/h$a;->a(Z)V

    .line 136
    :cond_21
    iget-object v7, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    iget-object v9, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v7, v9, v10}, Lcom/join/mgps/Util/UtilsMy;->J1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    move-result v7

    if-nez v7, :cond_22

    .line 137
    iget-object v2, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.join.android.app.mgsim.broadcast.action_insufficient_storage"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    iget-object v2, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zip...insufficient storage. gameId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/p;->H1(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_e

    .line 139
    :cond_22
    :try_start_d
    iget-object v7, v1, Lcom/join/mgps/task/h;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/join/mgps/Util/h;->c(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/papa/sim/statistic/p;->H1(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 140
    :catch_5
    :goto_e
    :try_start_e
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    .line 141
    :goto_f
    :try_start_f
    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_11

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 142
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 143
    :goto_10
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    return-void

    :goto_11
    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 144
    goto :goto_13

    :goto_12
    throw v2

    :goto_13
    goto :goto_12
.end method
