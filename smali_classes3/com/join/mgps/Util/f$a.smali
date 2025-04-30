.class Lcom/join/mgps/Util/f$a;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "ApWifiUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/f;->g(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/f$a;->a:Lcom/join/mgps/Util/f;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    return-void
.end method

.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/f$a;->a:Lcom/join/mgps/Util/f;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/f;->b(Lcom/join/mgps/Util/f;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 3
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/Util/f$a;->a:Lcom/join/mgps/Util/f;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/f;->c(Lcom/join/mgps/Util/f;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/Util/f$a;->a:Lcom/join/mgps/Util/f;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/f;->d(Lcom/join/mgps/Util/f;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/Util/f$a;->a:Lcom/join/mgps/Util/f;

    invoke-static {v0}, Lcom/join/mgps/Util/f;->e(Lcom/join/mgps/Util/f;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7e2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStopped()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    return-void
.end method
