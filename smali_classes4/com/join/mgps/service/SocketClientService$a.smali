.class public Lcom/join/mgps/service/SocketClientService$a;
.super Landroid/os/Binder;
.source "SocketClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/SocketClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/join/mgps/service/SocketClientService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/SocketClientService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/SocketClientService$a;->this$0:Lcom/join/mgps/service/SocketClientService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public newSocket()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/service/SocketClientService$a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/service/SocketClientService$a$a;-><init>(Lcom/join/mgps/service/SocketClientService$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method postSocketConnectedStatus(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/socket/entity/f;

    invoke-direct {v0}, Lcom/join/mgps/socket/entity/f;-><init>()V

    .line 2
    iput p1, v0, Lcom/join/mgps/socket/entity/f;->a:I

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method
