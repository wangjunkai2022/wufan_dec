.class Lcom/join/mgps/helper/MGFightClientManager$e;
.super Ljava/lang/Object;
.source "MGFightClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGFightClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field private b:J

.field private c:Ljava/lang/Thread;

.field final synthetic d:Lcom/join/mgps/helper/MGFightClientManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightClientManager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->d:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->a:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->c:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->c:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->a:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:J

    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->a:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->c:Ljava/lang/Thread;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:J

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->d:Lcom/join/mgps/helper/MGFightClientManager;

    iget-object v0, v0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->d:Lcom/join/mgps/helper/MGFightClientManager;

    iget-object v1, v1, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const-wide/16 v0, 0xc8

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0
.end method
