.class public Lcom/join/mgps/service/SocketClientService;
.super Landroid/app/Service;
.source "SocketClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/SocketClientService$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field public b:Lcom/join/mgps/service/SocketClientService$a;

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/service/SocketClientService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/service/SocketClientService;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/service/SocketClientService$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/service/SocketClientService$a;-><init>(Lcom/join/mgps/service/SocketClientService;)V

    iput-object v0, p0, Lcom/join/mgps/service/SocketClientService;->b:Lcom/join/mgps/service/SocketClientService$a;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/join/mgps/service/SocketClientService;->c:I

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/service/SocketClientService;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService;->b:Lcom/join/mgps/service/SocketClientService$a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService;->b:Lcom/join/mgps/service/SocketClientService$a;

    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "host"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/service/SocketClientService;->a:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/service/SocketClientService;->b:Lcom/join/mgps/service/SocketClientService$a;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/service/SocketClientService;->b()V

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

    const/4 p1, 0x3

    .line 1
    iput p1, p0, Lcom/join/mgps/service/SocketClientService;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
