.class Lcom/join/android/app/common/utils/h$a;
.super Landroid/os/AsyncTask;
.source "PluginUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/h;->F(Lcom/join/mgps/db/tables/EMUApkTable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/join/mgps/db/tables/EMUApkTable;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/db/tables/EMUApkTable;


# direct methods
.method constructor <init>(Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/utils/h$a;->a:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/join/mgps/db/tables/EMUApkTable;)Ljava/lang/Void;
    .locals 10

    const-string p1, "/"

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/common/utils/h$a;->a:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/common/utils/h$a;->a:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/join/android/app/common/utils/h$a;->a:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getRemark()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    iget-object v4, p0, Lcom/join/android/app/common/utils/h$a;->a:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getCheck_files()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getCheck_files()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getCheck_files()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/CheckFileBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CheckFileBean;->getFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v8, ""

    if-nez v7, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcCheck(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v6}, Lcom/join/mgps/Util/v0;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcCheck(Ljava/lang/String;)V

    :goto_1
    if-nez v3, :cond_2

    .line 11
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcBak(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CheckFileBean;->getFile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 14
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcBak(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {v6}, Lcom/join/mgps/Util/v0;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcBak(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    .line 16
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/common/utils/h$a;->a:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/EMUApkTable;->setRemark(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    iget-object v1, p0, Lcom/join/android/app/common/utils/h$a;->a:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :cond_5
    :goto_2
    return-object v0

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p0, p1}, Lcom/join/android/app/common/utils/h$a;->a([Lcom/join/mgps/db/tables/EMUApkTable;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
