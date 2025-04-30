.class public Lcom/join/mgps/helper/MGFightClientManager$d;
.super Ljava/lang/Object;
.source "MGFightClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGFightClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/join/mgps/helper/MGFightClientManager;


# direct methods
.method public constructor <init>(Lcom/join/mgps/helper/MGFightClientManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$d;->b:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/helper/MGFightClientManager$d;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager$d;->a:Z

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager$d;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/join/mgps/helper/MGFightClientManager$d;->b:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v2}, Lcom/join/mgps/helper/MGFightClientManager;->access$1400(Lcom/join/mgps/helper/MGFightClientManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$d;->b:Lcom/join/mgps/helper/MGFightClientManager;

    iget-object v0, v0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$d;->b:Lcom/join/mgps/helper/MGFightClientManager;

    iget-object v1, v1, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x64

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
