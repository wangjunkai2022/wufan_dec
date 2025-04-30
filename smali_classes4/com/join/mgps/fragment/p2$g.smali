.class Lcom/join/mgps/fragment/p2$g;
.super Ljava/lang/Object;
.source "GameOlGiftPackageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p2;->f0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/dto/DetailResultBean;

.field final synthetic c:Lcom/join/mgps/fragment/p2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p2;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p2$g;->c:Lcom/join/mgps/fragment/p2;

    iput-object p2, p0, Lcom/join/mgps/fragment/p2$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p3, p0, Lcom/join/mgps/fragment/p2$g;->b:Lcom/join/mgps/dto/DetailResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->c:Lcom/join/mgps/fragment/p2;

    invoke-static {p1}, Lcom/join/mgps/fragment/p2;->S(Lcom/join/mgps/fragment/p2;)Lcom/join/mgps/customview/t;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->c:Lcom/join/mgps/fragment/p2;

    invoke-static {p1}, Lcom/join/mgps/fragment/p2;->S(Lcom/join/mgps/fragment/p2;)Lcom/join/mgps/customview/t;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->c:Lcom/join/mgps/fragment/p2;

    invoke-static {p1}, Lcom/join/mgps/fragment/p2;->S(Lcom/join/mgps/fragment/p2;)Lcom/join/mgps/customview/t;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->c:Lcom/join/mgps/fragment/p2;

    invoke-static {p1}, Lcom/join/mgps/fragment/p2;->M(Lcom/join/mgps/fragment/p2;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/p2$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->c:Lcom/join/mgps/fragment/p2;

    invoke-static {p1}, Lcom/join/mgps/fragment/p2;->M(Lcom/join/mgps/fragment/p2;)Landroid/app/Activity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/p2$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->b:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->c:Lcom/join/mgps/fragment/p2;

    invoke-static {p1}, Lcom/join/mgps/fragment/p2;->M(Lcom/join/mgps/fragment/p2;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/p2$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/fragment/p2$g;->c:Lcom/join/mgps/fragment/p2;

    invoke-static {v0}, Lcom/join/mgps/fragment/p2;->M(Lcom/join/mgps/fragment/p2;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/p2$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    :goto_0
    return-void
.end method
