.class Lcom/join/mgps/Util/z$e;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->a0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/customview/t;

.field final synthetic d:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/customview/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$e;->d:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p4, p0, Lcom/join/mgps/Util/z$e;->c:Lcom/join/mgps/customview/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/z$e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/z$e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crc_sign_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/EMUUpdateTable;

    .line 8
    :cond_1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/join/mgps/Util/z$e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_4
    if-eqz p1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getDown_url_remote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/join/mgps/Util/z$e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/Util/z$e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/Util/z$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 22
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/Util/z$e;->c:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/join/mgps/Util/z$e;->c:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method
