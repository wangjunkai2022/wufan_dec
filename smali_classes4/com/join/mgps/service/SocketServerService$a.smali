.class public Lcom/join/mgps/service/SocketServerService$a;
.super Landroid/os/Binder;
.source "SocketServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/SocketServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private mSocket:Ljava/net/Socket;

.field private mSocketService:Ljava/net/ServerSocket;

.field private mointor:Z

.field final synthetic this$0:Lcom/join/mgps/service/SocketServerService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/SocketServerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/SocketServerService$a;->this$0:Lcom/join/mgps/service/SocketServerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mointor:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocket:Ljava/net/Socket;

    return-void
.end method

.method private acceptClient()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/service/SocketServerService$a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/service/SocketServerService$a$a;-><init>(Lcom/join/mgps/service/SocketServerService$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocketService:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocket:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/service/SocketServerService$a;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/service/SocketServerService$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/service/SocketServerService$a;->mointor:Z

    return p0
.end method

.method static synthetic access$302(Lcom/join/mgps/service/SocketServerService$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mointor:Z

    return p1
.end method


# virtual methods
.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public newServerSocket()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/service/SocketServerService;->a()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocketService:Ljava/net/ServerSocket;

    const/high16 v1, 0x100000

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService$a;->mSocketService:Ljava/net/ServerSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0xfa0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/service/SocketServerService$a;->acceptClient()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/service/SocketServerService$a;->postSocketConnectedStatus(I)V

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
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

.method public setMonitor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/service/SocketServerService$a;->mointor:Z

    return-void
.end method
