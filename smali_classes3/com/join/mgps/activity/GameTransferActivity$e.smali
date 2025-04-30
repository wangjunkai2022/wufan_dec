.class Lcom/join/mgps/activity/GameTransferActivity$e;
.super Ljava/lang/Object;
.source "GameTransferActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field volatile a:Z

.field final synthetic b:Lcom/join/mgps/activity/GameTransferActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameTransferActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$e;->b:Lcom/join/mgps/activity/GameTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity$e;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity$e;->a:Z

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity$e;->a:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity$e;->b:Lcom/join/mgps/activity/GameTransferActivity;

    iget-wide v2, v2, Lcom/join/mgps/activity/GameTransferActivity;->r:J

    sub-long/2addr v0, v2

    .line 4
    invoke-static {}, Lcom/join/mgps/activity/GameTransferActivity;->F0()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTick: \u95f4\u9694"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 5
    invoke-static {}, Lcom/join/mgps/activity/GameTransferActivity;->F0()Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity$e;->a:Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity$e;->b:Lcom/join/mgps/activity/GameTransferActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 9
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
