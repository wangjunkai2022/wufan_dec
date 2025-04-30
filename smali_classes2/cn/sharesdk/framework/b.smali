.class public Lcn/sharesdk/framework/b;
.super Ljava/lang/Object;
.source "CheckAppKeyRequestUrl.java"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static volatile b:Lcn/sharesdk/framework/b;


# instance fields
.field private c:Lcom/mob/tools/utils/DeviceHelper;

.field private d:Lcom/mob/tools/network/NetworkHelper;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b;->c:Lcom/mob/tools/utils/DeviceHelper;

    .line 3
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b;->d:Lcom/mob/tools/network/NetworkHelper;

    const-string v0, "api-share.mob.com"

    .line 4
    invoke-static {v0}, Lcom/mob/MobSDK;->checkRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcn/sharesdk/framework/b;
    .locals 2

    .line 1
    const-class v0, Lcn/sharesdk/framework/b;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/b;->b:Lcn/sharesdk/framework/b;

    if-nez v1, :cond_1

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-object v1, Lcn/sharesdk/framework/b;->b:Lcn/sharesdk/framework/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcn/sharesdk/framework/b;

    invoke-direct {v1}, Lcn/sharesdk/framework/b;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/b;->b:Lcn/sharesdk/framework/b;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    sget-object v0, Lcn/sharesdk/framework/b;->b:Lcn/sharesdk/framework/b;

    return-object v0

    :catchall_1
    move-exception v1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/conf5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 8

    const-string v0, "error"

    .line 1
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "appkey"

    invoke-direct {v1, v2, v7}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "device"

    iget-object v4, p0, Lcn/sharesdk/framework/b;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "plat"

    iget-object v4, p0, Lcn/sharesdk/framework/b;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "apppkg"

    iget-object v4, p0, Lcn/sharesdk/framework/b;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "appver"

    iget-object v4, p0, Lcn/sharesdk/framework/b;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "sdkver"

    sget v4, Lcn/sharesdk/framework/ShareSDK;->SDK_VERSION_CODE:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "networktype"

    iget-object v4, p0, Lcn/sharesdk/framework/b;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "User-Identity"

    invoke-static {}, Lcn/sharesdk/framework/network/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v6}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v1, 0x2710

    .line 14
    iput v1, v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 15
    iput v1, v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 16
    iget-object v1, p0, Lcn/sharesdk/framework/b;->d:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcn/sharesdk/framework/b;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v1

    .line 17
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'appkey\' is illegal"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcn/sharesdk/framework/a;->a:Z

    goto :goto_0

    .line 22
    :cond_1
    sput-object v7, Lcn/sharesdk/framework/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 23
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateServerConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method
