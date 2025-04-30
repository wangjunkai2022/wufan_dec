.class public Lcom/join/mgps/service/SocketServerService;
.super Landroid/app/Service;
.source "SocketServerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/SocketServerService$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Lcom/join/mgps/service/SocketServerService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/service/SocketServerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/service/SocketServerService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/service/SocketServerService$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/service/SocketServerService$a;-><init>(Lcom/join/mgps/service/SocketServerService;)V

    iput-object v0, p0, Lcom/join/mgps/service/SocketServerService;->a:Lcom/join/mgps/service/SocketServerService$a;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/service/SocketServerService;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->a:Lcom/join/mgps/service/SocketServerService$a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$100(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$100(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->a:Lcom/join/mgps/service/SocketServerService$a;

    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$100(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/SocketServerService;->a:Lcom/join/mgps/service/SocketServerService$a;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/service/SocketServerService;->b()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
