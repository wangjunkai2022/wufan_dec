.class public Lcom/join/mgps/Util/e1;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const-string v0, "3g"

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_7

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v3, 0x4

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_6

    const/4 v2, 0x7

    if-eq p0, v2, :cond_6

    const/16 v2, 0xb

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-eq p0, v2, :cond_8

    const/16 v2, 0x8

    if-eq p0, v2, :cond_8

    const/4 v2, 0x6

    if-eq p0, v2, :cond_8

    const/4 v2, 0x5

    if-eq p0, v2, :cond_8

    const/16 v2, 0xc

    if-eq p0, v2, :cond_8

    const/16 v2, 0x9

    if-eq p0, v2, :cond_8

    const/16 v2, 0xa

    if-eq p0, v2, :cond_8

    const/16 v2, 0xe

    if-eq p0, v2, :cond_8

    const/16 v2, 0xf

    if-ne p0, v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0xd

    if-ne p0, v2, :cond_4

    const-string v0, "4g"

    goto :goto_2

    :cond_4
    const-string p0, "TD-SCDMA"

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "WCDMA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "CDMA2000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    :goto_0
    const-string v0, "2g"

    goto :goto_2

    :cond_7
    :goto_1
    const-string v0, "wifi"

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method
