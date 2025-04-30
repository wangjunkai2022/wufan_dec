.class Lcom/join/mgps/helper/WifiClientThread$a;
.super Ljava/lang/Thread;
.source "WifiClientThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/WifiClientThread;->run(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/helper/WifiClientThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/WifiClientThread;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iput-object p2, p0, Lcom/join/mgps/helper/WifiClientThread$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/helper/WifiClientThread$a;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread$a;->a:Ljava/lang/String;

    const/16 v3, 0x2001

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iget-object v2, v2, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lcom/join/mgps/helper/WifiClientThread;->access$002(Lcom/join/mgps/helper/WifiClientThread;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    iget-object v2, v2, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, v1}, Lcom/join/mgps/helper/WifiClientThread;->access$102(Lcom/join/mgps/helper/WifiClientThread;Ljava/io/BufferedOutputStream;)Ljava/io/BufferedOutputStream;

    .line 6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/helper/WifiClientThread$a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/helper/WifiClientThread$a$a;-><init>(Lcom/join/mgps/helper/WifiClientThread$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Lcom/join/mgps/helper/WifiClientThread;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
