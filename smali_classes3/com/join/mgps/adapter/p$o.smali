.class Lcom/join/mgps/adapter/p$o;
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
.field final synthetic a:Lcom/join/mgps/adapter/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1}, Lg1/f;->w()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tag_id"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 7
    iget-object v4, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    iget-object v4, v4, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v4}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/EMUApkTable;

    .line 11
    iget-object v2, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    iget-object v2, v2, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 19
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    const-string v5, "crc_sign_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 23
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/EMUUpdateTable;

    .line 24
    :cond_6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 25
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    :cond_7
    if-eqz v1, :cond_8

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    iget-object v1, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 33
    :cond_8
    iget-object v1, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_1
    if-eqz v1, :cond_0

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 37
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/adapter/p$o;->a:Lcom/join/mgps/adapter/p;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
