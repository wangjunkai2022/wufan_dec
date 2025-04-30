.class Lcom/join/mgps/adapter/p$x;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/p$x;->b:Lcom/join/mgps/adapter/p;

    iput-object p2, p0, Lcom/join/mgps/adapter/p$x;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/p$x;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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

    iget-object v0, p0, Lcom/join/mgps/adapter/p$x;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/p$x;->b:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/join/mgps/adapter/p$x;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/p$x;->b:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->a:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/p$x;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/adapter/p$x;->b:Lcom/join/mgps/adapter/p;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
