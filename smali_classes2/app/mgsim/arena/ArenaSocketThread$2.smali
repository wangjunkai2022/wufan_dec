.class Lapp/mgsim/arena/ArenaSocketThread$2;
.super Lapp/mgsim/arena/CheckThread;
.source "ArenaSocketThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/mgsim/arena/ArenaSocketThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/mgsim/arena/ArenaSocketThread;


# direct methods
.method constructor <init>(Lapp/mgsim/arena/ArenaSocketThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    invoke-direct {p0}, Lapp/mgsim/arena/CheckThread;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    iget-wide v3, v2, Lapp/mgsim/arena/ArenaSocketThread;->mLastHeartBeatStartTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x2710

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lapp/mgsim/arena/ArenaSocketThread;->mLastHeartBeatStartTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handle()V
    .locals 5

    const-string v0, "ArenaService"

    .line 1
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    const-string v2, "---send heart beat to server----"

    invoke-virtual {v1, v0, v2}, Lapp/mgsim/arena/SocketThread;->printMessgae(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->ping(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    iget-object v2, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---send heart beat to server exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lapp/mgsim/arena/SocketThread;->printMessgae(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread$2;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38\uff01"

    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    :goto_0
    return-void
.end method

.method public next()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
