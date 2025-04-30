.class public Lcn/sharesdk/sina/weibo/a;
.super Lcn/sharesdk/framework/e;
.source "Weibo.java"


# static fields
.field private static b:Lcn/sharesdk/sina/weibo/a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;-><init>(Lcn/sharesdk/framework/Platform;)V

    const-string p1, "follow_app_official_microblog"

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->g:[Ljava/lang/String;

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->getInstance()Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method public static declared-synchronized a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/a;
    .locals 2

    const-class v0, Lcn/sharesdk/sina/weibo/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/sharesdk/sina/weibo/a;->b:Lcn/sharesdk/sina/weibo/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/sharesdk/sina/weibo/a;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v1, Lcn/sharesdk/sina/weibo/a;->b:Lcn/sharesdk/sina/weibo/a;

    .line 5
    :cond_0
    sget-object p0, Lcn/sharesdk/sina/weibo/a;->b:Lcn/sharesdk/sina/weibo/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 11
    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/sharesdk/sina/weibo/a;->a([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ""

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    sub-int v1, p4, p3

    if-gtz v1, :cond_2

    return-object v0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    aget-object v1, p1, p3

    if-eqz v1, :cond_3

    .line 14
    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_4

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    aget-object v1, p1, p3

    if-eqz v1, :cond_3

    .line 17
    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->g:[Ljava/lang/String;

    const-string v1, ","

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/sina/weibo/a;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, p1}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 48
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const-string v0, "SinaWeibo SDK Web showWebAuthActivity "

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/sina/weibo/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic j(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method


# virtual methods
.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_0
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count"

    invoke-direct {p3, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "page"

    invoke-direct {p1, p3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result p2

    const-string p3, "https://api.weibo.com/2/statuses/user_timeline.json"

    const-string v1, "/2/statuses/user_timeline.json"

    invoke-virtual {p1, p3, v0, v1, p2}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 93
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 94
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 95
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    new-instance v2, Lcom/mob/tools/network/KVPair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v2, "source"

    invoke-direct {p3, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p3, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 99
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p4, :cond_4

    .line 100
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_4

    .line 101
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object p4, v0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 102
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-direct {v1, v2, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p4, v1

    goto :goto_1

    :cond_3
    move-object v4, p4

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    :try_start_0
    const-string p3, "GET"

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 104
    new-instance p2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {p2, p1, v3, v0, v0}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p3, "POST"

    .line 105
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 106
    new-instance v1, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 107
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_6
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_7

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    .line 109
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 11

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 50
    iget-object p1, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    const/16 v0, 0x9

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Please set params"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 57
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 58
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    .line 59
    :try_start_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "http"

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "/data/"

    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 67
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "images"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 71
    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 72
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 73
    :cond_4
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/InnerShareParams;->setImageArray([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 75
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 76
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 78
    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 80
    :cond_7
    new-instance v6, Lcn/sharesdk/sina/weibo/a$1;

    invoke-direct {v6, p0, p2, p1}, Lcn/sharesdk/sina/weibo/a$1;-><init>(Lcn/sharesdk/sina/weibo/a;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 81
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/a;->g:[Ljava/lang/String;

    const-string v0, ","

    invoke-direct {p0, p2, v0}, Lcn/sharesdk/sina/weibo/a;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    new-instance p2, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->e:Ljava/lang/String;

    move-object v1, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcn/sharesdk/sina/weibo/SinaWeiboShareOfficial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 83
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 19
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void

    .line 20
    :cond_0
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/a;->g:[Ljava/lang/String;

    const-string v0, ","

    invoke-direct {p0, p2, v0}, Lcn/sharesdk/sina/weibo/a;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    new-instance v0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2, p1}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 22
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const-string p2, "SinaWeibo SDK Client doAuthorize "

    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/a;->d:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 9
    array-length v0, p1

    if-lez v0, :cond_0

    .line 10
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->g:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 9

    const-string v0, "remind_in"

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v2, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v4, "client_id"

    invoke-direct {v2, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v2, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->d:Ljava/lang/String;

    const-string v4, "client_secret"

    invoke-direct {v2, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v2, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->e:Ljava/lang/String;

    const-string v4, "redirect_uri"

    invoke-direct {v2, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "grant_type"

    const-string v4, "refresh_token"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v2, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "https://api.weibo.com/oauth2/access_token"

    const/4 v3, 0x0

    .line 30
    :try_start_0
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    const-string v6, "/oauth2/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v7

    invoke-virtual {v5, v2, v1, v6, v7}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "error"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string v2, "error_code"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 34
    :cond_2
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "uid"

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "expires_in"

    .line 36
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "access_token"

    .line 37
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v7, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 42
    iget-object v2, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    iget-object v5, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 45
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    return v3
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Ljava/lang/String;

    const-string v3, "client_secret"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->e:Ljava/lang/String;

    const-string v3, "redirect_uri"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v1

    const-string v2, "https://api.weibo.com/oauth2/access_token"

    const-string v3, "/oauth2/access_token"

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v0

    invoke-static {v3, v0}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    return-object p1
.end method

.method public b(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 33
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 34
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 35
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_1
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :goto_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count"

    invoke-direct {p3, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "cursor"

    invoke-direct {p1, p3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result p2

    const-string p3, "https://api.weibo.com/2/friendships/friends.json"

    const-string v1, "/2/friendships/friends.json"

    invoke-virtual {p1, p3, v0, v1, p2}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 40
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3

    .line 18
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    iget-object v1, p0, Lcn/sharesdk/framework/e;->a:Lcn/sharesdk/framework/Platform;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_weibo_upload_content"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 23
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 24
    :cond_2
    :goto_1
    new-instance v0, Lcn/sharesdk/sina/weibo/a$2;

    invoke-direct {v0, p0, p2, p1}, Lcn/sharesdk/sina/weibo/a$2;-><init>(Lcn/sharesdk/sina/weibo/a;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 25
    new-instance p2, Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    invoke-direct {p2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;-><init>()V

    .line 26
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, p1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->setShareParams(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 28
    invoke-virtual {p2, v0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->setListener(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 29
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public b()Z
    .locals 4

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sina.weibo"

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v3}, Lcn/sharesdk/framework/utils/a;->a(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sina.weibog3"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {v0, v3}, Lcn/sharesdk/framework/utils/a;->a(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public c(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 7
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count"

    invoke-direct {p3, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "page"

    invoke-direct {p1, p3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result p2

    const-string p3, "https://api.weibo.com/2/friendships/friends/bilateral.json"

    const-string v1, "/2/friendships/friends/bilateral.json"

    invoke-virtual {p1, p3, v0, v1, p2}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 15
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 16
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_1
    new-instance p3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "count"

    invoke-direct {p3, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "cursor"

    invoke-direct {p1, p3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result p2

    const-string p3, "https://api.weibo.com/2/friendships/followers.json"

    const-string v1, "/2/friendships/followers.json"

    invoke-virtual {p1, p3, v0, v1, p2}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v1

    const-string v2, "https://api.weibo.com/2/users/show.json"

    const-string v3, "/2/users/show.json"

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Z
    .locals 4

    .line 22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_weibo_sdkVersion"

    const-string v3, "0031405000"

    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "_weibo_appPackage"

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v3, "_weibo_appKey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "_weibo_flag"

    const v3, 0x20130329

    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_weibo_sign"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 31
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->f:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "screen_name"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    invoke-virtual {p0}, Lcn/sharesdk/framework/e;->c()I

    move-result v1

    const-string v2, "https://api.weibo.com/2/friendships/create.json"

    const-string v3, "/2/friendships/create.json"

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)Lcn/sharesdk/framework/authorize/b;
    .locals 1

    .line 1
    new-instance v0, Lcn/sharesdk/sina/weibo/utils/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/sina/weibo/utils/a;-><init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://api.weibo.com/oauth2/default.html"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)Lcn/sharesdk/framework/authorize/c;
    .locals 3

    .line 1
    new-instance v0, Lcn/sharesdk/sina/weibo/utils/b;

    invoke-direct {v0, p1}, Lcn/sharesdk/sina/weibo/utils/b;-><init>(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)V

    const p1, 0x80cd

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/c;->a(I)V

    .line 3
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->g:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcn/sharesdk/sina/weibo/utils/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
