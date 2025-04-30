.class public Lcom/join/mgps/helper/ApWifiManager;
.super Ljava/lang/Object;
.source "ApWifiManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApWifiManager"


# instance fields
.field context:Landroid/content/Context;

.field mApWifiUtil:Lcom/join/mgps/Util/f;

.field wifiUtil:Lcom/join/mgps/Util/WifiUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/f;->i(Landroid/content/Context;)Lcom/join/mgps/Util/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/f;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/helper/ApWifiManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public closeWifiAp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/f;

    invoke-virtual {v0}, Lcom/join/mgps/Util/f;->f()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    iget-object v1, p0, Lcom/join/mgps/helper/ApWifiManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    return-void
.end method

.method public connectApWifi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/f;

    invoke-virtual {v0}, Lcom/join/mgps/Util/f;->f()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    iget-object v1, p0, Lcom/join/mgps/helper/ApWifiManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/f;

    invoke-virtual {v0}, Lcom/join/mgps/Util/f;->h()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/f;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/Util/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createApWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    iget-object v1, p0, Lcom/join/mgps/helper/ApWifiManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->closeWifi(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/helper/ApWifiManager;->mApWifiUtil:Lcom/join/mgps/Util/f;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/Util/f;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
