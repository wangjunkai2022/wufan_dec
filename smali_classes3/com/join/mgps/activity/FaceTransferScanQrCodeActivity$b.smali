.class Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;
.super Ljava/lang/Object;
.source "FaceTransferScanQrCodeActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    check-cast p2, Lcom/join/mgps/service/SocketClientService$a;

    iput-object p2, p1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->D:Lcom/join/mgps/service/SocketClientService$a;

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/service/SocketClientService$a;->newSocket()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
