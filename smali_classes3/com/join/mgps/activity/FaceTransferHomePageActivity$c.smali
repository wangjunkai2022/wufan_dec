.class Lcom/join/mgps/activity/FaceTransferHomePageActivity$c;
.super Ljava/lang/Object;
.source "FaceTransferHomePageActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FaceTransferHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FaceTransferHomePageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$c;->a:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->H0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "----onServiceConnected---"

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    instance-of p1, p2, Lcom/join/mgps/service/SocketServerService$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$c;->a:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    iput-boolean v1, p1, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->o:Z

    .line 4
    check-cast p2, Lcom/join/mgps/service/SocketServerService$a;

    iput-object p2, p1, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->p:Lcom/join/mgps/service/SocketServerService$a;

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/service/SocketServerService$a;->newServerSocket()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->H0()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "----onServiceDisconnected---"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/join/mgps/Util/u0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
