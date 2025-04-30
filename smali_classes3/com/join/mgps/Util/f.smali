.class public Lcom/join/mgps/Util/f;
.super Ljava/lang/Object;
.source "ApWifiUtil.java"


# static fields
.field private static final h:Ljava/lang/String; = "f"

.field private static i:Lcom/join/mgps/Util/f; = null

.field public static j:I = 0xa

.field public static k:I = 0xb

.field public static l:I = 0xc

.field public static m:I = 0xd

.field public static n:I = 0xe


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/net/wifi/WifiManager;

.field c:Landroid/net/ConnectivityManager;

.field private d:Landroid/os/Handler;

.field private e:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


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
    iput-object p1, p0, Lcom/join/mgps/Util/f;->a:Landroid/content/Context;

    const-string v0, "wifi"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/f;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/join/mgps/Util/f;->c:Landroid/net/ConnectivityManager;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/f;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/Util/f;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/f;->e:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/Util/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/f;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/join/mgps/Util/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/f;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/join/mgps/Util/f;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/f;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Lcom/join/mgps/Util/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/Util/f;->i:Lcom/join/mgps/Util/f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/join/mgps/Util/f;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/join/mgps/Util/f;->i:Lcom/join/mgps/Util/f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/mgps/Util/f;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/join/mgps/Util/f;->i:Lcom/join/mgps/Util/f;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/join/mgps/Util/f;->i:Lcom/join/mgps/Util/f;

    return-object p0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "wifi"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isWifiApEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "\""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 p2, 0x2

    .line 4
    iput p2, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 5
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 6
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 7
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, p2}, Ljava/util/BitSet;->set(I)V

    .line 8
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 9
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 10
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 11
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, p2}, Ljava/util/BitSet;->set(I)V

    .line 12
    iget-object p2, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p2

    .line 13
    iget-object v3, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 15
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":::::\u6dfb\u52a0\u7684Id:::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 18
    iget-object p1, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    iget p2, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, p2, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 19
    iget-object p1, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v4

    :catch_0
    return v1
.end method

.method public f()V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/f;->e:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/Util/f;->l()I

    move-result v0

    sget v1, Lcom/join/mgps/Util/f;->k:I

    if-eq v0, v1, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWifiApConfiguration"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    iget-object v3, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 7
    iget-object v3, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setWifiApEnabled"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/net/wifi/WifiConfiguration;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    new-instance p2, Lcom/join/mgps/Util/f$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/Util/f$a;-><init>(Lcom/join/mgps/Util/f;)V

    iget-object v0, p0, Lcom/join/mgps/Util/f;->d:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 5
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 6
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 8
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 9
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 10
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 11
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 12
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 13
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 14
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "setWifiApEnabled"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/net/wifi/WifiConfiguration;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 16
    iget-object v5, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, v4, v3

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/join/mgps/Util/f;->f:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/join/mgps/Util/f;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWifiApState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/Util/f;->b:Landroid/net/wifi/WifiManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/f;->m(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
