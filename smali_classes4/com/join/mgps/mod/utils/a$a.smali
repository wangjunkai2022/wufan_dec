.class Lcom/join/mgps/mod/utils/a$a;
.super Ljava/lang/Object;
.source "ApkInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/mod/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field b:Z

.field c:Landroid/content/Context;

.field final synthetic d:Lcom/join/mgps/mod/utils/a;


# direct methods
.method public constructor <init>(Lcom/join/mgps/mod/utils/a;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/utils/a$a;->d:Lcom/join/mgps/mod/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/mod/utils/a$a;->c:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    iput-boolean p4, p0, Lcom/join/mgps/mod/utils/a$a;->b:Z

    return-void
.end method

.method private a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/Util/u;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v4}, Lcom/join/mgps/va/overmind/f;->a0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/g0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/Util/u;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v4}, Lcom/join/mgps/va/overmind/f;->a0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "obb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/g0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    const/16 p1, 0xb

    .line 1
    invoke-virtual {p2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    invoke-direct {v1, p2, p1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private d(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln1/k;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/DownloadHistoryTable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/DownloadHistoryTable;-><init>()V

    .line 6
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    .line 8
    :goto_0
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v3

    invoke-virtual {v3, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->b2(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_3
    :goto_2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 20
    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 21
    sget-object v1, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-static {p1, p2, v1}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/event/l;

    invoke-direct {v1, p2, v0}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 23
    invoke-static {p2}, Lcom/join/android/app/common/utils/APKUtils;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "\u5b89\u88c5\u5931\u8d25"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_7

    const/16 v2, 0x30

    .line 2
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1, v3, v2}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/event/l;

    iget-object v4, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/mod/utils/a$a;->b:Z

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v1}, Lcom/join/mgps/mod/utils/a$a;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v1}, Lcom/join/mgps/mod/utils/a$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v1}, Lcom/join/mgps/mod/utils/a$a;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v1}, Lcom/join/mgps/mod/utils/a$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 13
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->z(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->z(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_4

    .line 15
    iget-boolean v2, v1, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a:Z

    if-eqz v2, :cond_4

    .line 16
    iget-object v0, p0, Lcom/join/mgps/mod/utils/a$a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/mod/utils/a$a;->d(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/mod/utils/a$a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v2, v3}, Lcom/join/mgps/mod/utils/a$a;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 18
    invoke-static {}, Landroid/os/Looper;->prepare()V

    if-eqz v1, :cond_6

    .line 19
    iget-object v1, v1, Lcom/xinzhu/overmind/entity/pm/InstallResult;->c:Ljava/lang/String;

    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    iget-object v0, p0, Lcom/join/mgps/mod/utils/a$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b89\u88c5\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 23
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v1, v2}, Lcom/join/mgps/mod/utils/a$a;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 25
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a$a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 27
    :goto_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_4

    .line 28
    :goto_3
    iget-object v2, p0, Lcom/join/mgps/mod/utils/a$a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/mod/utils/a$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v2, v3}, Lcom/join/mgps/mod/utils/a$a;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 29
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 30
    iget-object v2, p0, Lcom/join/mgps/mod/utils/a$a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 32
    throw v1

    :cond_7
    :goto_4
    return-void
.end method
