.class public Lcom/join/mgps/task/f;
.super Ljava/lang/Thread;
.source "UNPs2ZIPThread.java"

# interfaces
.implements Lcom/join/mgps/task/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/task/f$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public c:Z

.field public d:Z

.field e:Lcom/join/mgps/task/f$a;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/task/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/task/f;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/task/f;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/task/f;->d:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/task/f;->e:Lcom/join/mgps/task/f$a;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/join/mgps/task/f;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/task/f;->c:Z

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/task/f;->d:Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/task/f;->e:Lcom/join/mgps/task/f$a;

    .line 12
    iput-object p1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    iput-object p2, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    .line 14
    iput-boolean p3, p0, Lcom/join/mgps/task/f;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/task/f;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/task/f;->c:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/task/f;->e:Lcom/join/mgps/task/f$a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/task/f$a;->a(Z)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/task/f;->c:Z

    return v0
.end method

.method public run()V
    .locals 13

    const-string v0, "_"

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/h;->delete(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v5, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v5

    iget-object v6, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/papa/sim/statistic/p;->f1(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    iget-object v5, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/papa/sim/statistic/p;->k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/task/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 16
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_5

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zip len="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 19
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v9

    const-wide/32 v11, 0x6400000

    cmp-long v1, v9, v11

    if-ltz v1, :cond_4

    .line 20
    new-instance v1, Lcom/join/mgps/task/f$a;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v4, v2}, Lcom/join/mgps/task/f$a;-><init>(Lcom/join/mgps/task/f;Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, Lcom/join/mgps/task/f;->e:Lcom/join/mgps/task/f$a;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 22
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/task/f;->c:Z

    .line 23
    :goto_1
    invoke-static {v4, v0}, Lcom/join/mgps/Util/s2;->g(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    move-wide v7, v5

    .line 24
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/join/mgps/task/f;->c:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_6

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    return-void

    .line 26
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/join/mgps/task/f;->e:Lcom/join/mgps/task/f$a;

    if-eqz v1, :cond_7

    .line 27
    invoke-virtual {v1, v3}, Lcom/join/mgps/task/f$a;->a(Z)V

    :cond_7
    if-eqz v0, :cond_e

    const-string v1, ""

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_5

    .line 29
    :cond_8
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-wide/16 v9, 0x64

    invoke-virtual {v1, v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 30
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    cmp-long v1, v7, v5

    if-eqz v1, :cond_9

    .line 31
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    div-long/2addr v4, v11

    invoke-virtual {v1, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setZipCost(J)V

    .line 32
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 34
    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_c

    aget-object v4, v0, v2

    .line 35
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".BIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 36
    iget-object v5, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 37
    :cond_a
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 38
    iget-object v5, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 39
    iget-object v5, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 40
    :cond_c
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.join.apkinstalldataobb.action.broadcast"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apkpath"

    .line 43
    iget-object v2, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 46
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2, v1, v9, v10}, Lg1/f;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 47
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    iget-object v0, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/event/j;

    iget-object v4, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x26

    invoke-direct {v2, v4, v5}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/event/l;

    iget-object v4, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v2, v4, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->l(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    :try_start_4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    iget-object v2, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 56
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 57
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 58
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    .line 59
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    iget-object v1, p0, Lcom/join/mgps/task/f;->e:Lcom/join/mgps/task/f$a;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v3}, Lcom/join/mgps/task/f$a;->a(Z)V

    .line 61
    :cond_f
    iget-object v1, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->J1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    move-result v1

    if-nez v1, :cond_10

    .line 62
    iget-object v0, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.broadcast.action_insufficient_storage"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    iget-object v0, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip...insufficient storage. gameId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->H1(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 64
    :cond_10
    :try_start_7
    iget-object v1, p0, Lcom/join/mgps/task/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zip error[gameId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",size="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",brand="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",model="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]::"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/join/mgps/Util/h;->c(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/p;->H1(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 65
    :catch_2
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 66
    :goto_7
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    .line 67
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 68
    :cond_11
    :goto_8
    iget-object v0, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    return-void

    :goto_9
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 69
    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method
