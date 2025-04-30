.class Lcom/join/mgps/Util/UtilsMy$u;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/db/tables/EMUApkTable;

.field final synthetic c:I

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;ILandroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$u;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    iput p3, p0, Lcom/join/mgps/Util/UtilsMy$u;->c:I

    iput-object p4, p0, Lcom/join/mgps/Util/UtilsMy$u;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/join/mgps/Util/UtilsMy$u;->e:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/join/mgps/Util/UtilsMy$u;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 11
    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 12
    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$u;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_type(I)V

    const-wide/16 v0, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_1

    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {v0}, Lcom/join/android/app/common/utils/h;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->b:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/h;->e(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$u;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$u;->e:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
