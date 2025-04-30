.class public Lcom/papa91/arc/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/http/HttpUtils$OnResult;
    }
.end annotation


# static fields
.field private static gson:Lcom/google/gson/Gson;

.field private static initSuccess:Z

.field private static mHeaders:Lcom/papa91/arc/bean/RequestHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/papa91/arc/http/HttpUtils;->lambda$postSync$0(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    return-void
.end method

.method public static checkRealName(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/ReqRealNameArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/PopwindowBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGoldenFinger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 3
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v9/realName/auth/check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/papa91/arc/bean/PopwindowBean;

    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    move-result-object p0

    return-object p0
.end method

.method private static ensureGsonCreated()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/papa91/arc/http/HttpUtils;->initSuccess:Z

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 3
    invoke-static {p0}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/arc/http/utils/PrefUtil;->getDNSHttpUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa91/arc/http/utils/PrefUtil;->getRequestHeaders()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    const-class v4, Lcom/papa91/arc/http/http/DNSDataResult;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/http/http/DNSDataResult;

    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/http/http/DNSDataResult;->updateRpcConstant()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {p0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object v1, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    const-class v4, Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v1, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/arc/bean/RequestHeaders;

    sput-object p0, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 10
    :goto_2
    sput-boolean v2, Lcom/papa91/arc/http/HttpUtils;->initSuccess:Z

    :cond_3
    return-void
.end method

.method private static synthetic lambda$postSync$0(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance p0, Lorg/apache/http/entity/StringEntity;

    invoke-direct {p0, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    const-string p1, "Content-type"

    const-string v2, "application/json"

    .line 4
    invoke-virtual {v1, p1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 7
    :goto_0
    :try_start_1
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 9
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    const-string p1, "utf-8"

    .line 10
    invoke-static {p0, p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 11
    invoke-interface {p2, p0}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onSuccess(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, ""

    .line 12
    invoke-interface {p2, p0}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onFailure(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_1

    const-string p0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 14
    invoke-interface {p2, p0}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onFailure(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method static parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/papa91/arc/bean/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 2
    const-class v0, Lcom/papa91/arc/bean/Response;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/papa91/arc/http/HttpUtils;->type(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/arc/bean/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/papa91/arc/bean/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "wf-single"

    .line 1
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object p0, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    :try_start_1
    const-string v3, "wufankey"

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/bean/RequestHeaders;->getWufankey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wf-d"

    .line 5
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wf-a"

    .line 6
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wf-ad"

    .line 7
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_ad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wf-m"

    .line 8
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wf-i"

    .line 9
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wf-pm"

    .line 10
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_pm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "android-ver"

    .line 11
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getAndroid_ver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p0, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {p0}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_single()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wf-o"

    .line 13
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arm64"

    .line 14
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getArm64()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p0, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {p0}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_single()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_0
    :goto_0
    new-instance p0, Lorg/apache/http/entity/StringEntity;

    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-type"

    const-string v0, "application/json;charset=utf-8"

    .line 18
    invoke-virtual {v2, p1, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept"

    const-string v0, "application/json"

    .line 19
    invoke-virtual {v2, p1, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    .line 22
    :try_start_3
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 24
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    const-string v0, "utf-8"

    .line 25
    invoke-static {p1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1, p2}, Lcom/papa91/arc/http/HttpUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    return-object p0

    :catch_2
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public static postSync(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/papa91/arc/http/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa91/arc/http/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static submitRealName(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/PopwindowBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGoldenFinger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 3
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v9/realName/auth/submit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/papa91/arc/bean/PopwindowBean;

    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    move-result-object p0

    return-object p0
.end method

.method static varargs type(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/http/HttpUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/papa91/arc/http/HttpUtils$1;-><init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method
