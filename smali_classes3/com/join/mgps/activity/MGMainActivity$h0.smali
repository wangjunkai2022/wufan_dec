.class Lcom/join/mgps/activity/MGMainActivity$h0;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->afterViewsInitData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$h0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$h0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$500(Lcom/join/mgps/activity/MGMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$h0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$h0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$h0$a;-><init>(Lcom/join/mgps/activity/MGMainActivity$h0;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$h0;->a:Lcom/join/mgps/activity/MGMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$602(Lcom/join/mgps/activity/MGMainActivity;Z)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$h0;->a:Lcom/join/mgps/activity/MGMainActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$702(Lcom/join/mgps/activity/MGMainActivity;I)I

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$h0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$700(Lcom/join/mgps/activity/MGMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$h0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u6e38\u620f\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d\u3002"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
