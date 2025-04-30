.class Lcom/join/mgps/activity/MGMainActivity$x;
.super Lcom/join/mgps/ad/m;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->initTTDownLoadSpeedAd(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic s:Z

.field final synthetic t:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$x;->t:Lcom/join/mgps/activity/MGMainActivity;

    iput-boolean p5, p0, Lcom/join/mgps/activity/MGMainActivity$x;->s:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$x;->t:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$x;->t:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->ttDownLoadSpeedAd:Lcom/join/mgps/ad/m;

    const/16 v1, 0x15

    invoke-static {v0, v1, p1}, Lcom/join/mgps/ad/c;->k(Landroid/content/Context;ILjava/lang/String;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$x;->t:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->delayChangeAdshow()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$x;->t:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/MGMainActivity;->ttDownLoadSpeedAd:Lcom/join/mgps/ad/m;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->delayLoadRewardAd(Lcom/join/mgps/ad/c;)V

    return-void
.end method

.method public onADShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADShow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$x;->t:Lcom/join/mgps/activity/MGMainActivity;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity;->sendVideoAdWatchLog(II)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onInitSuccess()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity$x;->s:Z

    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/m;->h(Z)V

    return-void
.end method
