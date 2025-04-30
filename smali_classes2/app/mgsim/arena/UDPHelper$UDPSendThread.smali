.class Lapp/mgsim/arena/UDPHelper$UDPSendThread;
.super Lapp/mgsim/arena/SocketThread;
.source "UDPHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/mgsim/arena/UDPHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UDPSendThread"
.end annotation


# instance fields
.field private info:Lapp/mgsim/arena/AreaInfo;

.field retryCount:I

.field final synthetic this$0:Lapp/mgsim/arena/UDPHelper;


# direct methods
.method public constructor <init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/AreaInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-direct {p0}, Lapp/mgsim/arena/SocketThread;-><init>()V

    .line 2
    iput-object p2, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->info:Lapp/mgsim/arena/AreaInfo;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lapp/mgsim/arena/UDPHelper;->access$500(Lapp/mgsim/arena/UDPHelper;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->info:Lapp/mgsim/arena/AreaInfo;

    invoke-virtual {v1}, Lapp/mgsim/arena/AreaInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->info:Lapp/mgsim/arena/AreaInfo;

    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getPort()I

    move-result v8

    .line 6
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->info:Lapp/mgsim/arena/AreaInfo;

    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v2

    int-to-byte v2, v2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 10
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v6, v3

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 11
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const-wide/16 v1, 0x1388

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    const-string v2, "UDPSendThread client is null or client is closed---"

    invoke-virtual {v1, v2}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 15
    :cond_1
    :goto_1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v0}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v0}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->retryCount:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 16
    iput v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->retryCount:I

    .line 17
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    const-string v2, "UDPSendThread while exception restart send thread...."

    invoke-virtual {v0, v2}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->execute()V

    .line 19
    :cond_2
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPSendThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UDPSendThread while exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
