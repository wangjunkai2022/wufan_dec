.class Lcom/join/mgps/adapter/r$g;
.super Ljava/lang/Object;
.source "DownloadedCenterEmulatorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/adapter/r;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iput-object p2, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag_id"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object v1, v1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/EMUApkTable;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object v0, v0, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 10
    :cond_2
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/join/android/app/common/utils/h;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto/16 :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object v0, v0, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->v(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result p1

    if-lez p1, :cond_7

    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 24
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 25
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/adapter/r$g;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/r$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_0
    return-void
.end method
