.class Lcom/join/mgps/adapter/r$j;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/r$j;->b:Lcom/join/mgps/adapter/r;

    iput-object p2, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->a:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->e:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/adapter/r$j;->b:Lcom/join/mgps/adapter/r;

    iget-object p1, p1, Lcom/join/mgps/adapter/r;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/r$j;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :goto_0
    return-void
.end method
