.class Lcom/join/mgps/Util/e$a;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "ApMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/e;->c(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/e$a;->a:Landroid/os/Handler;

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
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sput-object v0, Lcom/join/mgps/Util/e;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    sput-object v0, Lcom/join/mgps/Util/e;->b:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/Util/e$a;->a:Landroid/os/Handler;

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
