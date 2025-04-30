.class public abstract Lcom/sdk/Unicorn/base/module/manager/SDKManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CODE_WRITE_SETTINGS_PERMISSION:I = 0x44e

.field public static closePermission:Z = false

.field public static isStrong:Z = true

.field public static mContext:Landroid/content/Context; = null

.field public static smartTrust:Z = true

.field public static statisticalTestHost:Ljava/lang/String; = ""

.field public static testHost:Ljava/lang/String; = ""

.field public static useCache:Z = true

.field public static userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closePermission(Z)V
    .locals 0

    sput-boolean p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->closePermission:Z

    return-void
.end method

.method private forceSendRequestByMobileData()V
    .locals 3

    sget-object v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->getDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v2, Lcom/sdk/Unicorn/base/module/manager/SDKManager$1;

    invoke-direct {v2, p0}, Lcom/sdk/Unicorn/base/module/manager/SDKManager$1;-><init>(Lcom/sdk/Unicorn/base/module/manager/SDKManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDataEnabled(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "phone"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getDataEnabled"

    :try_start_1
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public static getHostIp()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public static getIccid(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/sdk/k/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStatisticalTestHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->statisticalTestHost:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->testHost:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getWifiEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-object p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sdk/v/a;->a(Landroid/content/Context;)Lcom/sdk/v/a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sdk/v/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-object p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sdk/v/a;->a(Landroid/content/Context;)Lcom/sdk/v/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sdk/v/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static is3rd(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isClosePermission()Z
    .locals 1

    sget-boolean v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->closePermission:Z

    return v0
.end method

.method public static isIsStrong()Z
    .locals 1

    sget-boolean v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->isStrong:Z

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isSmartTrust()Z
    .locals 1

    sget-boolean v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->smartTrust:Z

    return v0
.end method

.method public static isWiFiActive(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "wifi"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->isWiFiActive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static releaseConnect(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sdk/u/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static req(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lcom/sdk/Unicorn/base/module/manager/SDKManager$2;

    invoke-direct {v1, p0}, Lcom/sdk/Unicorn/base/module/manager/SDKManager$2;-><init>(Landroid/net/ConnectivityManager;)V

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public static securityType(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sput p0, Lcom/sdk/v/a;->d:I

    if-nez p0, :cond_0

    const-string p0, "B"

    goto :goto_0

    :cond_0
    const-string p0, "C"

    :goto_0
    sput-object p0, Lcom/sdk/v/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-boolean p0, Lcom/sdk/f/g;->b:Z

    return-void
.end method

.method public static setDebugHead(Z)V
    .locals 0

    sput-boolean p0, Lcom/sdk/f/g;->d:Z

    return-void
.end method

.method public static setIsStrong(Z)V
    .locals 0

    sput-boolean p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->isStrong:Z

    return-void
.end method

.method public static setNe4G()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    :cond_0
    return-void
.end method

.method public static setSmartTrust(Z)V
    .locals 0

    sput-boolean p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->smartTrust:Z

    return-void
.end method

.method public static setStatisticalTestHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->statisticalTestHost:Ljava/lang/String;

    return-void
.end method

.method public static setTestHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->testHost:Ljava/lang/String;

    return-void
.end method

.method public static setUseCache(Z)V
    .locals 0

    sput-boolean p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->useCache:Z

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public static toFailed(Lcom/sdk/Unicorn/base/api/CallBack;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sdk/Unicorn/base/api/CallBack<",
            "TT;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, p2, v1}, Lcom/sdk/Unicorn/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static useCache()Z
    .locals 1

    sget-boolean v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->useCache:Z

    return v0
.end method


# virtual methods
.method public youDesirePermissionCode(Landroid/app/Activity;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x44e

    if-lt v0, v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
