.class Lcom/join/mgps/aidl/MGWifiClientThread$c;
.super Ljava/lang/Thread;
.source "MGWifiClientThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/aidl/MGWifiClientThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/aidl/MGWifiClientThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiClientThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$c;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$c;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-boolean v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1f4

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$c;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-wide v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->lastSyncTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$c;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-wide v3, v2, Lcom/join/mgps/aidl/MGWifiClientThread;->lastSyncTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xfa0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 6
    iget-boolean v0, v2, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x232a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
