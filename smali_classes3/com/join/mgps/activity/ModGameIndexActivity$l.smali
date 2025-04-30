.class Lcom/join/mgps/activity/ModGameIndexActivity$l;
.super Ljava/lang/Object;
.source "ModGameIndexActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->V1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->X0(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->b2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->a2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->b2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->a2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_0
    return-void
.end method
