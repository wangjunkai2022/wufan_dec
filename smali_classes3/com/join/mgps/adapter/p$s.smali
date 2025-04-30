.class Lcom/join/mgps/adapter/p$s;
.super Ljava/lang/Object;
.source "DownloadCenterAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/p;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/adapter/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$s;->b:Lcom/join/mgps/adapter/p;

    iput-object p2, p0, Lcom/join/mgps/adapter/p$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/p$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/p$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tag_id"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/p$s;->b:Lcom/join/mgps/adapter/p;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/p$s;->b:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/EMUApkTable;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/p$s;->b:Lcom/join/mgps/adapter/p;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getHistoryDownloadFiles()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/p$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/p$s;->b:Lcom/join/mgps/adapter/p;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/p$s;->b:Lcom/join/mgps/adapter/p;

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/p;->j(Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto :goto_0

    .line 12
    :cond_2
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/join/mgps/adapter/p$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/p$s;->b:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/p$s;->b:Lcom/join/mgps/adapter/p;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/adapter/p$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->v(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/p$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/adapter/p$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/p$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/adapter/p$s;->b:Lcom/join/mgps/adapter/p;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
