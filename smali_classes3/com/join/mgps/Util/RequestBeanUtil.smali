.class public Lcom/join/mgps/Util/RequestBeanUtil;
.super Ljava/lang/Object;
.source "RequestBeanUtil.java"


# static fields
.field private static androidId:Ljava/lang/String; = null

.field private static androidIdx:Ljava/lang/String; = null

.field private static channel_num:Ljava/lang/String; = null

.field private static end:Ljava/lang/String; = null

.field private static imei:Ljava/lang/String; = null

.field private static ip_address:Ljava/lang/String; = null

.field private static mac:Ljava/lang/String; = null

.field private static mobile_phone_model:Ljava/lang/String; = null

.field private static ourInstance:Lcom/join/mgps/Util/RequestBeanUtil; = null

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
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/pref/b;->D(Z)V

    .line 8
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/RequestBeanUtil;->ad:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    .line 10
    sget-object v0, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/MApplication;->z:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imei   shi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  md5String=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   end="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    const-string v0, ""

    .line 15
    sput-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 18
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 19
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannel_num()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnd()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    return-object v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->ourInstance:Lcom/join/mgps/Util/RequestBeanUtil;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/RequestBeanUtil;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/RequestBeanUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->ourInstance:Lcom/join/mgps/Util/RequestBeanUtil;

    .line 3
    :cond_0
    :try_start_0
    sget-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;
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
    sget-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->ourInstance:Lcom/join/mgps/Util/RequestBeanUtil;

    return-object p0
.end method

.method public static getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    return-object v0
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public static getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public static getTargetvVersion()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    return v0
.end method

.method public static getVersionAndVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    return-object v0
.end method

