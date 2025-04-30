.class public Lcn/sharesdk/tencent/qq/utils/a;
.super Lcn/sharesdk/framework/e;
.source "QQHelper.java"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:Lcn/sharesdk/tencent/qq/utils/a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "get_user_info"

    const-string v1, "get_simple_userinfo"

    const-string v2, "get_user_profile"

    const-string v3, "get_app_friends"

    const-string v4, "add_share"

    const-string v5, "list_album"

    const-string v6, "upload_pic"

    const-string v7, "add_album"

    const-string v8, "set_user_face"

    const-string v9, "get_vip_info"

    const-string v10, "get_vip_rich_info"

    const-string v11, "get_intimate_friends_weibo"

    const-string v12, "match_nick_tips_weibo"

    const-string v13, "add_t"

    const-string v14, "add_pic_t"

    .line 1
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/tencent/qq/utils/a;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 2
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/utils/a;->b()Z

    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/utils/a;
    .locals 1

    .line 3
    sget-object v0, Lcn/sharesdk/tencent/qq/utils/a;->c:Lcn/sharesdk/tencent/qq/utils/a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcn/sharesdk/tencent/qq/utils/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qq/utils/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/tencent/qq/utils/a;->c:Lcn/sharesdk/tencent/qq/utils/a;

    .line 5
    :cond_0
    sget-object p0, Lcn/sharesdk/tencent/qq/utils/a;->c:Lcn/sharesdk/tencent/qq/utils/a;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/utils/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/utils/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/utils/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/utils/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 6

    const/16 p1, 0x9

    .line 51
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_2

    const-string p6, "/t/add_t"

    goto :goto_2

    :cond_2
    const-string p6, "/t/add_pic_t"

    :goto_2
    move-object v4, p6

    .line 52
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://graph.qq.com"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance p6, Lcom/mob/tools/network/KVPair;

    const-string v0, "oauth_consumer_key"

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/utils/a;->d:Ljava/lang/String;

    invoke-direct {p6, v0, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance p6, Lcom/mob/tools/network/KVPair;

    const-string v0, "access_token"

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/utils/a;->h:Ljava/lang/String;

    invoke-direct {p6, v0, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance p6, Lcom/mob/tools/network/KVPair;

    const-string v0, "openid"

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/utils/a;->f:Ljava/lang/String;

    invoke-direct {p6, v0, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance p6, Lcom/mob/tools/network/KVPair;

    const-string v0, "format"

    const-string v3, "json"

    invoke-direct {p6, v0, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance p6, Lcom/mob/tools/network/KVPair;

    const-string v0, "content"

    invoke-direct {p6, v0, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    .line 59
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 60
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p5}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 61
    :cond_3
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string p2, "pic"

    invoke-direct {v3, p2, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->getInstance()Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 63
    :cond_4
    invoke-static {}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->getInstance()Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object p2

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result p3

    invoke-virtual {p2, v1, v2, v4, p3}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_6

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_6

    if-eqz p7, :cond_6

    .line 65
    new-instance p3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p3, p2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    const-string p4, "ret"

    .line 66
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eqz p4, :cond_5

    .line 67
    iget-object p3, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    new-instance p4, Ljava/lang/Exception;

    invoke-direct {p4, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, p3, p1, p4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_4

    .line 68
    :cond_5
    iget-object p2, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {p7, p2, p1, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    if-eqz p7, :cond_6

    .line 69
    iget-object p3, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {p7, p3, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    :goto_4
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qq/utils/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qq/utils/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/utils/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qq/utils/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 7

    .line 3
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/utils/a;->e:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcn/sharesdk/tencent/qq/utils/a;->b:[Ljava/lang/String;

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    if-lez v4, :cond_1

    const/16 v6, 0x2c

    .line 6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qq/utils/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qq/utils/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 9
    new-instance v0, Lcn/sharesdk/tencent/qq/utils/QQHelper$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qq/utils/QQHelper$2;-><init>(Lcn/sharesdk/tencent/qq/utils/a;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 11
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 12
    new-instance v1, Lcn/sharesdk/tencent/qq/utils/QQHelper$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/tencent/qq/utils/QQHelper$3;-><init>(Lcn/sharesdk/tencent/qq/utils/a;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    new-instance v0, Lcn/sharesdk/framework/utils/h;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/h;-><init>()V

    .line 14
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/utils/a;->i:Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p2, p1}, Lcn/sharesdk/framework/utils/h;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    .line 17
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x9

    .line 18
    invoke-interface {p3, p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .locals 0

    .line 8
    new-instance p2, Lcn/sharesdk/tencent/qq/utils/a$1;

    invoke-direct {p2, p0, p1}, Lcn/sharesdk/tencent/qq/utils/a$1;-><init>(Lcn/sharesdk/tencent/qq/utils/a;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, p2}, Lcn/sharesdk/framework/e;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/utils/a;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "ShareSDK"

    if-eqz p8, :cond_0

    .line 19
    invoke-direct/range {p0 .. p7}, Lcn/sharesdk/tencent/qq/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 20
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, " QQ QQHelper addShare weiboShare "

    aput-object v4, v2, v3

    invoke-virtual {v1, v5, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/utils/a;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 22
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, " QQ QQHelper addShare isQQInstalled "

    aput-object v8, v7, v3

    invoke-virtual {v6, v5, v7}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 23
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 24
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "/data/"

    .line 26
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 27
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "images"

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 28
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v1, v6}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " QQ QQHelper imagePath "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v1, v5, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v1, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 32
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, " QQ QQHelper imagePath is null"

    aput-object v7, v4, v3

    invoke-virtual {v6, v5, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 33
    :cond_2
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "title"

    move-object v5, p1

    .line 34
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "titleUrl"

    move-object v5, p2

    .line 35
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "summary"

    move-object v5, p3

    .line 36
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "imagePath"

    .line 37
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "imageUrl"

    move-object/from16 v4, p5

    .line 38
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "musicUrl"

    move-object/from16 v4, p6

    .line 39
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v1, v0, Lcn/sharesdk/tencent/qq/utils/a;->d:Ljava/lang/String;

    const-string v4, "appId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hidden"

    move/from16 v4, p9

    .line 41
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "mini_program_appid"

    move-object/from16 v4, p10

    .line 42
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mini_program_path"

    move-object/from16 v4, p11

    .line 43
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mini_program_type"

    move-object/from16 v4, p12

    .line 44
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "share_type"

    move/from16 v4, p13

    .line 45
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    new-instance v1, Lcn/sharesdk/tencent/qq/ShareActivity;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qq/ShareActivity;-><init>()V

    .line 47
    iget-object v4, v0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v4, v2}, Lcn/sharesdk/tencent/qq/ShareActivity;->setPlatformActionListener(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 48
    iget-object v2, v0, Lcn/sharesdk/tencent/qq/utils/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/tencent/qq/ShareActivity;->setAppId(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 50
    iget-object v1, v0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "QQClientNotExistException"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v3, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/utils/a;->e:[Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/utils/a;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.mobileqq"

    .line 3
    invoke-static {v1, v0}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 5
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcn/sharesdk/tencent/qq/utils/a;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "com.tencent.tim"

    .line 6
    invoke-static {v2, v0}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 7
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 8
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcn/sharesdk/tencent/qq/utils/a;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    move-object v2, v3

    goto :goto_1

    :catchall_1
    :try_start_2
    const-string v2, "com.tencent.minihd.qq"

    .line 9
    invoke-static {v2, v0}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 10
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 11
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcn/sharesdk/tencent/qq/utils/a;->i:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    :try_start_3
    const-string v2, "com.tencent.mobileqqi"

    .line 12
    invoke-static {v2, v0}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 13
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 14
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcn/sharesdk/tencent/qq/utils/a;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_3
    :try_start_4
    const-string v2, "com.tencent.qqlite"

    .line 15
    invoke-static {v2, v0}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 16
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 17
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcn/sharesdk/tencent/qq/utils/a;->i:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    :catchall_4
    const/4 v2, 0x0

    .line 18
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 19
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "access_token"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance p1, Lcom/mob/tools/network/KVPair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "http.agent"

    .line 6
    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ArzenAndroidSDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->getInstance()Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v6

    const-string v1, "https://graph.qq.com/oauth2.0/me"

    const/4 v4, 0x0

    const-string v5, "/oauth2.0/me"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "callback"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const-string/jumbo v0, "{"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    const-string/jumbo v0, "}"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 16
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/utils/a;->h:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/utils/a;->h:Ljava/lang/String;

    const-string v1, "access_token"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/utils/a;->d:Ljava/lang/String;

    const-string v1, "oauth_consumer_key"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/utils/a;->f:Ljava/lang/String;

    const-string v1, "openid"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance p1, Lcom/mob/tools/network/KVPair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "http.agent"

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ArzenAndroidSDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-direct {p1, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->getInstance()Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v6

    const-string v1, "https://graph.qq.com/user/get_simple_userinfo"

    const/4 v4, 0x0

    const-string v5, "/user/get_simple_userinfo"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 13
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v0

    const-string v1, "/oauth2.0/authorize"

    invoke-static {v1, v0}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 2
    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/utils/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/utils/a;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "utf-8"

    .line 4
    invoke-static {v1, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/utils/a;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/utils/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&redirect_uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&display=mobile&scope="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)Lcn/sharesdk/framework/authorize/b;
    .locals 1

    .line 1
    new-instance v0, Lcn/sharesdk/tencent/qq/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qq/a;-><init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    const-string v0, "auth://tauth.qq.com/"

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)Lcn/sharesdk/framework/authorize/c;
    .locals 3

    .line 1
    new-instance v0, Lcn/sharesdk/tencent/qq/b;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qq/b;-><init>(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)V

    const/16 p1, 0x1618

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/c;->a(I)V

    .line 3
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/utils/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/utils/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/utils/a;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcn/sharesdk/tencent/qq/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
