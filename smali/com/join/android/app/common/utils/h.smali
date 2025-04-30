.class public Lcom/join/android/app/common/utils/h;
.super Ljava/lang/Object;
.source "PluginUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "PluginUtils"

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Lcom/github/snowdream/android/app/downloader/b;

.field static e:Lcom/github/snowdream/android/app/downloader/b$b;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/c;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/db/tables/EMUApkTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/join/android/app/common/utils/h;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/join/android/app/common/utils/h;->B(Lcom/join/mgps/db/tables/EMUApkTable;ZZ)Z

    move-result p0

    return p0
.end method

.method public static B(Lcom/join/mgps/db/tables/EMUApkTable;ZZ)Z
    .locals 5

    const-string v0, "_"

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginUtils"

    const-string v4, "isNeedDownloadMust  - 0"

    .line 2
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez p2, :cond_4

    .line 3
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/h;->w(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->isArena()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p2

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "isNeedDownloadMust  - 2"

    .line 10
    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 11
    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/h;->k(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 12
    :cond_1
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg1/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    if-eqz p0, :cond_6

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApkPath(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg1/b;->update(Ljava/lang/Object;)I

    return v4

    .line 15
    :cond_2
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object p2

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "isNeedDownloadMust  - 3"

    .line 20
    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 21
    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/h;->k(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 22
    :cond_3
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg1/b;->update(Ljava/lang/Object;)I

    return v4

    :cond_4
    :goto_0
    const-string p1, "isNeedDownloadMust  - 1"

    .line 25
    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 26
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 27
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_compatible()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_5

    .line 30
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge p1, p0, :cond_5

    return v1

    :catch_0
    move-exception p0

    .line 32
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return v4

    :cond_6
    return v1
.end method

.method public static C(Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->m(Lcom/join/mgps/db/tables/EMUApkTable;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static D(Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->n(Lcom/join/mgps/db/tables/EMUApkTable;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static E(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/common/utils/h$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/utils/h$b;-><init>(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/join/mgps/db/tables/EMUApkArenaTable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static F(Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/common/utils/h$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/utils/h$a;-><init>(Lcom/join/mgps/db/tables/EMUApkTable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/join/mgps/db/tables/EMUApkTable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static G(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 10

    if-eqz p1, :cond_a

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/h;->C(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/roms/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    add-int/2addr v5, v4

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 13
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 16
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 18
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 20
    invoke-static {v3, v4}, Lcom/join/mgps/Util/g0;->h(Ljava/lang/String;Z)V

    .line 21
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 24
    invoke-virtual {v0, v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerCode()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x3e8

    div-long/2addr v5, v1

    div-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    .line 29
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pre_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/roms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 33
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p0}, Lcom/papa/sim/statistic/p;->U1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_6
    new-instance p0, Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    sget-object v0, Lcom/join/android/app/common/utils/h;->d:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0, p0}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    if-nez v0, :cond_7

    return-void

    .line 37
    :cond_7
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 38
    :cond_8
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    return-void

    .line 40
    :cond_9
    sget-object v1, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    monitor-enter v1

    .line 41
    :try_start_1
    sget-object v2, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object p0, Lcom/join/android/app/common/utils/h;->g:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    :goto_1
    return-void
.end method

.method public static H(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkArenaTable;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    .line 2
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg1/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getDown_type()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/h;->h(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApkPath(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lg1/b;->update(Ljava/lang/Object;)I

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public static I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "PluginUtils"

    aput-object v3, v2, v0

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreEmuApkSo called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 2
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p2

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/io/File;

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/io/File;

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/h;->h(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-virtual {p2, p0}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p0

    invoke-virtual {p0, p2}, Lg1/b;->update(Ljava/lang/Object;)I

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-static {p0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 18
    :cond_4
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_5
    :goto_0
    const-string p0, "restoreEmuApkSo finished"

    .line 19
    filled-new-array {v3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return v5

    :cond_6
    const-string p0, "restoreEmuApkSo don\'t need restore"

    .line 20
    filled-new-array {v3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return v0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/utils/h;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/h;->w(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p0

    return p0
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/android/app/common/utils/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/join/mgps/Util/g0;->h(Ljava/lang/String;Z)V

    return-void
.end method

.method public static e(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 11

    const-string v0, "/"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->C(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ".zip"

    if-eqz v1, :cond_2

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pre_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/roms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    add-int/2addr v6, v3

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 10
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12
    sget-object v6, Lcom/join/android/app/common/utils/h;->d:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/snowdream/android/app/downloader/b;->c(Ljava/lang/String;)V

    .line 13
    sget-object v6, Lcom/join/android/app/common/utils/h;->d:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 14
    sget-object v6, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v6, Lcom/join/android/app/common/utils/h;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 17
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v5, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 21
    invoke-static {v0, v3}, Lcom/join/mgps/Util/g0;->h(Ljava/lang/String;Z)V

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 24
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 25
    invoke-virtual {p1, v6, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x3e8

    div-long/2addr v6, v3

    div-long/2addr v6, v3

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->g(Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 31
    sget-object v0, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, p0, v2, v1}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 32
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p0

    sget-object v0, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 33
    :cond_2
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->D(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/h;->f(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    goto :goto_1

    .line 35
    :cond_3
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->g(Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 36
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->m(Lcom/join/mgps/db/tables/EMUApkTable;)Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 38
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 40
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 41
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_1
    return-void
.end method

.method private static f(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 10

    const-string v0, "/"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pre_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/roms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 6
    sget-object v6, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/c;

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/c;->g()J

    move-result-wide v4

    .line 8
    :cond_0
    sget-object v6, Lcom/join/android/app/common/utils/h;->d:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/snowdream/android/app/downloader/b;->c(Ljava/lang/String;)V

    .line 9
    sget-object v6, Lcom/join/android/app/common/utils/h;->d:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 10
    sget-object v6, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v6, Lcom/join/android/app/common/utils/h;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 14
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_1
    :goto_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-static {v0, v6}, Lcom/join/mgps/Util/g0;->h(Ljava/lang/String;Z)V

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const-wide/16 v0, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr v4, v2

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->g(Lcom/join/mgps/db/tables/EMUApkTable;)V

    :cond_3
    return v6

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static g(Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/utils/h;->d:Lcom/github/snowdream/android/app/downloader/b;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/b;->c(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/join/android/app/common/utils/h;->d:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/join/android/app/common/utils/h;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/join/android/app/common/utils/h;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/android/app/common/utils/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lcom/join/mgps/Util/g0;->h(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/join/mgps/Util/g0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".zip"

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static i(Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->C(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/h;->e(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->D(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->C(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public static j(Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/h;->k(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p0

    return p0
.end method

.method public static k(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z
    .locals 24

    move-object/from16 v1, p0

    const-string v2, "ver"

    const-string v3, "name"

    const-string v4, ""

    if-eqz v1, :cond_1d

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_17

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    return v7

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_16

    .line 6
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getRemark()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    invoke-virtual {v9, v10, v11}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v10

    .line 11
    new-instance v11, Ljava/io/File;

    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/h;->m(Lcom/join/mgps/db/tables/EMUApkTable;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_3

    .line 13
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 14
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 15
    :cond_3
    :try_start_0
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_4

    .line 16
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getSo_file_count()I

    move-result v16

    move/from16 v13, v16

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    .line 17
    :goto_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 18
    invoke-static {v12}, Lcom/join/mgps/Util/g0;->m(Ljava/lang/String;)I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 19
    :try_start_1
    invoke-static {v8}, Lcom/join/mgps/Util/g0;->m(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-ge v7, v14, :cond_5

    .line 20
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v19, v7

    :try_start_3
    sget-object v7, Lcom/join/android/app/common/utils/h;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/join/mgps/Util/g0;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v19, v7

    .line 22
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v20, v12

    move/from16 v7, v19

    goto/16 :goto_8

    :cond_5
    move/from16 v19, v7

    :goto_2
    move/from16 v7, v19

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v20, v12

    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_6
    const/4 v7, 0x0

    const/4 v14, 0x0

    .line 23
    :goto_3
    :try_start_5
    invoke-static {v12}, Lcom/join/mgps/Util/g0;->m(Ljava/lang/String;)I

    move-result v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 24
    :try_start_6
    invoke-static {v8}, Lcom/join/mgps/Util/g0;->m(Ljava/lang/String;)I

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 25
    :try_start_7
    new-instance v0, Lcom/join/android/app/common/utils/h$c;

    invoke-direct {v0}, Lcom/join/android/app/common/utils/h$c;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v5, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x1

    aput-object v15, v5, v18

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x2

    aput-object v15, v5, v17

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v5, v16

    .line 26
    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 27
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :goto_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const-string v5, "filenumerror4.2.4.2"

    if-ge v7, v14, :cond_8

    if-eqz v10, :cond_7

    .line 29
    :try_start_9
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    const/4 v15, 0x5

    if-ne v13, v15, :cond_7

    if-eqz p1, :cond_7

    .line 30
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v15, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    invoke-static {v15, v5, v13}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    sget-object v5, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v5

    sget-object v13, Lcom/papa/sim/statistic/Event;->filenumerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move/from16 v19, v14

    :try_start_a
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object/from16 v20, v12

    :try_start_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v13, v15, v14, v0}, Lcom/papa/sim/statistic/p;->Q1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v1, 0x1

    return v1

    :cond_8
    move-object/from16 v20, v12

    move/from16 v19, v14

    if-eqz v13, :cond_a

    if-ge v7, v13, :cond_a

    if-eqz v10, :cond_9

    .line 35
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_9

    if-eqz p1, :cond_9

    .line 36
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v13, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    invoke-static {v13, v5, v12}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    sget-object v5, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v5

    sget-object v12, Lcom/papa/sim/statistic/Event;->filenumerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v12, v13, v14, v0}, Lcom/papa/sim/statistic/p;->Q1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_6
    move/from16 v14, v19

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v1, 0x1

    return v1

    :cond_a
    move/from16 v14, v19

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v20, v12

    move/from16 v19, v14

    goto :goto_8

    :catch_8
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_8

    :catch_9
    move-exception v0

    move-object/from16 v20, v12

    const/4 v7, 0x0

    const/4 v14, 0x0

    .line 41
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    if-eqz v9, :cond_14

    .line 42
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getCheck_files()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getCheck_files()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 43
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getCheck_files()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CheckFileBean;

    .line 44
    :try_start_c
    new-instance v12, Ljava/io/File;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_e

    move-object/from16 v21, v5

    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d

    move/from16 v22, v13

    :try_start_e
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckFileBean;->getFile()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckFileBean;->getPreCalcCheck()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_c

    if-eqz v13, :cond_b

    .line 47
    :try_start_f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 48
    invoke-static {v12}, Lcom/join/mgps/Util/v0;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    goto/16 :goto_f

    :cond_b
    move-object v5, v4

    :goto_b
    const/16 v22, 0x1

    .line 49
    :cond_c
    :try_start_10
    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcCheck(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_c

    if-eqz v13, :cond_d

    :try_start_11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckFileBean;->getCheck()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_a

    if-nez v5, :cond_12

    :cond_d
    if-eqz v10, :cond_e

    .line 51
    :try_start_12
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 52
    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_c

    move-object/from16 v23, v15

    :try_start_13
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckFileBean;->getFile()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_b

    move-object v15, v5

    goto :goto_c

    :catch_b
    move-exception v0

    move/from16 v13, v22

    move-object/from16 v15, v23

    goto :goto_11

    :cond_e
    move-object/from16 v23, v15

    move-object/from16 v15, v23

    .line 53
    :goto_c
    :try_start_14
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckFileBean;->getPreCalcBak()Ljava/lang/String;

    move-result-object v5

    if-eqz v15, :cond_f

    .line 54
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 55
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 56
    invoke-static {v15}, Lcom/join/mgps/Util/v0;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_f
    move-object v5, v4

    :goto_d
    const/16 v22, 0x1

    .line 57
    :cond_10
    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcBak(Ljava/lang/String;)V

    if-eqz v15, :cond_11

    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckFileBean;->getCheck()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 59
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/g0;->c(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v15, 0x0

    goto :goto_e

    .line 60
    :cond_11
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_a

    :cond_12
    :goto_e
    move/from16 v13, v22

    goto :goto_12

    :catch_c
    move-exception v0

    move-object/from16 v23, v15

    :goto_f
    move/from16 v13, v22

    goto :goto_11

    :catch_d
    move-exception v0

    goto :goto_10

    :catch_e
    move-exception v0

    move-object/from16 v21, v5

    :goto_10
    move/from16 v22, v13

    move-object/from16 v23, v15

    .line 61
    :goto_11
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_12
    move-object/from16 v5, v21

    goto/16 :goto_a

    :cond_13
    move/from16 v22, v13

    goto :goto_13

    :cond_14
    const/16 v22, 0x0

    :goto_13
    if-eqz v22, :cond_15

    .line 62
    invoke-static {v9}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setRemark(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 65
    :try_start_15
    sget-object v0, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    if-eqz v0, :cond_16

    const-string v5, "onSoMd5Failed"

    const-string v7, "%s_%s_%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    .line 67
    invoke-static {v6}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v4, v8, v9

    .line 68
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 70
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_18

    .line 71
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/4 v7, 0x5

    if-eq v5, v7, :cond_17

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_18

    .line 72
    :cond_17
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_18

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plug file corrupted ! "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 75
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    goto :goto_14

    :catch_f
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_14
    if-eqz v10, :cond_19

    .line 79
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    if-eqz p1, :cond_19

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    const-string v2, "md5error4.2.4.2"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    sget-object v0, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->md5error:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/p;->Q1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const/4 v1, 0x1

    return v1

    :cond_1a
    if-ge v14, v7, :cond_1b

    .line 85
    :try_start_16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 87
    new-instance v0, Ljava/io/File;

    move-object/from16 v12, v20

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v8, v0}, Lcom/join/mgps/Util/g0;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10

    goto :goto_15

    :catch_10
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_15
    const/4 v1, 0x0

    return v1

    :cond_1c
    :goto_16
    const/4 v1, 0x0

    return v1

    :cond_1d
    :goto_17
    const/4 v1, 0x0

    return v1
.end method

.method public static l(Ljava/lang/String;I)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "35"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "31"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return p1
.end method

.method private static m(Lcom/join/mgps/db/tables/EMUApkTable;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->n(Lcom/join/mgps/db/tables/EMUApkTable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static n(Lcom/join/mgps/db/tables/EMUApkTable;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/roms/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;)V
    .locals 3

    .line 1
    sput-object p0, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jniLibs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/join/android/app/common/utils/h;->b:Ljava/lang/String;

    .line 3
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/join/android/app/common/utils/h;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/join/android/app/common/utils/h;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/h;->p()V

    return-void
.end method

.method public static p()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    move-result-object v0

    sput-object v0, Lcom/join/android/app/common/utils/h;->d:Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    new-instance v0, Lcom/join/android/app/common/utils/h$d;

    invoke-direct {v0}, Lcom/join/android/app/common/utils/h$d;-><init>()V

    sput-object v0, Lcom/join/android/app/common/utils/h;->e:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 3
    sget-object v1, Lcom/join/android/app/common/utils/h;->d:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    return-void
.end method

.method public static q(Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 5

    const-string v0, "_"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->v(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, p0, :cond_1

    return v3

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public static varargs r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z[Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/join/android/app/common/utils/h;->v(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 6
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    array-length p2, p3

    if-lez p2, :cond_3

    const/4 p1, 0x0

    aget-object p1, p3, p1

    .line 7
    :cond_3
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/join/android/app/common/utils/h;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/h;->w(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 4
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length p2, p3

    if-lez p2, :cond_2

    const/4 p1, 0x0

    aget-object p1, p3, p1

    .line 5
    :cond_2
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs u(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static v(Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/h;->w(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p0

    return p0
.end method

.method private static w(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z
    .locals 8

    const-string v0, "PluginUtils"

    const-string v1, "isInstalled  called"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v5

    if-ne v5, v4, :cond_1

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    .line 7
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    sget-object v5, Lcom/join/android/app/common/utils/h;->c:Landroid/content/Context;

    invoke-static {v5, v3, p0}, Lcom/join/android/app/common/utils/h;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 9
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 10
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/android/app/common/utils/h;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_2

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v3

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v1

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInstalled  - retrieve path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v2}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 17
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "isInstalled  - checking file corrupt"

    .line 18
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 19
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/h;->k(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v5

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->isArena()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v2

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "isInstalled  - recovery from arena, checking file"

    .line 25
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 26
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/h;->k(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    .line 27
    :cond_5
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg1/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    if-eqz p0, :cond_8

    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApkPath(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg1/b;->update(Ljava/lang/Object;)I

    const-string p0, "isInstalled  - recovery from arena"

    .line 30
    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return v5

    .line 31
    :cond_6
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v2

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "isInstalled  - recovery from emu, checking file"

    .line 35
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 36
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/h;->k(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    .line 37
    :cond_7
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg1/b;->update(Ljava/lang/Object;)I

    const-string p0, "isInstalled  - recovery from emu"

    .line 40
    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return v5

    :cond_8
    return v1
.end method

.method public static x(Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/h;->y(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p0

    return p0
.end method

.method public static y(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z
    .locals 4

    const-string v0, "_"

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    .line 1
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/h;->w(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p1, p0, :cond_1

    return v1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v3

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->isArena()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg1/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    if-eqz p0, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApkPath(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg1/b;->update(Ljava/lang/Object;)I

    return v3

    .line 18
    :cond_3
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg1/b;->update(Ljava/lang/Object;)I

    return v3

    :cond_4
    return v1
.end method

.method public static z(Lcom/join/mgps/db/tables/EMUApkTable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/h;->A(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result p0

    return p0
.end method
