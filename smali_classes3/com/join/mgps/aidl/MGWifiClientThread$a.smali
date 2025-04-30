.class Lcom/join/mgps/aidl/MGWifiClientThread$a;
.super Ljava/lang/Thread;
.source "MGWifiClientThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiClientThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/aidl/MGWifiClientThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiClientThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "-1"

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$000(Lcom/join/mgps/aidl/MGWifiClientThread;)Z

    move-result v1

    const/16 v2, 0x3e8

    const-string v3, "192.168.43.1"

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v1, v1, Lcom/join/mgps/aidl/MGWifiClientThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getDhcpInfo()I

    move-result v1

    .line 4
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v4, v4, Lcom/join/mgps/aidl/MGWifiClientThread;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/join/mgps/Util/WifiUtils;->pingCmd(Ljava/lang/String;)Z

    move-result v4

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xxxxxxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";p="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";ip="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v1, v1, Lcom/join/mgps/aidl/MGWifiClientThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getServerIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/join/mgps/Util/u0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v2}, Lcom/join/mgps/Util/r1;->b(I)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x3

    :goto_2
    if-lez v1, :cond_3

    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    iput-object v5, v4, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 8
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v4, v4, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    new-instance v5, Ljava/net/InetSocketAddress;

    const/16 v6, 0x2001

    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 9
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v4, v4, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 10
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v6, v6, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4, v5}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$102(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;

    .line 11
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v6, v6, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4, v5}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$202(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/io/BufferedOutputStream;)Ljava/io/BufferedOutputStream;

    .line 12
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;

    invoke-direct {v5, p0}, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;-><init>(Lcom/join/mgps/aidl/MGWifiClientThread$a;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v1, v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v4

    .line 15
    :try_start_1
    invoke-static {v2}, Lcom/join/mgps/Util/r1;->b(I)V

    .line 16
    iget-object v5, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v5}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    .line 17
    iget-object v5, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v5, v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    :cond_2
    iget-object v5, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 19
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    iget-object v4, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v4, v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v2, v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    throw v1

    :cond_3
    :goto_4
    return-void
.end method
