.class public Lcom/ta/utdid2/android/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Wi-Fi"

.field public static final b:Ljava/lang/String; = "00-00-00-00-00-00"

.field private static final c:Ljava/lang/String; = "NetworkUtils"

.field private static d:Landroid/net/ConnectivityManager;

.field private static final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ta/utdid2/android/utils/f;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x7
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
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

.method public static b(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lcom/ta/utdid2/android/utils/f;->d:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v0, "connectivity"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sput-object p0, Lcom/ta/utdid2/android/utils/f;->d:Landroid/net/ConnectivityManager;

    .line 3
    :cond_1
    sget-object p0, Lcom/ta/utdid2/android/utils/f;->d:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const-string v0, "Unknown"

    .line 1
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    aput-object v0, v1, v3

    return-object v1

    :cond_0
    const-string v2, "connectivity"

    .line 5
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    .line 6
    aput-object v0, v1, v3

    return-object v1

    :cond_1
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_2

    const-string p0, "Wi-Fi"

    .line 9
    aput-object p0, v1, v3

    return-object v1

    .line 10
    :cond_2
    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_3

    const-string v2, "2G/3G"

    .line 12
    aput-object v2, v1, v3

    .line 13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "00-00-00-00-00-00"

    if-eqz p0, :cond_1

    const-string v1, "wifi"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "wifi"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    invoke-static {p0}, Lcom/ta/utdid2/android/utils/f;->a(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/f;->b(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/f;->b(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 4
    sget-boolean v2, Lcom/ta/utdid2/android/utils/d;->b:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    sget-object p0, Lcom/ta/utdid2/android/utils/f;->e:[I

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_2
    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/f;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string v1, "Wi-Fi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method
