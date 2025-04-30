.class public Lcom/heepay/plugin/domain/e;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/heepay/plugin/domain/e;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/heepay/plugin/domain/e;
    .locals 2

    const-class v0, Lcom/heepay/plugin/domain/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heepay/plugin/domain/e;->c:Lcom/heepay/plugin/domain/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/heepay/plugin/domain/e;

    invoke-direct {v1}, Lcom/heepay/plugin/domain/e;-><init>()V

    sput-object v1, Lcom/heepay/plugin/domain/e;->c:Lcom/heepay/plugin/domain/e;

    :cond_0
    sget-object v1, Lcom/heepay/plugin/domain/e;->c:Lcom/heepay/plugin/domain/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/heepay/plugin/c/j;->a()Lcom/heepay/plugin/c/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heepay/plugin/c/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public b()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/heepay/plugin/domain/e$1;

    invoke-direct {v2, p0}, Lcom/heepay/plugin/domain/e$1;-><init>(Lcom/heepay/plugin/domain/e;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public b(Landroid/telephony/TelephonyManager;)I
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/heepay/plugin/domain/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heepay/plugin/domain/e;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumber="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DeviceId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heepay/plugin/domain/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SimState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->g(Landroid/telephony/TelephonyManager;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SimSerialNumber="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SimOperatorName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SimCountryIso="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->e(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PhoneType="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->f(Landroid/telephony/TelephonyManager;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SubscriberId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->h(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SystemName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SystemModel="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SystemVersion="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", NetworkType="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->b(Landroid/telephony/TelephonyManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", IP="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", CoreCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heepay/plugin/domain/e;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mClientInfo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heepay/plugin/domain/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDK|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heepay/plugin/domain/e;->b:Ljava/lang/String;

    const-string v1, "39EB339F80B715384793F7EF"

    const-string v2, "ToHex16"

    invoke-static {v0, v1, v2}, Lcom/heepay/plugin/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heepay/plugin/domain/e;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    iput-object p1, p0, Lcom/heepay/plugin/domain/e;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/domain/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "DeviceId"

    invoke-virtual {p0, p1}, Lcom/heepay/plugin/domain/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "PhoneNumber"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "SimState"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->g(Landroid/telephony/TelephonyManager;)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "SimSerialNumber"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "SimOperatorName"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "SimCountryIso"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->e(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "PhoneType"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->f(Landroid/telephony/TelephonyManager;)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "SubscriberId"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->h(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "SystemName"

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "SystemModel"

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "SystemVersion"

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "NetworkType"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/domain/e;->b(Landroid/telephony/TelephonyManager;)I

    move-result v0

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "IP"

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "CoreCount"

    invoke-virtual {p0}, Lcom/heepay/plugin/domain/e;->b()I

    move-result v0

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "39EB339F80B715384793F7EF"

    const-string v2, "ToHex16"

    invoke-static {p1, v0, v2}, Lcom/heepay/plugin/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heepay/plugin/domain/e;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public e(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/telephony/TelephonyManager;)I
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public g(Landroid/telephony/TelephonyManager;)I
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/domain/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method
