.class Lcom/join/mgps/aidl/WifiServerThread$a;
.super Ljava/lang/Thread;
.source "WifiServerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/WifiServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/aidl/WifiServerThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/WifiServerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x2001

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-static {v0, v1}, Lcom/join/mgps/aidl/WifiServerThread;->access$002(Lcom/join/mgps/aidl/WifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$100(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/aidl/WifiServerThread$b;

    iget-object v2, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/aidl/WifiServerThread$b;-><init>(Lcom/join/mgps/aidl/WifiServerThread;Ljava/net/Socket;)V

    .line 8
    new-instance v2, Lcom/join/mgps/aidl/Client;

    invoke-direct {v2}, Lcom/join/mgps/aidl/Client;-><init>()V

    .line 9
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/aidl/Client;->setUuid(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v1}, Lcom/join/mgps/aidl/Client;->setsClient(Lcom/join/mgps/aidl/WifiServerThread$b;)V

    .line 11
    iget-object v3, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v3}, Lcom/join/mgps/aidl/WifiServerThread;->access$300(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread$a;->a:Lcom/join/mgps/aidl/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/WifiServerThread;->access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
