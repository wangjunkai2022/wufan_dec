.class Lcom/join/mgps/activity/UpdateLodingActivity$a;
.super Ljava/lang/Object;
.source "UpdateLodingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/UpdateLodingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/UpdateLodingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UpdateLodingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    check-cast p2, Lcom/join/mgps/service/UpdateLodingService$c;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->F0(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService$c;)Lcom/join/mgps/service/UpdateLodingService$c;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    invoke-virtual {p2}, Lcom/join/mgps/service/UpdateLodingService$c;->getService()Lcom/join/mgps/service/UpdateLodingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->H0(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->G0(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    invoke-virtual {p1, p2}, Lcom/join/mgps/service/UpdateLodingService;->m(Lcom/join/mgps/service/UpdateLodingService$d;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    iget-boolean p2, p1, Lcom/join/mgps/activity/UpdateLodingActivity;->h:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->I0(Lcom/join/mgps/activity/UpdateLodingActivity;I)I

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->E0(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService$c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/UpdateLodingActivity;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/service/UpdateLodingService$c;->setDownData(Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean p2, p1, Lcom/join/mgps/activity/UpdateLodingActivity;->i:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 8
    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->I0(Lcom/join/mgps/activity/UpdateLodingActivity;I)I

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->E0(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService$c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/UpdateLodingActivity;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/service/UpdateLodingService$c;->setDownData(Ljava/lang/String;I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-boolean p2, p1, Lcom/join/mgps/activity/UpdateLodingActivity;->j:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    .line 11
    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->I0(Lcom/join/mgps/activity/UpdateLodingActivity;I)I

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->E0(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService$c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/UpdateLodingActivity;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/service/UpdateLodingService$c;->setDownData(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->a:Lcom/join/mgps/activity/UpdateLodingActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/UpdateLodingActivity;->H0(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService;

    return-void
.end method
