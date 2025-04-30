.class public Lcom/papa91/arc/http/utils/RequestUtil;
.super Ljava/lang/Object;
.source "RequestUtil.java"


# static fields
.field private static androidId:Ljava/lang/String; = null

.field private static androidIdx:Ljava/lang/String; = null

.field private static channel_num:Ljava/lang/String; = null

.field private static end:Ljava/lang/String; = null

.field private static imei:Ljava/lang/String; = null

.field private static ip_address:Ljava/lang/String; = null

.field private static mac:Ljava/lang/String; = null

.field private static mobile_phone_model:Ljava/lang/String; = null

.field private static ourInstance:Lcom/papa91/arc/http/utils/RequestUtil; = null

.field private static targetvVersion:I = 0x0

.field private static versionAndVersionName:Ljava/lang/String; = "1_1.0"


# instance fields
.field private ad:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/http/utils/RequestUtil;->sendPermissonBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/papa91/arc/http/utils/MetaUtils;->getAd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/http/utils/RequestUtil;->ad:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/papa91/arc/http/utils/MetaUtils;->getTargetVersion(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/papa91/arc/http/utils/RequestUtil;->targetvVersion:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->androidIdx:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/arc/http/utils/RequestUtil;->androidIdx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/papa91/arc/util/MD5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/papa91/arc/http/utils/RequestUtil;->end:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imei   shi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/papa91/arc/http/utils/RequestUtil;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  md5String=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   end="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->end:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p1}, Lcom/papa91/arc/http/utils/MetaUtils;->getAd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->channel_num:Ljava/lang/String;

    const-string v0, ""

    .line 11
    sput-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->mobile_phone_model:Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 14
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 15
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa91/arc/http/utils/RequestUtil;->versionAndVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->androidIdx:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannel_num()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->channel_num:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnd()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->end:Ljava/lang/String;

    return-object v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/RequestUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->ourInstance:Lcom/papa91/arc/http/utils/RequestUtil;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/http/utils/RequestUtil;

    invoke-direct {v0, p0}, Lcom/papa91/arc/http/utils/RequestUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->ourInstance:Lcom/papa91/arc/http/utils/RequestUtil;

    .line 3
    :cond_0
    :try_start_0
    sget-object p0, Lcom/papa91/arc/http/utils/RequestUtil;->androidIdx:Ljava/lang/String;

    invoke-static {p0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->androidIdx:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/papa91/arc/util/MD5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa91/arc/http/utils/RequestUtil;->end:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/papa91/arc/http/utils/RequestUtil;->ourInstance:Lcom/papa91/arc/http/utils/RequestUtil;

    return-object p0
.end method

.method public static getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->ip_address:Ljava/lang/String;

    return-object v0
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public static getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public static getTargetvVersion()I
    .locals 1

    .line 1
    sget v0, Lcom/papa91/arc/http/utils/RequestUtil;->targetvVersion:I

    return v0
.end method

.method public static getVersionAndVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/RequestUtil;->versionAndVersionName:Ljava/lang/String;

    return-object v0
.end method

.method private sendPermissonBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.wufun.get.permission"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "permission"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/papa91/arc/http/utils/RequestUtil;->imei:Ljava/lang/String;

    return-void
.end method

.method public static setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/papa91/arc/http/utils/RequestUtil;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/http/utils/RequestUtil;->ad:Ljava/lang/String;

    return-object v0
.end method
