.class Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;
.super Landroid/content/BroadcastReceiver;
.source "FaceTransferScanQrCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v2, "wifi_state"

    .line 3
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->L0()Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    iget-boolean v2, v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->w:Z

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->M0()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->L0()Ljava/lang/String;

    :cond_2
    :goto_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "networkInfo"

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 10
    check-cast p1, Landroid/net/NetworkInfo;

    .line 11
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$d;->a:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v1, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->L0()Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->o:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->L0()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: wifi \u8fde\u63a5\u4e0a\u7684\u540d\u79f0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    iget-boolean p2, p1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->x:Z

    if-nez p2, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->N0()V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    iput-boolean v1, p1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->x:Z

    :cond_5
    :goto_1
    return-void
.end method