.method private setCommentCommonFields(Lcom/join/mgps/dto/CommentRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setVersion(Ljava/lang/String;)V

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setDevice_id(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setMac(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setIp_address(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CommentRequest;->setChannel_num(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setSort(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setMobile_phone_model(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentRequest;->setUid(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/CommentRequest;->setToken(Ljava/lang/String;)V

    return-void
.end method

.method public static setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    return-void
.end method

.method public static setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/RequestBeanUtil;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public getAllMygameVersion([Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/AllAppId;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/AllAppId;-><init>([Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "loadGameVer"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getApkVersion(III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    :try_start_0
    sget v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/switfpass/pay/MainApplication;->getContext()Lcom/switfpass/pay/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v7, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v8, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v1, Lcom/join/mgps/dto/APKVersionRequestargs;

    sget v5, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    invoke-direct {v1, p1, p2, p3, v5}, Lcom/join/mgps/dto/APKVersionRequestargs;-><init>(IIII)V

    const-string p1, "chkAppVerV2"

    invoke-direct {v8, p1, v1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget v9, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    const-string v5, "ver"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;I)V

    return-object v0
.end method

.method public getApkVersion(IIII)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15

    .line 5
    :try_start_0
    sget v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/switfpass/pay/MainApplication;->getContext()Lcom/switfpass/pay/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v7, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v8, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v1, Lcom/join/mgps/dto/APKVersionRequestargs;

    sget v13, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    move-object v9, v1

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/APKVersionRequestargs;-><init>(IIIII)V

    const-string v5, "chkAppVerV2"

    invoke-direct {v8, v5, v1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget v9, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    const-string v5, "ver"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;I)V

    return-object v0
.end method

.method public getAppDataBackRequest([Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/AppDataBackupBean;

    const/4 v8, 0x1

    invoke-direct {v0, p1, v8}, Lcom/join/mgps/dto/AppDataBackupBean;-><init>([Ljava/lang/String;I)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 2
    :cond_0
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestAppDetialArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestAppDetialArgs;-><init>(Ljava/lang/String;I)V

    const-string p1, "getGameInfo"

    invoke-direct {v6, p1, v0, p3}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v3, "load"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    return-object v7
.end method

.method public getArchiveBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ArchiveBuyArgs;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ArchiveBuyArgs;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/dto/ArchiveBuyArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getArchiveColud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ArchiveColudArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/ArchiveColudArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getArchiveEvaluate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ArchiveevaluateArgs;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ArchiveevaluateArgs;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/dto/ArchiveevaluateArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ArchiveColudArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/ArchiveColudArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getArchiveshop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ArchiveshopArgs;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/ArchiveshopArgs;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/ArchiveshopArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v6
.end method

.method public getBaiduAd()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestPnArgs;-><init>()V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getBattlehall(III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestBattlehallArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestBattlehallArgs;-><init>(III)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getBootPageData(Lcom/join/mgps/dto/BootPageRequestArgs;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getCategoryRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "getGameTypeList"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getClassifyAndroidRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "loadAndroidModuleTitle"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getClassifyFCRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "loadFcModuleTitle"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getClassifyGBARequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "loadGbaModuleTitle"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getClassifyGameBean(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/ClassifyGameBean;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/ClassifyGameBean;-><init>(II)V

    const-string p1, ""

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getClassifyJGRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "loadArcadeModuleTitle"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getClassifyMdRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "loadMdModuleTitle"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getClassifyPSPRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "loadPspModuleTitle"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getClassifySFCRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "loadSfcModuleTitle"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getCollectionRequestBean(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestCollectionArgs;

    move-object v9, v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/RequestCollectionArgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "getCollectionGameList"

    move-object/from16 v9, p6

    invoke-direct {v7, v4, v0, v9}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getCommentDetailList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/RequestCommentDetailArgs;
    .locals 15

    .line 1
    new-instance v14, Lcom/join/mgps/dto/RequestCommentDetailArgs;

    sget-object v8, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    sget-object v9, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    sget-object v11, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v12, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v13, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v13}, Lcom/join/mgps/dto/RequestCommentDetailArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v14
.end method

.method public getCommentListBean(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/CommentRequestPageBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/CommentRequestPageBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/CommentRequestPageBean;-><init>(Ljava/lang/String;II)V

    const-string p1, "getCommentList"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getCommentPraiseRequestBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/join/mgps/dto/CommentPraiseRequestBean;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommentPraiseRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/CommentPraiseRequestBean;-><init>()V

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->setCommentCommonFields(Lcom/join/mgps/dto/CommentRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CommentPraiseRequestBean;->setComment_id(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CommentPraiseRequestBean;->setGame_id(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p6}, Lcom/join/mgps/dto/CommentPraiseRequestBean;->setType(I)V

    .line 6
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/CommentPraiseRequestBean;->setUser_token(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommentRequestData(Lcom/join/mgps/dto/CommonRequestMessage;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    const-string v4, "load"

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getCommuityRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "getCommunityBanner"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getCommuityZoneRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "area_id"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getCompanyGameListData(ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestCompanyNameArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestCompanyNameArgs;-><init>(ILjava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getCrackRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "getCrackModuleTitle"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 24

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v21, p12

    move/from16 v22, p13

    .line 1
    new-instance v23, Lcom/join/mgps/dto/CommentCreateArgs;

    move-object/from16 v0, v23

    sget-object v12, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    sget-object v13, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    sget-object v18, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v19, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v20, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "0"

    const-string v16, ""

    const-string v17, "0"

    invoke-direct/range {v0 .. v22}, Lcom/join/mgps/dto/CommentCreateArgs;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v23
.end method

.method public getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v0, "loadSimulatorAloneTopIndex"

    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getDeleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/DeleteCommentArgs;
    .locals 14

    .line 1
    new-instance v13, Lcom/join/mgps/dto/DeleteCommentArgs;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v9, p1

    move/from16 v10, p6

    move-object/from16 v11, p5

    move/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/join/mgps/dto/DeleteCommentArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v13
.end method

.method public getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getDetialImfMore(Ljava/lang/String;III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getDetialmoreServer(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v0, p1, v8, v9, v9}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getDownDeductCoin(Ljava/lang/String;Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p4}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 2
    :cond_0
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestAppDetialArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestAppDetialArgs;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "getGameInfo"

    invoke-direct {v6, p1, v0, p4}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v3, "load"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    return-object v7
.end method

.method public getDownloadCenterRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestDownloadCenterArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestDownloadCenterArgs;-><init>()V

    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v6
.end method

.method public getEverdayNew(ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(I)V

    const-string p1, "loadEveryDayNewGame"

    invoke-direct {v7, p1, v0, p2}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getEverdayNewGame(IILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSimulatorArgs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(II)V

    const-string p1, "loadEveryDayNewGame"

    invoke-direct {v7, p1, v0, p3}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getExclusiveTagBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "getExclusiveTag"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getExitRequest()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>()V

    const-string v4, "loadAppOut"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getFloatadRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v7, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getGRedPointNum(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;-><init>(I)V

    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v6
.end method

.method public getGameCommentListRequestBean(IIILjava/lang/String;[I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestCommitArgs;

    move-object v9, v0

    move-object/from16 v10, p5

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p4

    move/from16 v14, p3

    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/RequestCommitArgs;-><init>([IIILjava/lang/String;I)V

    const-string v4, "getGameCommentList"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getGameDetailParis(Lcom/join/mgps/dto/GamePariseRequest;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getGameDiscoverRequestBean(IILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    const-string p1, "getGameDiscover"

    invoke-direct {v7, p1, v0, p3}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getGameInformationComment(Lcom/join/mgps/dto/CollectionCommentRequest;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 2
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getGameInformationComment(Lcom/join/mgps/dto/GameInformationCommentRequest;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getGameInformationParis(Lcom/join/mgps/dto/PariseRequest;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getGameListRequestBean(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 17

    .line 2
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestClassifyArgs;

    const/4 v4, 0x7

    new-array v12, v4, [I

    fill-array-data v12, :array_0

    move-object v9, v0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, p6

    invoke-direct/range {v9 .. v16}, Lcom/join/mgps/dto/RequestClassifyArgs;-><init>(II[ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "getGameList"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public getGameListRequestBean(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 16

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGameArgs;

    const/4 v4, 0x7

    new-array v15, v4, [I

    fill-array-data v15, :array_0

    move-object v9, v0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v9 .. v15}, Lcom/join/mgps/dto/RequestGameArgs;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    const-string v4, "getGameList"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public getGameMainData(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    const/4 v8, 0x1

    invoke-direct {v0, p1, v8, v8, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getGameOLGiftRequest(III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;-><init>(III)V

    invoke-direct {v7, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getGameOLRequest(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    invoke-direct {v7, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getGameReplyMessageRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;-><init>(IILjava/lang/String;)V

    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v6
.end method

.method public getGameSortRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/GameSortRequestBean;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/GameSortRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getGameTopicRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/GameTopicRequestBean;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/GameTopicRequestBean;-><init>(I)V

    const-string p1, ""

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getGameVerByBgArgs(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/GameVerByBgRequestargs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/GameVerByBgRequestargs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/GameVerByBgRequestargs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string p2, "getGameInfo"

    invoke-direct {v6, p2, v0, p1}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v3, "load"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    return-object v7
.end method

.method public getGame_tag_game_list(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getGamedetialCommentRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GamedetialCommentRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/GamedetialCommentRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/GamedetialCommentRequest;-><init>()V

    .line 2
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setChannel_num(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setDevice_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setGame_id(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setIp_address(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setMac(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setMobile_phone_model(Ljava/lang/String;)V

    const-string p1, "1"

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setPc(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setPn(Ljava/lang/String;)V

    const-string p1, "desc"

    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setSort(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setUid(Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public getGamedetialModleFourData(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    const/4 v8, 0x1

    invoke-direct {v0, p1, v8, v8, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getGiftPackageInfoRequestBean(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/GiftPackageInfoArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/GiftPackageInfoArgs;-><init>(II)V

    const-string p1, ""

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/GiftPackageOperationArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/GiftPackageOperationArgs;-><init>(IILjava/lang/String;)V

    const-string p1, ""

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getGiftPackageRequestBean(IIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/GiftPackageArgs;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/dto/GiftPackageArgs;-><init>(IIILjava/lang/String;)V

    const-string p1, ""

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getHandShankAdList()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;

    const/4 v8, 0x1

    const-string v9, "test"

    invoke-direct {v0, v8, v8, v9}, Lcom/join/mgps/dto/RequestHandShankAdListArgs;-><init>(IILjava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getHaveGameListArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/HaveGameListArgs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/HaveGameListArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/HaveGameListArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string p2, "getHaveGameListArgs"

    invoke-direct {v6, p2, v0, p1}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v3, "load"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    return-object v7
.end method

.method public getHomeGameCarefullyRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;-><init>(IILjava/lang/String;)V

    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string p2, "game_carefully"

    invoke-direct {v7, p2, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getHomePopupAd(ZI)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;-><init>(ZI)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getHotGame(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(I)V

    const-string p1, "popularList"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getIgnoreMessageRequest(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;-><init>(IILjava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getInformationComment(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 13

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/InformationRequestBean;

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Integer;

    const/4 v10, 0x1

    .line 2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-direct {v0, p1, p2, v9}, Lcom/join/mgps/dto/InformationRequestBean;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    const-string p1, "getInformationCommentList"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getInformationIndexRequestBean(ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "getInformationIndex"

    invoke-direct {v7, p1, v0, p2}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getLargeModuleRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "getLargeModuleTitle"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getLodingImage()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>()V

    const-string v4, "loadAppStart"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getLookOther(ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(I)V

    const-string p1, "loadRecentlyGameOther"

    invoke-direct {v7, p1, v0, p2}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getModifyCommentBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)Lcom/join/mgps/dto/CommentModifyArgs;
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v16, p9

    .line 1
    new-instance v17, Lcom/join/mgps/dto/CommentModifyArgs;

    move-object/from16 v0, v17

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/join/mgps/dto/CommentModifyArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FIII)V

    return-object v17
.end method

.method public getModuleListRequestBean(III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestModuleArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestModuleArgs;-><init>(III)V

    const-string p1, "getModuleList"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getMustplay(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RecomRequestArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RecomRequestArgs;-><init>(I)V

    const-string p1, "load"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getMyGameTopAd(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v8, p1}, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;-><init>(III)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getNowWufun(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    const/16 v4, 0xa

    invoke-direct {v0, p1, v4}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    const-string p1, "getGameDiscover"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getOnLineNumber([Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/AllAppId;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/AllAppId;-><init>([Ljava/lang/String;)V

    const-string p1, "getGameUv"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getPAPAHomeMain(IIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;

    move-object v9, v0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/RecomRequestAdIdArgs;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getPabiIntentBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    const-string v4, "load"

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getPraiceMessPra(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;-><init>(IILjava/lang/String;)V

    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v6
.end method

.method public getPraiseComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/RequestCommentpraiseArgs;
    .locals 15

    .line 1
    new-instance v14, Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    sget-object v9, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v10, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v11, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/join/mgps/dto/RequestCommentpraiseArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v14
.end method

.method public getPreloadingADRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v6
.end method

.method public getRankingV3(Lcom/join/mgps/dto/RequestTypePn;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getRecomRequestBannerAndTableBean()Lcom/join/mgps/dto/RecomRequestBannerAndTableBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/RecomRequestBannerAndTableBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v5, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "loadTopIndex"

    invoke-direct {v5, v3, v0}, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const-string v3, "load"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/RecomRequestBannerAndTableBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;)V

    return-object v6
.end method

.method public getRecomRequestBean(I)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RecomRequestArgs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RecomRequestArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RecomRequestArgs;-><init>(I)V

    const-string p1, "loadSimulatorAloneRecList"

    invoke-direct {v6, p1, v0}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "1.0"

    const-string v3, "load"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    return-object v7
.end method

.method public getRecomRequestFirstData()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RecomRequestArgs;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lcom/join/mgps/dto/RecomRequestArgs;-><init>(I)V

    const-string v4, "loadSimulatorAloneTopIndex"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getRecomeAppwifi(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getReplyCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 24

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v21, p15

    .line 1
    new-instance v23, Lcom/join/mgps/dto/CommentCreateArgs;

    move-object/from16 v0, v23

    sget-object v12, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    sget-object v13, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    sget-object v18, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v19, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v20, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v22, 0x3

    invoke-direct/range {v0 .. v22}, Lcom/join/mgps/dto/CommentCreateArgs;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v23
.end method

.method public getRequestArenaRoomListArgs(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestArenaRoomListArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestArenaRoomListArgs;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getRequestCommentAllList(IILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RequestCommentAllListArgs;
    .locals 13

    .line 1
    new-instance v12, Lcom/join/mgps/dto/RequestCommentAllListArgs;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    sget-object v7, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    sget-object v8, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    sget-object v9, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v10, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v11, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    move-object v0, v12

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v11}, Lcom/join/mgps/dto/RequestCommentAllListArgs;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method public getRequestGameFactoryList(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;-><init>(II)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getRequestMsgState(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestMsgStateArge;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestMsgStateArge;-><init>(ILjava/lang/String;I)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getRequestPnAndPc(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getRequestPnAndPcByAreaAndRank(IIII)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGoogleRankArgs;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/join/mgps/dto/RequestGoogleRankArgs;-><init>(IIII)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getSNKGameCheckRequestBean(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSNKGameArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSNKGameArgs;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v6
.end method

.method public getScreenShortListRequest(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestScreenshortListArgs;

    invoke-direct {v0, p3, p1, p2}, Lcom/join/mgps/dto/RequestScreenshortListArgs;-><init>(ILjava/lang/String;I)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getSearchAutoRequestBean(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestKeywordArgs;

    move-object v9, v0

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/RequestKeywordArgs;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v4, p1

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "search"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getSearchIntegratedRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "0"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method public getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15

    .line 2
    new-instance v6, Lcom/join/mgps/dto/RequestKeywordArgs;

    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/RequestKeywordArgs;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v0, p6

    .line 3
    invoke-virtual {v6, v0}, Lcom/join/mgps/dto/RequestKeywordArgs;->setGame_id(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v8, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v9, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v10, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v12, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v13, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v14, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v1, ""

    invoke-direct {v14, v1, v6}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "search"

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v0
.end method

.method public getSearchPageRequestBean(ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSearchPageArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestSearchPageArgs;-><init>(ILjava/lang/String;)V

    const-string p1, "search"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "search"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getSearchPageRequestBean(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 2
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSearchPageArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestSearchPageArgs;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "search"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "search"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getSearchRecommendBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance p1, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v0, "loadRandomGame"

    const/4 v4, 0x0

    invoke-direct {v7, v0, v4}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object p1
.end method

.method public getSearchRecommendRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "recommendgame"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getShowViewDatas()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v0, "getStrategyInfo"

    const/4 v4, 0x0

    invoke-direct {v7, v0, v4}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getSilenceSwitch(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSiliencebean;

    invoke-direct {v0, p2, p3, p1}, Lcom/join/mgps/dto/RequestSiliencebean;-><init>(IILjava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/SimulatorAreaRequest;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/SimulatorAreaRequest;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    const/4 p2, 0x0

    invoke-direct {v6, p1, v0, p2}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v3, "load"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    return-object v7
.end method

.method public getSimulatorListRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(I)V

    const-string p1, "loadSimulatorList"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getSimulatorRequest(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    invoke-direct {v0, p2, p1, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getSimulatorRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "loadSimulatorTopIndex"

    invoke-direct {v7, v4, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getStandAloneOne()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v6
.end method

.method public getStandAloneTwo(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    const-string p1, "StandAlone"

    invoke-direct {v5, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v6
.end method

.method public getStats(Lcom/join/mgps/dto/RequestStatsArgs;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v0, "commitStatistics"

    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "add"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getTagGameListData(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    const-string v8, "123456"

    const/4 v9, 0x0

    invoke-direct {v0, v8, p1, p2, v9}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommentRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/CommentRequest;-><init>()V

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->setCommentCommonFields(Lcom/join/mgps/dto/CommentRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserCenterViewConfigs(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestUserCenterArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestUserCenterArgs;-><init>(ILjava/lang/String;I)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getWarListRequestBean(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestWarArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestWarArgs;-><init>(II)V

    const-string p1, "loadWarModuleList"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getgameInformation(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestInfoIdArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestInfoIdArgs;-><init>(Ljava/lang/String;)V

    const-string p1, "getInformation"

    invoke-direct {v7, p1, v0, p2}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public loadWarIndexRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestWarIndexArgs;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestWarIndexArgs;-><init>(I)V

    const-string p1, "loadWarIndex"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public personalCenter()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestPnArgs;-><init>()V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public postGameComment(Lcom/join/mgps/dto/CommitRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v0, "postGameComment"

    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "add"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public postGameCommentRelpyRequestBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 20

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v15, Lcom/join/mgps/dto/RequestCommitReplyArgs;

    move-object v7, v15

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v19, v5

    move-object v5, v15

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move/from16 v18, p11

    invoke-direct/range {v7 .. v18}, Lcom/join/mgps/dto/RequestCommitReplyArgs;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "postGameComment"

    invoke-direct {v6, v7, v5}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "load"

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v4

    move-object/from16 p7, v19

    move-object/from16 p8, v6

    invoke-direct/range {p1 .. p8}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v0
.end method

.method public postGameCommentRequestBean(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 17

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v15, Lcom/join/mgps/dto/RequestGameCommentArgs;

    move-object v7, v15

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v16, v5

    move-object v5, v15

    move-object/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lcom/join/mgps/dto/RequestGameCommentArgs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v7, "postpraise"

    invoke-direct {v6, v7, v5}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "load"

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v4

    move-object/from16 p7, v16

    move-object/from16 p8, v6

    invoke-direct/range {p1 .. p8}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v0
.end method

.method public postPraisedRequestBean(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPraiseArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestPraiseArgs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "postpraise"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "load"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public selfComment(ILjava/lang/String;III)Lcom/join/mgps/dto/CommentSelfRequestBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommentSelfRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/CommentSelfRequestBean;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->setCommentCommonFields(Lcom/join/mgps/dto/CommentRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CommentRequest;->setUid(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/CommentSelfRequestBean;->setGame_id(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/CommentSelfRequestBean;->setPn(I)V

    .line 6
    invoke-virtual {v0, p4}, Lcom/join/mgps/dto/CommentSelfRequestBean;->setPc(I)V

    .line 7
    invoke-virtual {v0, p5}, Lcom/join/mgps/dto/CommentRequest;->setVuid(I)V

    return-object v0
.end method

.method public sendAllAppinPhone(Lcom/join/mgps/dto/SendAppinfoMainbean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v0, "collectAppInfo"

    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "add"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public sendInformationComment(Lcom/join/mgps/dto/InformationSendRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v0, "postInformationComment"

    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "add"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public sendMessageComment(Lcom/join/mgps/dto/CommentSendMessageRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v0, "commitComment"

    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "add"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public sendRegisterId(Lcom/join/mgps/dto/RegisterRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v0, "regPushDevice"

    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "add"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public vipMessage(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v8, p1}, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;-><init>(III)V

    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method
