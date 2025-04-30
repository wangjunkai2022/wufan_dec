.class final Lcom/switfpass/pay/service/k;
.super Lcom/switfpass/pay/thread/b;


# instance fields
.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/switfpass/pay/thread/h;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/service/k;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/switfpass/pay/service/k;->c:Lcom/switfpass/pay/thread/h;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/b;-><init>()V

    return-void
.end method

.method private d()Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/switfpass/pay/MainApplication;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/spay/queryByMchId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/switfpass/pay/service/k;->b:Ljava/lang/String;

    const-string v1, "mchId"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/switfpass/pay/thread/d;->c()Lcom/switfpass/pay/thread/d;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/switfpass/pay/thread/d;->d(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/switfpass/pay/thread/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/switfpass/pay/thread/f;->c()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xc8

    const-string v4, "message"

    if-ne v2, v3, :cond_1

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    iget-object v1, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    return-object v2

    :cond_0
    new-instance v4, Lcom/switfpass/pay/bean/MchBean;

    invoke-direct {v4}, Lcom/switfpass/pay/bean/MchBean;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "tradeType"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/switfpass/pay/bean/MchBean;->w(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/switfpass/pay/service/k;->c:Lcom/switfpass/pay/thread/h;

    iget-object v1, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget v1, v1, Lcom/switfpass/pay/thread/f;->c:I

    const/4 v2, -0x4

    if-eq v1, v2, :cond_5

    const/4 v2, -0x3

    if-eq v1, v2, :cond_4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/switfpass/pay/service/k;->c:Lcom/switfpass/pay/thread/h;

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u4f60\u7f51\u7edc\u8fde\u63a5"

    :goto_1
    invoke-virtual {v1, v2}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/switfpass/pay/service/k;->c:Lcom/switfpass/pay/thread/h;

    const-string v2, "\u8bf7\u6c42\u670d\u52a1\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/switfpass/pay/service/k;->c:Lcom/switfpass/pay/thread/h;

    const-string v2, "\u8bf7\u6c42\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createNativeOrder method error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/switfpass/pay/service/k;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
