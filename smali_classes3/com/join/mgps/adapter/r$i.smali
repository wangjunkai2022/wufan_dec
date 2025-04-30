.class Lcom/join/mgps/adapter/r$i;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/r$i;->b:Lcom/join/mgps/adapter/r;

    iput-object p2, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r$i;->b:Lcom/join/mgps/adapter/r;

    iget-object v0, v0, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/r$i;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/r$i;->b:Lcom/join/mgps/adapter/r;

    iget-object v0, v0, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/r$i;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 8
    :cond_4
    check-cast p1, Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/r$i;->b:Lcom/join/mgps/adapter/r;

    iget-object v2, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/r;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const/4 v0, 0x0

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v3, "crc_sign_id"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v1

    invoke-virtual {v1, v2}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v0, 0x0

    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/EMUUpdateTable;

    :cond_5
    if-eqz v0, :cond_7

    .line 15
    iget-object v1, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/join/mgps/adapter/r$i;->b:Lcom/join/mgps/adapter/r;

    iget-object v0, v0, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/adapter/r$i;->b:Lcom/join/mgps/adapter/r;

    iget-object v0, v0, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/adapter/r$i;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :goto_0
    const v0, 0x7f080a62

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v0, "\u6682\u505c"

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0xc57a1e

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    :goto_1
    return-void
.end method
