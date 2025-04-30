.class Lcom/join/mgps/mod/activity/ModLoadingActivity$e;
.super Ljava/lang/Object;
.source "ModLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity;->V0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->L0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 2
    :try_start_1
    sget-object v0, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/f;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/va/overmind/e;->j(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->I0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->M0(Lcom/join/mgps/mod/activity/ModLoadingActivity;Z)Z

    .line 5
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->I0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const/16 v0, 0x64

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->I0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    move-result-wide v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    long-to-int v0, v0

    .line 6
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    new-instance v2, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$e;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->k:Ljava/util/List;

    const-string v1, "copyExtFile"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFinish"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
