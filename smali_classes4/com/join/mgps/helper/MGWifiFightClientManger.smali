.class public Lcom/join/mgps/helper/MGWifiFightClientManger;
.super Ljava/lang/Object;
.source "MGWifiFightClientManger.java"

# interfaces
.implements Lcom/join/mgps/broadcast/WifiapBroadcast$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/helper/MGWifiFightClientManger$b;
    }
.end annotation


# instance fields
.field private enterRoomProcess:Lcom/join/mgps/helper/MGWifiFightClientManger$b;

.field private enteringStartTime:J

.field private fightConnectListener:Ll1/c;

.field public handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

.field private wifiClientThread:Lcom/join/mgps/helper/WifiClientThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll1/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGWifiFightClientManger$a;-><init>(Lcom/join/mgps/helper/MGWifiFightClientManger;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->handler:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->fightConnectListener:Ll1/c;

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->initBroadcast()V

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enterRoomProcess:Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Ll1/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->fightConnectListener:Ll1/c;

    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/helper/MGWifiFightClientManger;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enteringStartTime:J

    return-wide v0
.end method

.method private startMonitorEnteringRoom()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enteringStartTime:J

    .line 2
    new-instance v0, Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;-><init>(Lcom/join/mgps/helper/MGWifiFightClientManger;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enterRoomProcess:Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    .line 3
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enterRoomProcess:Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->startMonitorEnteringRoom()V

    .line 2
    new-instance v0, Lcom/join/mgps/helper/WifiClientThread;

    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/helper/WifiClientThread;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->wifiClientThread:Lcom/join/mgps/helper/WifiClientThread;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/helper/WifiClientThread;->run(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disConnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->wifiClientThread:Lcom/join/mgps/helper/WifiClientThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiClientThread;->disConnect()V

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

    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

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
    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

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

.method public unregisterBroadCast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public wifiStatusNotification()V
    .locals 0

    return-void
.end method
