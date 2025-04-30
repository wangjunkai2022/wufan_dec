.class public Lcom/join/android/app/common/utils/f;
.super Ljava/lang/Object;
.source "NetWorkUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "NetWorkUtils"

.field public static final b:Ljava/lang/String; = "ctwap"

.field public static final c:Ljava/lang/String; = "cmwap"

.field public static final d:Ljava/lang/String; = "3gwap"

.field public static final e:Ljava/lang/String; = "uniwap"

.field public static final f:I = 0x0

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static j:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/preferapn"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/join/android/app/common/utils/f;->j:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x6

    :try_start_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string p0, "=====================>wifi\u7f51\u7edc"

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return v0

    :cond_1
    if-nez v1, :cond_5

    .line 6
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10.0.0.172"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    const-string p0, "netMode ================== 10.0.0.172"

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return v3

    :cond_2
    const-string v2, "10.0.0.200"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "netMode ================== 10.0.0.200"

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    const/4 p0, 0x5

    return p0

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netMode ================== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cmwap"

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "3gwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "uniwap"

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const-string p0, "=====================>\u79fb\u52a8\u8054\u901awap\u7f51\u7edc"

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_5
    const-string p0, "net \u7f51\u7edc"

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return v0

    :cond_6
    :goto_0
    :try_start_1
    const-string p0, "=====================>\u65e0\u7f51\u7edc"

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Landroid/content/Context;)B
    .locals 6

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_7

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    if-eq p0, v3, :cond_6

    if-eq p0, v4, :cond_6

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    if-eq p0, v1, :cond_5

    const/16 v3, 0x8

    if-eq p0, v3, :cond_5

    const/4 v3, 0x6

    if-eq p0, v3, :cond_5

    if-eq p0, v0, :cond_5

    const/16 v3, 0xc

    if-eq p0, v3, :cond_5

    const/16 v3, 0x9

    if-eq p0, v3, :cond_5

    const/16 v3, 0xa

    if-eq p0, v3, :cond_5

    const/16 v3, 0xe

    if-eq p0, v3, :cond_5

    const/16 v3, 0xf

    if-ne p0, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    if-ne p0, v1, :cond_4

    const/4 v0, 0x2

    goto :goto_3

    :cond_4
    const/16 v1, 0x14

    if-ne p0, v1, :cond_7

    goto :goto_3

    :cond_5
    :goto_0
    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    :goto_1
    const/4 v0, 0x4

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->h(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "0.0.0.0"

    return-object p0
.end method

.method public static final f()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 1
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "http://pv.sohu.com/cityjson?ie=utf-8"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1388

    .line 3
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x1770

    .line 4
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Connection"

    const-string v4, "Keep-Alive"

    .line 5
    invoke-virtual {v3, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GET"

    .line 6
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 9
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v5, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "{"

    .line 14
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v4, "}"

    .line 15
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 16
    new-instance v6, Lorg/json/JSONObject;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v1, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cip"

    .line 17
    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 19
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_2

    .line 20
    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v1, v3

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 21
    :cond_3
    throw v0

    :cond_4
    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v2
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static h(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    .line 4
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final l()Z
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://www.baidu.com/"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1388

    .line 3
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x1770

    .line 4
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    .line 5
    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GET"

    .line 6
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ping status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    const-wide/16 v3, 0x3e8

    .line 10
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 11
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v1, v2

    goto :goto_0

    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 14
    :cond_1
    throw v0

    :cond_2
    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/ping -c 1 -w 100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0
.end method
