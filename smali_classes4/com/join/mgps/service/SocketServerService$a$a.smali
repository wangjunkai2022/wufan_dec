.class Lcom/join/mgps/service/SocketServerService$a$a;
.super Ljava/lang/Object;
.source "SocketServerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/SocketServerService$a;->acceptClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/SocketServerService$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/SocketServerService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/SocketServerService$a$a;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/service/SocketServerService;->a()Ljava/lang/String;

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService$a$a;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$300(Lcom/join/mgps/service/SocketServerService$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/service/SocketServerService$a$a;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-static {v1}, Lcom/join/mgps/service/SocketServerService$a;->access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/service/SocketServerService$a;->access$102(Lcom/join/mgps/service/SocketServerService$a;Ljava/net/Socket;)Ljava/net/Socket;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/service/SocketServerService$a$a;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-static {v1, v0}, Lcom/join/mgps/service/SocketServerService$a;->access$302(Lcom/join/mgps/service/SocketServerService$a;Z)Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/service/SocketServerService$a$a;->a:Lcom/join/mgps/service/SocketServerService$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/join/mgps/service/SocketServerService$a;->postSocketConnectedStatus(I)V

    .line 6
    invoke-static {}, Lcom/join/mgps/service/SocketServerService;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/service/SocketServerService$a$a;->a:Lcom/join/mgps/service/SocketServerService$a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/join/mgps/service/SocketServerService$a;->postSocketConnectedStatus(I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/service/SocketServerService$a$a;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-static {v2, v0}, Lcom/join/mgps/service/SocketServerService$a;->access$302(Lcom/join/mgps/service/SocketServerService$a;Z)Z

    .line 9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
