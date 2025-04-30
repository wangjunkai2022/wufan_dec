.class public Lcn/sharesdk/wechat/utils/h;
.super Ljava/lang/Object;
.source "WXAuthHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

.field private d:Lcn/sharesdk/framework/Platform;

.field private e:I


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/h;->d:Lcn/sharesdk/framework/Platform;

    .line 3
    iput p2, p0, Lcn/sharesdk/wechat/utils/h;->e:I

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->getInstance()Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/h;->c:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/wechat/utils/h;->d:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/h;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 31
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wechat getAuthorizeToken ==>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 32
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "access_token"

    .line 33
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "refresh_token"

    .line 34
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "expires_in"

    .line 35
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "openid"

    .line 36
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object v5, p0, Lcn/sharesdk/wechat/utils/h;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5, v4, p1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/h;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 39
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/h;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/h;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAuthorizeToken ==>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 16
    new-instance v0, Lcn/sharesdk/wechat/utils/h$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/wechat/utils/h$1;-><init>(Lcn/sharesdk/wechat/utils/h;Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/utils/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/sharesdk/wechat/utils/h;->e:I

    return p0
.end method

.method static synthetic c(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/network/SSDKNetworkHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/wechat/utils/h;->c:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/wechat/utils/h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/wechat/utils/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/wechat/utils/h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/wechat/utils/h;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 1

    const-string v0, "_wxapi_sendauth_resp_url"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-interface {p2, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "://oauth?"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_2
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "code"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    if-eqz p2, :cond_3

    .line 14
    invoke-interface {p2, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    new-instance v0, Lcn/sharesdk/wechat/utils/h$2;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/wechat/utils/h$2;-><init>(Lcn/sharesdk/wechat/utils/h;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/h;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/h;->b:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 7

    .line 18
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/h;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcn/sharesdk/wechat/utils/h;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v4, Lcom/mob/tools/network/KVPair;

    iget-object v5, p0, Lcn/sharesdk/wechat/utils/h;->a:Ljava/lang/String;

    const-string v6, "appid"

    invoke-direct {v4, v6, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v4, Lcom/mob/tools/network/KVPair;

    invoke-direct {v4, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "grant_type"

    invoke-direct {v0, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "https://api.weixin.qq.com/sns/oauth2/refresh_token"

    .line 24
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/h;->c:Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    const-string v4, "/sns/oauth2/refresh_token"

    iget v5, p0, Lcn/sharesdk/wechat/utils/h;->e:I

    invoke-virtual {v1, v0, v2, v4, v5}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const-string v1, "errcode"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 27
    :cond_2
    invoke-direct {p0, v0}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 28
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v3
.end method
