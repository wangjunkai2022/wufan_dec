.class public Lcom/join/mgps/task/g;
.super Ljava/lang/Thread;
.source "UNZIPForPluginThread.java"

# interfaces
.implements Lcom/join/mgps/task/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/task/g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public d:Z

.field e:Lcom/join/mgps/task/g$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "UNZIPForPluginThread"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/task/g;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/task/g;->d:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/task/g;->e:Lcom/join/mgps/task/g$a;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "UNZIPForPluginThread"

    .line 8
    iput-object v0, p0, Lcom/join/mgps/task/g;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/task/g;->d:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/task/g;->e:Lcom/join/mgps/task/g$a;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    iput-object p2, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    .line 13
    iput-object p3, p0, Lcom/join/mgps/task/g;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/task/g;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/task/g;->d:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/task/g;->e:Lcom/join/mgps/task/g$a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/task/g$a;->a(Z)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    :cond_0
    return-void
.end method

.method public interrupt()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/task/g;->d:Z

    return v0
.end method

.method public run()V
    .locals 14

    const-string v0, "_"

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/h;->delete(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 8
    :goto_0
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v6, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v2}, Lcom/papa/sim/statistic/p;->f1(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    iget-object v6, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/papa/sim/statistic/p;->k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_4

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "zip len="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 15
    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v10

    const-wide/32 v12, 0x6400000

    cmp-long v2, v10, v12

    if-ltz v2, :cond_3

    .line 16
    new-instance v2, Lcom/join/mgps/task/g$a;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v5, v3}, Lcom/join/mgps/task/g$a;-><init>(Lcom/join/mgps/task/g;Ljava/io/File;Ljava/io/File;)V

    iput-object v2, p0, Lcom/join/mgps/task/g;->e:Lcom/join/mgps/task/g$a;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 18
    :cond_3
    iput-boolean v3, p0, Lcom/join/mgps/task/g;->d:Z

    .line 19
    :goto_1
    invoke-static {v5, v0}, Lcom/join/mgps/Util/s2;->g(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    move-wide v8, v6

    .line 20
    :goto_2
    :try_start_2
    iget-boolean v2, p0, Lcom/join/mgps/task/g;->d:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_5

    .line 21
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    return-void

    .line 22
    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/join/mgps/task/g;->e:Lcom/join/mgps/task/g$a;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2, v4}, Lcom/join/mgps/task/g$a;->a(Z)V

    :cond_6
    if-eqz v0, :cond_d

    const-string v2, ""

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_6

    .line 25
    :cond_7
    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-wide/16 v10, 0x64

    invoke-virtual {v2, v10, v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 26
    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    cmp-long v2, v8, v6

    if-eqz v2, :cond_8

    .line 27
    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    div-long/2addr v6, v12

    invoke-virtual {v2, v6, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setZipCost(J)V

    .line 28
    :cond_8
    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/h;->h(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v3

    invoke-virtual {v3, v1}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 31
    invoke-static {v1}, Lcom/join/android/app/common/utils/h;->F(Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 32
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 33
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lg1/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 34
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApkPath(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v1}, Lcom/join/android/app/common/utils/h;->E(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V

    .line 37
    :cond_9
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 38
    iget-object v1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 42
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2, v1, v10, v11}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 43
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 44
    iget-object v0, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 45
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/event/j;

    iget-object v3, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x26

    invoke-direct {v2, v3, v5}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/event/l;

    iget-object v3, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v2, v3, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/android/app/common/servcie/a;->l(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    :try_start_4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    iget-object v3, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v2, v1, :cond_a

    goto :goto_4

    :catch_0
    move-exception v0

    .line 52
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 54
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v1, ".downloadTask_chajian"

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/f0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 56
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    :cond_c
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDownloadTask.fina="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 58
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 59
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    .line 60
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    iget-object v1, p0, Lcom/join/mgps/task/g;->e:Lcom/join/mgps/task/g$a;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v4}, Lcom/join/mgps/task/g$a;->a(Z)V

    .line 62
    :cond_e
    iget-object v1, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v1, v2, v4}, Lcom/join/mgps/Util/UtilsMy;->J1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    move-result v1

    if-nez v1, :cond_f

    .line 63
    iget-object v0, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.broadcast.action_insufficient_storage"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    iget-object v0, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip...insufficient storage. gameId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->H1(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 65
    :cond_f
    :try_start_9
    iget-object v1, p0, Lcom/join/mgps/task/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zip error[gameId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",brand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",model="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/join/mgps/Util/h;->c(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/p;->H1(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 66
    :catch_3
    :goto_7
    :try_start_a
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 67
    :goto_8
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    .line 68
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 69
    :goto_9
    iget-object v0, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    return-void

    :goto_a
    iget-object v1, p0, Lcom/join/mgps/task/g;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 70
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method
