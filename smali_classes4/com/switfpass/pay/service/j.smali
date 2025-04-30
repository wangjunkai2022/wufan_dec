.class final Lcom/switfpass/pay/service/j;
.super Lcom/switfpass/pay/thread/b;


# instance fields
.field private final synthetic b:Lcom/switfpass/pay/bean/RequestMsg;

.field private final synthetic c:Lcom/switfpass/pay/thread/h;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/service/j;->b:Lcom/switfpass/pay/bean/RequestMsg;

    iput-object p2, p0, Lcom/switfpass/pay/service/j;->c:Lcom/switfpass/pay/thread/h;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/b;-><init>()V

    return-void
.end method

.method private d()Lcom/switfpass/pay/bean/OrderBena;
    .locals 7

    sget-object v1, Lcom/switfpass/pay/MainApplication;->e:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/switfpass/pay/service/j;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v0

    const-string v3, "token_id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/switfpass/pay/service/j;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/RequestMsg;->k()Ljava/lang/String;

    move-result-object v0

    const-string v3, "out_trade_no"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "trade_type"

    const-string v3, "unified.micropay.reverse"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "token_id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/switfpass/pay/service/j;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&trade_type=unified.micropay.reverse&out_trade_no="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/switfpass/pay/service/j;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/RequestMsg;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&device_info=AND_SDK"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unifiedReverse params-->"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/switfpass/pay/thread/d;->c()Lcom/switfpass/pay/thread/d;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/switfpass/pay/thread/d;->d(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/switfpass/pay/thread/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/thread/f;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/switfpass/pay/bean/OrderBena;

    invoke-direct {v1}, Lcom/switfpass/pay/bean/OrderBena;-><init>()V

    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unifiedReverse result data-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/switfpass/pay/service/j;->c:Lcom/switfpass/pay/thread/h;

    iget-object v0, v0, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/switfpass/pay/thread/f;->c:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_4

    const/4 v1, -0x3

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/switfpass/pay/service/j;->c:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u4f60\u7f51\u7edc\u8fde\u63a5"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/switfpass/pay/service/j;->c:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/switfpass/pay/service/j;->c:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u8bf7\u6c42\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v6

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unifiedReverse method error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v6
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/switfpass/pay/service/j;->d()Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    return-object v0
.end method
