.class Lcom/join/mgps/activity/GameTransferActivity$a;
.super Ljava/lang/Object;
.source "GameTransferActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameTransferActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameTransferActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$a;->a:Lcom/join/mgps/activity/GameTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    instance-of p1, p2, Lcom/join/mgps/service/SocketClientService$a;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$a;->a:Lcom/join/mgps/activity/GameTransferActivity;

    check-cast p2, Lcom/join/mgps/service/SocketClientService$a;

    invoke-virtual {p2}, Lcom/join/mgps/service/SocketClientService$a;->getSocket()Ljava/net/Socket;

    move-result-object p2

    iput-object p2, p1, Lcom/join/mgps/activity/GameTransferActivity;->u0:Ljava/net/Socket;

    goto :goto_0

    .line 3
    :cond_0
    instance-of p1, p2, Lcom/join/mgps/service/SocketServerService$a;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$a;->a:Lcom/join/mgps/activity/GameTransferActivity;

    check-cast p2, Lcom/join/mgps/service/SocketServerService$a;

    invoke-virtual {p2}, Lcom/join/mgps/service/SocketServerService$a;->getSocket()Ljava/net/Socket;

    move-result-object p2

    iput-object p2, p1, Lcom/join/mgps/activity/GameTransferActivity;->u0:Ljava/net/Socket;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$a;->a:Lcom/join/mgps/activity/GameTransferActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GameTransferActivity;->h1()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
