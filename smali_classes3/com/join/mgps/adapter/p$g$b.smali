.class Lcom/join/mgps/adapter/p$g$b;
.super Ljava/lang/Object;
.source "DownloadCenterAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/p$g;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/join/mgps/adapter/p$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p$g;ZLandroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iput-boolean p2, p0, Lcom/join/mgps/adapter/p$g$b;->a:Z

    iput-object p3, p0, Lcom/join/mgps/adapter/p$g$b;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/adapter/p$g$b;->a:Z

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object v1, v0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v0, v0, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object v1, v0, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object v1, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    iget-object v0, v0, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object v0, v0, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object v0, v0, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object v0, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/p;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object v0, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/p;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    iget-object p1, p1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->c:Lcom/join/mgps/adapter/p$g;

    iget-object p1, p1, Lcom/join/mgps/adapter/p$g;->c:Lcom/join/mgps/adapter/p;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/p$g$b;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
