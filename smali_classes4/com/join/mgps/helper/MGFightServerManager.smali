.class public Lcom/join/mgps/helper/MGFightServerManager;
.super Ljava/lang/Object;
.source "MGFightServerManager.java"

# interfaces
.implements Lcom/join/mgps/broadcast/WifiapBroadcast$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/helper/MGFightServerManager$b;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private apName:Ljava/lang/String;

.field private fightConnectListener:Ll1/c;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGameName:Ljava/lang/String;

.field private mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

.field mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

.field private monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

.field private wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll1/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/join/mgps/helper/MGFightServerManager$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGFightServerManager$a;-><init>(Lcom/join/mgps/helper/MGFightServerManager;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/helper/MGFightServerManager;->fightConnectListener:Ll1/c;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/helper/MGFightServerManager$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/helper/MGFightServerManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mGameName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/aidl/MGWifiServerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/helper/MGFightServerManager;Lcom/join/mgps/aidl/MGWifiServerThread;)Lcom/join/mgps/aidl/MGWifiServerThread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/helper/MGFightServerManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->apName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/helper/MGFightServerManager;)Ll1/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->fightConnectListener:Ll1/c;

    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private createAP(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->closeWifi()V

    const-string v0, " "

    const-string v1, ""

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mGameName:Ljava/lang/String;

    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/g2;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "papa_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->apName:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method createAP() called. start create ap:["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->apName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->fightConnectListener:Ll1/c;

    const/16 v0, 0x232e

    invoke-interface {p1, v0}, Ll1/c;->a(I)V

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->apName:Ljava/lang/String;

    const-string v1, "12345678"

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/WifiUtils;->createAPInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/WifiUtils;->createWiFiAP(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

    if-nez p1, :cond_3

    .line 12
    new-instance p1, Lcom/join/mgps/helper/MGFightServerManager$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/helper/MGFightServerManager$b;-><init>(Lcom/join/mgps/helper/MGFightServerManager;)V

    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightServerManager$b;->b()V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightServerManager$b;->a()V

    return-void
.end method


# virtual methods
.method public disConnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->disConnect()V

    :cond_0
    return-void
.end method

.method public getmWifiapBroadcast()Lcom/join/mgps/broadcast/WifiapBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    return-object v0
.end method

.method public handleConnectChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public initBroadcast()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/broadcast/WifiapBroadcast;

    invoke-direct {v0}, Lcom/join/mgps/broadcast/WifiapBroadcast;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

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
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public scanResultsAvailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shutDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->disConnect()V

    :cond_0
    return-void
.end method

.method public shutDownServer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->disConnect()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    return-void
.end method

.method public startGame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->startGame()V

    return-void
.end method

.method public startServer(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/helper/MGFightServerManager;->createAP(Ljava/lang/String;)V

    return-void
.end method

.method public wifiStatusNotification()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
