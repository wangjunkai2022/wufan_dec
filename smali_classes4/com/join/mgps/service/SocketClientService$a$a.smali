.class Lcom/join/mgps/service/SocketClientService$a$a;
.super Ljava/lang/Object;
.source "SocketClientService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/SocketClientService$a;->newSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/SocketClientService$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/SocketClientService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    iget v0, v0, Lcom/join/mgps/service/SocketClientService;->c:I

    if-lez v0, :cond_1

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/Util/r1;->b(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v4, v4, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    iget-object v4, v4, Lcom/join/mgps/service/SocketClientService;->a:Ljava/lang/String;

    const/16 v5, 0xfa0

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x2710

    invoke-virtual {v0, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    invoke-virtual {v0, v1}, Lcom/join/mgps/service/SocketClientService$a;->postSocketConnectedStatus(I)V

    .line 11
    invoke-static {}, Lcom/join/mgps/service/SocketClientService;->a()Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    iput v2, v0, Lcom/join/mgps/service/SocketClientService;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    iget-object v2, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v2, v2, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    iget v3, v2, Lcom/join/mgps/service/SocketClientService;->c:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/join/mgps/service/SocketClientService;->c:I

    if-gtz v3, :cond_0

    .line 14
    invoke-static {}, Lcom/join/mgps/service/SocketClientService;->a()Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/join/mgps/service/SocketClientService$a$a;->a:Lcom/join/mgps/service/SocketClientService$a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/join/mgps/service/SocketClientService$a;->postSocketConnectedStatus(I)V

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
