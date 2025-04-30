.class Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;
.super Ljava/lang/Object;
.source "DownloadTaskDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic c:I

.field final synthetic d:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->d:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    iput-boolean p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->a:Z

    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput p4, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setOnlyWifi(Z)V

    .line 3
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->d:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->pause(I)V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3$1;

    invoke-direct {p2, p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3$1;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->d:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->c:I

    invoke-static {p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;->d:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
