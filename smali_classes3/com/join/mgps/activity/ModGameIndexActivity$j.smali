.class Lcom/join/mgps/activity/ModGameIndexActivity$j;
.super Lcom/join/mgps/dialog/z0;
.source "ModGameIndexActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->V1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic A:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {p0, p2}, Lcom/join/mgps/dialog/z0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->X0(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result p1

    const/16 v0, 0x2a

    const/16 v1, 0x9

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->Y0(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    move-result p1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 4
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ModGameIndexActivity;->p0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->p0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->e2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->a2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->Y0(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 10
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 12
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->q0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->e2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->A:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->a2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_0
    return-void
.end method
