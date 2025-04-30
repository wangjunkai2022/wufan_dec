.class Lcom/papa/controller/core/e$d;
.super Ljava/lang/Object;
.source "PaBluetoothSpp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/e;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/papa/controller/core/e;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/e;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    iput-wide p2, p0, Lcom/papa/controller/core/e$d;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/papa/controller/core/e$d;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    const/16 v4, 0x2710

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v0, v2

    if-gez v7, :cond_3

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->h(Lcom/papa/controller/core/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-virtual {v0, v6}, Lcom/papa/controller/core/e;->z(I)V

    .line 4
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v0, v6}, Lcom/papa/controller/core/e;->i(Lcom/papa/controller/core/e;Z)Z

    .line 5
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->j(Lcom/papa/controller/core/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->j(Lcom/papa/controller/core/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v1}, Lcom/papa/controller/core/e;->k(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/b;

    move-result-object v1

    invoke-virtual {v0, v4, v6, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->c(Lcom/papa/controller/core/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-virtual {v0}, Lcom/papa/controller/core/e;->n()V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v0, v6}, Lcom/papa/controller/core/e;->i(Lcom/papa/controller/core/e;Z)Z

    .line 9
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->j(Lcom/papa/controller/core/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->j(Lcom/papa/controller/core/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-static {v1}, Lcom/papa/controller/core/e;->k(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/b;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->b:Lcom/papa/controller/core/e;

    invoke-virtual {v0}, Lcom/papa/controller/core/e;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
