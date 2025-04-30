.class Lcn/sharesdk/wechat/utils/h$1;
.super Ljava/lang/Thread;
.source "WXAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic c:Lcn/sharesdk/wechat/utils/h;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/utils/h;Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/h$1;->c:Lcn/sharesdk/wechat/utils/h;

    iput-object p2, p0, Lcn/sharesdk/wechat/utils/h$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/wechat/utils/h$1;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "appid"

    iget-object v3, p0, Lcn/sharesdk/wechat/utils/h$1;->c:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v3}, Lcn/sharesdk/wechat/utils/h;->d(Lcn/sharesdk/wechat/utils/h;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "secret"

    iget-object v3, p0, Lcn/sharesdk/wechat/utils/h$1;->c:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v3}, Lcn/sharesdk/wechat/utils/h;->e(Lcn/sharesdk/wechat/utils/h;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    iget-object v3, p0, Lcn/sharesdk/wechat/utils/h$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "https://api.weixin.qq.com/sns/oauth2/access_token"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v2, p0, Lcn/sharesdk/wechat/utils/h$1;->c:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v2}, Lcn/sharesdk/wechat/utils/h;->c(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object v2

    const-string v3, "/sns/oauth2/access_token"

    iget-object v4, p0, Lcn/sharesdk/wechat/utils/h$1;->c:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v4}, Lcn/sharesdk/wechat/utils/h;->b(Lcn/sharesdk/wechat/utils/h;)I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/h$1;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v1, "errcode"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/h$1;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_1

    .line 11
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 12
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/h$1;->c:Lcn/sharesdk/wechat/utils/h;

    invoke-static {v1, v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/h$1;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/h$1;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 15
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
