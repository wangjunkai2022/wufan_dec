.class public final Lcom/alipay/security/mobile/module/deviceinfo/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field volatile l:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->l:I

    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/deviceinfo/f;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "network"

    const-string v3, "phone"

    new-instance v4, Lcom/alipay/security/mobile/module/deviceinfo/f;

    invoke-direct {v4}, Lcom/alipay/security/mobile/module/deviceinfo/f;-><init>()V

    iput-object v1, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, v7, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :goto_0
    const/4 v9, 0x3

    const-string v10, ""

    if-ne v8, v7, :cond_3

    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v8

    check-cast v8, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v9, v10

    :goto_1
    :try_start_3
    invoke-virtual {v8}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v8}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v12, v10

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v9, v10

    move-object v12, v9

    goto :goto_2

    :cond_2
    move-object v0, v10

    move-object v11, v0

    move-object v12, v11

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v9, v10

    move-object v11, v9

    move-object v12, v11

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    move-object v0, v10

    move-object v10, v9

    goto/16 :goto_7

    :cond_3
    :try_start_6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v8

    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x5

    invoke-virtual {v0, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v9, v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v8, v0

    move-object v0, v10

    move-object v12, v0

    goto :goto_6

    :cond_4
    move-object v9, v10

    move-object v11, v9

    :goto_4
    :try_start_8
    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, v10

    move-object v10, v11

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v8, v0

    move-object v0, v12

    move-object v12, v9

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v8, v0

    move-object v12, v9

    move-object v0, v10

    goto :goto_6

    :cond_5
    move-object v0, v10

    move-object v9, v0

    move-object v12, v9

    :goto_5
    move-object v11, v0

    move-object v0, v12

    move-object v12, v9

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v8, v0

    move-object v0, v10

    move-object v11, v0

    move-object v12, v11

    :goto_6
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    :goto_7
    iput-object v10, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->h:Ljava/lang/String;

    iput-object v12, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->i:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->j:Ljava/lang/String;

    iput-object v11, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->k:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    :try_start_b
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    new-instance v8, Lcom/alipay/security/mobile/module/deviceinfo/g;

    invoke-direct {v8, v4, v0}, Lcom/alipay/security/mobile/module/deviceinfo/g;-><init>(Lcom/alipay/security/mobile/module/deviceinfo/f;Landroid/telephony/TelephonyManager;)V

    const/16 v9, 0x100

    invoke-virtual {v0, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    :goto_8
    :try_start_c
    const-string v0, "location"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v15, Lr/a;

    invoke-direct {v15}, Lr/a;-><init>()V

    const-string v9, "network"

    const-wide/32 v10, 0x493e0

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    move-object v8, v0

    move-object v13, v15

    invoke-virtual/range {v8 .. v14}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    invoke-virtual {v0, v15}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->b:Ljava/lang/String;

    const/4 v5, 0x1

    :cond_7
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-ne v2, v7, :cond_8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    iget-object v2, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    int-to-double v7, v3

    const-wide v9, 0x40cc200000000000L    # 14400.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    :try_start_d
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    :try_start_e
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->b:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_8
    :goto_9
    :try_start_f
    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->f:Ljava/lang/String;

    const-string/jumbo v0, "wifi"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->d:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/security/mobile/module/deviceinfo/f;->g:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_9
    :goto_a
    return-object v4
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->l:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->b:Ljava/lang/String;

    return-void
.end method

.method private d()Z
    .locals 1

    iget v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->l:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()D
    .locals 2

    iget v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->l:I

    int-to-double v0, v0

    return-wide v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->c:Ljava/lang/String;

    return-void
.end method

.method private g()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    const-string/jumbo v5, "wifiMac"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v5, "ssid"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "rssi"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->d:Ljava/lang/String;

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->e:Ljava/lang/String;

    return-void
.end method

.method private j()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->f:Ljava/lang/String;

    return-void
.end method

.method private l()Z
    .locals 6

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v4, v3

    :cond_5
    :goto_0
    if-nez v4, :cond_6

    return v1

    :cond_6
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_7

    const/4 v3, 0x2

    goto :goto_1

    :cond_7
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :cond_a
    :goto_1
    if-eqz v3, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method private m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method private n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->g:Ljava/lang/String;

    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method private p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->h:Ljava/lang/String;

    return-void
.end method

.method private q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method private r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->i:Ljava/lang/String;

    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method private t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->j:Ljava/lang/String;

    return-void
.end method

.method private u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method private v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->k:Ljava/lang/String;

    return-void
.end method

.method private w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method private x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method private y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->j:Ljava/lang/String;

    return-object v0
.end method
