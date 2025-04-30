.class public Lcom/join/mgps/Util/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mWifiUtils:Lcom/join/mgps/Util/WifiUtils;


# instance fields
.field private dhcpInfo:Landroid/net/DhcpInfo;

.field public isConnectToHotSpotRunning:Z

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mWifiConfiguration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/Util/WifiUtils;->isConnectToHotSpotRunning:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const-string v0, "connectivity"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 8
    sput-object p1, Lcom/join/mgps/Util/WifiUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method private connectWifiByReflectMethod(I)Ljava/lang/reflect/Method;
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "int"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x11

    if-lt v0, v5, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    array-length v5, v0

    move-object v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v0, v6

    .line 5
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "connect"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 6
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 7
    array-length v10, v9

    if-lez v10, :cond_0

    .line 8
    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v7, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    aput-object v3, v1, v2

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3

    :cond_2
    :goto_1
    move-object v3, v7

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    if-ne v0, v5, :cond_4

    goto :goto_3

    :cond_4
    const/16 v6, 0xe

    if-lt v0, v6, :cond_7

    if-ge v0, v5, :cond_7

    .line 11
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 13
    array-length v5, v0

    move-object v7, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v8, v0, v6

    .line 14
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "connectNetwork"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 15
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 16
    array-length v10, v9

    if-lez v10, :cond_5

    .line 17
    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v7, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_2

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/WifiUtils;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/WifiUtils;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/WifiUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/join/mgps/Util/WifiUtils;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 3
    :cond_0
    sget-object p0, Lcom/join/mgps/Util/WifiUtils;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    return-object p0
.end method

.method private isExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExsits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method


# virtual methods
.method public AcquireWifiLock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method public CreatWifiLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "Test"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-void
.end method

.method public OpenWifi()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/mgps/Util/WifiUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public ReleaseWifiLock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_0
    return-void
.end method

.method public addNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    return-void
.end method

