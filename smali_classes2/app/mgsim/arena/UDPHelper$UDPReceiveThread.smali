.class Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;
.super Lapp/mgsim/arena/SocketThread;
.source "UDPHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/mgsim/arena/UDPHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UDPReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Lapp/mgsim/arena/UDPHelper;


# direct methods
.method private constructor <init>(Lapp/mgsim/arena/UDPHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-direct {p0}, Lapp/mgsim/arena/SocketThread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/UDPHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;-><init>(Lapp/mgsim/arena/UDPHelper;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 9

    const-string v0, "UDPReceiveThread finally----"

    .line 1
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$100(Lapp/mgsim/arena/UDPHelper;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    const/16 v1, 0xa

    new-array v2, v1, [B

    .line 2
    new-instance v3, Ljava/net/DatagramPacket;

    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 3
    :goto_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v1}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 5
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 10
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive meg for area: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "---get ping time :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v1, v4, v7, v8}, Lapp/mgsim/arena/UDPHelper;->access$300(Lapp/mgsim/arena/UDPHelper;BJ)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    const-string v2, "UDPReceiveThread client is null or is closed----"

    invoke-virtual {v1, v2}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 13
    :try_start_1
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v2}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v2}, Lapp/mgsim/arena/UDPHelper;->access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    const-string v3, "UDPReceiveThread while exception ,restart receive thread..."

    invoke-virtual {v2, v3}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-static {v2}, Lapp/mgsim/arena/UDPHelper;->access$400(Lapp/mgsim/arena/UDPHelper;)V

    .line 16
    :cond_1
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UDPReceiveThread while exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_1
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-virtual {v1, v0}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-virtual {v0}, Lapp/mgsim/arena/UDPHelper;->releaseWifiLock()V

    return-void

    .line 19
    :goto_2
    iget-object v2, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-virtual {v2, v0}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;->this$0:Lapp/mgsim/arena/UDPHelper;

    invoke-virtual {v0}, Lapp/mgsim/arena/UDPHelper;->releaseWifiLock()V

    .line 21
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
