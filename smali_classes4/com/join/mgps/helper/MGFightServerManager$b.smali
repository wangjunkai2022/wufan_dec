.class Lcom/join/mgps/helper/MGFightServerManager$b;
.super Ljava/lang/Object;
.source "MGFightServerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGFightServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field private b:J

.field private c:Ljava/lang/Thread;

.field final synthetic d:Lcom/join/mgps/helper/MGFightServerManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightServerManager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->d:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->a:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->b:J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->c:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->c:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->a:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->b:J

    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->a:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->c:Ljava/lang/Thread;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->b:J

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->d:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->d:Lcom/join/mgps/helper/MGFightServerManager;

    .line 3
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->d:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$700(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->d:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {v1}, Lcom/join/mgps/helper/MGFightServerManager;->access$700(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const-wide/16 v0, 0x3e8

    .line 7
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0
.end method
