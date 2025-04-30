.class Lcom/join/mgps/aidl/MGWifiServerThread$a;
.super Ljava/lang/Thread;
.source "MGWifiServerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/aidl/MGWifiServerThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiServerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$000(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$102(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x2001

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-static {v0, v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$102(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tbl>>>isrun:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$200(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x232f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$200(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tbl>>>mserverSocket.isClosed():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/join/mgps/aidl/MGWifiServerThread$b;

    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;-><init>(Lcom/join/mgps/aidl/MGWifiServerThread;Ljava/net/Socket;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$000(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 17
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$100(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 20
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$500(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2330

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :catch_2
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
