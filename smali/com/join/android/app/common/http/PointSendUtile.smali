.class public Lcom/join/android/app/common/http/PointSendUtile;
.super Ljava/lang/Object;
.source "PointSendUtile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendPoint(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getServerIPAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 4
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :goto_1
    const/4 v2, 0x0

    .line 5
    :try_start_3
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->o()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 6
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-object v3, v2

    .line 7
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/w0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    .line 8
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move-object v4, v2

    :goto_3
    :try_start_7
    const-string v5, "http.agent"

    .line 9
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    .line 10
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object v5, v2

    .line 11
    :goto_4
    :try_start_9
    sget-object v6, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/MApplication;->z:Ljava/lang/String;

    goto :goto_5

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    .line 12
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-object v6, v2

    .line 13
    :goto_5
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/w0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_6

    :catch_6
    move-exception v7

    .line 14
    :try_start_c
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v2

    .line 15
    :goto_6
    sget-object v8, Lcom/MApplication;->A:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :try_start_d
    const-string v9, "phone"

    .line 16
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 17
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_7

    :catch_7
    move-exception p0

    .line 18
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :goto_7
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v2, v0

    .line 20
    :cond_1
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 21
    invoke-static {v2}, Lcom/join/mgps/Util/w0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_2
    move-object p0, v0

    :goto_8
    const-string v9, "4.9.9.6"

    .line 22
    new-instance v10, Lcom/join/mgps/dto/PointMessageData;

    invoke-direct {v10}, Lcom/join/mgps/dto/PointMessageData;-><init>()V

    .line 23
    iput-object v1, v10, Lcom/join/mgps/dto/PointMessageData;->ip:Ljava/lang/String;

    .line 24
    iput-object v3, v10, Lcom/join/mgps/dto/PointMessageData;->mac:Ljava/lang/String;

    .line 25
    iput-object v4, v10, Lcom/join/mgps/dto/PointMessageData;->mac_md5:Ljava/lang/String;

    .line 26
    iput-object v5, v10, Lcom/join/mgps/dto/PointMessageData;->useragent:Ljava/lang/String;

    .line 27
    iput-object v6, v10, Lcom/join/mgps/dto/PointMessageData;->androidid:Ljava/lang/String;

    .line 28
    iput-object v7, v10, Lcom/join/mgps/dto/PointMessageData;->androidid_md5:Ljava/lang/String;

    .line 29
    iput-object v8, v10, Lcom/join/mgps/dto/PointMessageData;->oaid:Ljava/lang/String;

    .line 30
    iput-object v2, v10, Lcom/join/mgps/dto/PointMessageData;->imei:Ljava/lang/String;

    .line 31
    iput-object p0, v10, Lcom/join/mgps/dto/PointMessageData;->imei_md5:Ljava/lang/String;

    .line 32
    iput-object v0, v10, Lcom/join/mgps/dto/PointMessageData;->callback_url:Ljava/lang/String;

    .line 33
    iput-object v9, v10, Lcom/join/mgps/dto/PointMessageData;->osversion:Ljava/lang/String;

    .line 34
    iput-object p1, v10, Lcom/join/mgps/dto/PointMessageData;->gameId:Ljava/lang/String;

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v10, Lcom/join/mgps/dto/PointMessageData;->clicktime:Ljava/lang/String;

    .line 36
    new-instance p0, Lcom/join/mgps/dto/PointMessageMain;

    invoke-direct {p0}, Lcom/join/mgps/dto/PointMessageMain;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/join/mgps/dto/PointMessageMain;->gameId:Ljava/lang/String;

    .line 38
    iput-object v10, p0, Lcom/join/mgps/dto/PointMessageMain;->data:Lcom/join/mgps/dto/PointMessageData;

    .line 39
    invoke-static {p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "2222"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance p1, Lcom/join/android/app/common/http/PointSendUtile$a;

    invoke-direct {p1, p0, v1}, Lcom/join/android/app/common/http/PointSendUtile$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_9

    :catch_8
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    return-void
.end method