.method public closeWifi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public closeWifi(Landroid/content/Context;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method public connectConfiguration(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiConfiguration:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiConfiguration:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    return-void
.end method

.method public connectToHotspot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/Util/WifiUtils;->isConnectToHotSpotRunning:Z

    .line 2
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 6
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iget-object v2, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/join/mgps/Util/WifiUtils;->removeWifiNetwork(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v3}, Lcom/join/mgps/Util/WifiUtils;->getSecurityMode(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPEN"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "\""

    if-eqz v3, :cond_1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 11
    iget-object p1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 13
    iget-object p2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 14
    iget-object p2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 15
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 16
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 17
    iput-boolean v4, p0, Lcom/join/mgps/Util/WifiUtils;->isConnectToHotSpotRunning:Z

    return v0

    :cond_1
    const-string v3, "WEP"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 20
    iget-object p1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    .line 21
    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 22
    iget-object p1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 23
    iget-object p1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 25
    iget-object p2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 26
    iget-object p2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 27
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 28
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 29
    iput-boolean v4, p0, Lcom/join/mgps/Util/WifiUtils;->isConnectToHotSpotRunning:Z

    return v0

    .line 30
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 32
    iput-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 p1, 0x2

    .line 33
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 34
    iget-object p2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 35
    iget-object p2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 36
    iget-object p2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    .line 37
    iget-object p2, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    .line 38
    iget-object p2, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 39
    iget-object p1, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 40
    iget-object p1, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 41
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 42
    iget-object p2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 43
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/WifiUtils;->connectWifiByReflectMethod(I)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_3

    .line 44
    iget-object p2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 46
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 47
    iput-boolean v4, p0, Lcom/join/mgps/Util/WifiUtils;->isConnectToHotSpotRunning:Z

    return v0

    .line 48
    :cond_4
    iput-boolean v4, p0, Lcom/join/mgps/Util/WifiUtils;->isConnectToHotSpotRunning:Z

    return v4
.end method

.method public createAPInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 4
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 5
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 6
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 7
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 8
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 9
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    if-eqz p2, :cond_0

    .line 10
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 11
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public createWiFiAP(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setWifiApEnabled"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public createWifiInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .line 1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    const-string v1, "wt"

    .line 7
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p4, :cond_3

    .line 8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/WifiUtils;->isExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    sget-object p4, Lcom/join/mgps/Util/WifiUtils;->mContext:Landroid/content/Context;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p4, p1}, Lcom/join/mgps/Util/WifiUtils;->removeNetwork(Landroid/content/Context;I)V

    :cond_0
    if-ne p3, v4, :cond_1

    .line 11
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, p1, v5

    .line 12
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    .line 13
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_0

    :cond_1
    if-ne p3, v3, :cond_2

    .line 14
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 15
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v5

    goto/16 :goto_0

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 17
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 18
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    .line 19
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 20
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 21
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 22
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 23
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 24
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 25
    :cond_3
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 26
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 27
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 28
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 29
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    .line 30
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 31
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    .line 32
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ne p3, v4, :cond_4

    .line 33
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, p1, v5

    .line 34
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    .line 35
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    :cond_4
    if-ne p3, v3, :cond_5

    .line 36
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 37
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p2, p1, v5

    goto :goto_0

    :cond_5
    if-ne p3, v2, :cond_6

    .line 38
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 39
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    .line 40
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 41
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    .line 42
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 43
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 44
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    :cond_6
    :goto_0
    return-object v0
.end method

.method public disableNetwork(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    return-void
.end method

.method public disconnectWifi(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    return-void
.end method

.method public getApSSID()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWifiApConfiguration"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 4
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_2

    return-object v2

    .line 5
    :cond_2
    const-class v2, Landroid/net/wifi/WifiConfiguration;

    const-string v4, "mWifiApProfile"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    const/4 v4, 0x1

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    if-nez v1, :cond_4

    return-object v0

    .line 9
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "SSID"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    return-object v0

    .line 12
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 13
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public getApSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/WifiUtils;->getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1a

    const-string v2, ""

    const-string v3, "\""

    if-le v0, v1, :cond_2

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_4

    .line 2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/r2;->h(Landroid/content/Context;)Lcom/join/mgps/Util/r2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/r2;->l()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 9
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    const/16 v1, 0x13

    if-ge v0, v1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ssid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "unknown id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiConfiguration:Ljava/util/List;

    return-object v0
.end method

.method public getDhcpInfo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    return v0
.end method

.method public getLocalIPAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/WifiUtils;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "\""

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 6
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 7
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/WifiUtils;->getApSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p1, "\""

    .line 10
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSecurityMode(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WPA"

    const-string v1, "EAP"

    const-string v2, "WEP"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    aget-object p1, v0, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const-string p1, "OPEN"

    return-object p1
.end method

.method public getServerIPAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mDhcpInfo:Landroid/net/DhcpInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    return-object v0

    .line 2
    :cond_0
    iget v0, v0, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/WifiUtils;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiApState()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWifiApState"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v3, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-eq v2, v1, :cond_0

    const/16 v2, 0xd

    if-ne v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public getWifiApStateInt()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWifiApState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x4

    return v0
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiList:Ljava/util/List;

    return-object v0
.end method

.method public getmWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public intToIp(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isWifiConnect()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWifiConnect(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    return p1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    return p1
.end method

.method public isWifiEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public lookUpScan()Ljava/lang/StringBuilder;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/n"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0
.end method

.method public openWifi(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public pingCmd(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ping  -c 1 -W 3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_1
    :cond_0
    return v0
.end method

.method public removeNetwork(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    return-void
.end method

.method public removeWifiNetwork(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 5
    iget-object v2, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    return-void
.end method

.method public setHotSpot(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setWifiApEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, ""

    if-ne p2, v8, :cond_0

    .line 5
    iput-object p1, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 6
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->set(I)V

    .line 7
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    .line 8
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->set(I)V

    .line 9
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 10
    :cond_0
    iput-object p1, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 11
    iput-object p2, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 12
    iput-boolean v2, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 13
    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 14
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->set(I)V

    .line 15
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 16
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    .line 17
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    .line 18
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->set(I)V

    .line 19
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    .line 20
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->set(I)V

    .line 21
    :goto_1
    :try_start_0
    iget-object v8, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-virtual {v4, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v4, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public setNewWifiManagerInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-void
.end method

.method public setWifiList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiList:Ljava/util/List;

    return-void
.end method

.method public startScan(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/WifiUtils;->mWifiConfiguration:Ljava/util/List;

    return-void
.end method
