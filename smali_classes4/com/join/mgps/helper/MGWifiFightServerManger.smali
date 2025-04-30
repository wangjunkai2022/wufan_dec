.class public Lcom/join/mgps/helper/MGWifiFightServerManger;
.super Ljava/lang/Object;
.source "MGWifiFightServerManger.java"

# interfaces
.implements Lcom/join/mgps/broadcast/WifiapBroadcast$a;


# instance fields
.field private fightConnectListener:Ll1/c;

.field private mContext:Landroid/content/Context;

.field private mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

.field private mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

.field private wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll1/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->fightConnectListener:Ll1/c;

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 5
    new-instance v0, Lcom/join/mgps/helper/WifiServerThread;

    new-instance v1, Lcom/join/mgps/helper/MGWifiFightServerManger$a;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/helper/MGWifiFightServerManger$a;-><init>(Lcom/join/mgps/helper/MGWifiFightServerManger;Ll1/c;)V

    invoke-direct {v0, p1, v1, p3, p4}, Lcom/join/mgps/helper/WifiServerThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->initBroadcast()V

    return-void
.end method


# virtual methods
.method public disConnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->disConnect()V

    :cond_0
    return-void
.end method

.method public handleConnectChange()V
    .locals 0

    return-void
.end method

.method public initBroadcast()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/broadcast/WifiapBroadcast;

    invoke-direct {v0}, Lcom/join/mgps/broadcast/WifiapBroadcast;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public scanResultsAvailable()V
    .locals 0

    return-void
.end method

.method public shutDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->disConnect()V

    :cond_0
    return-void
.end method

.method public shutDownServer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->disConnect()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->shutDown()V

    return-void
.end method

.method public startGame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->startGame()V

    return-void
.end method

.method public startServer(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    invoke-virtual {p1}, Lcom/join/mgps/helper/WifiServerThread;->run()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->fightConnectListener:Ll1/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ll1/c;->a(I)V

    :goto_0
    return-void
.end method

.method public unregisterBroadCast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public wifiStatusNotification()V
    .locals 0

    return-void
.end method
