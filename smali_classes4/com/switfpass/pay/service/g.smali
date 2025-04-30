.class final Lcom/switfpass/pay/service/g;
.super Lcom/switfpass/pay/thread/b;


# instance fields
.field private final synthetic b:Lcom/switfpass/pay/bean/RequestMsg;

.field private final synthetic c:Lcom/switfpass/pay/thread/h;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/service/g;->b:Lcom/switfpass/pay/bean/RequestMsg;

    iput-object p2, p0, Lcom/switfpass/pay/service/g;->c:Lcom/switfpass/pay/thread/h;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/b;-><init>()V

    return-void
.end method

.method private d()Lcom/switfpass/pay/bean/OrderBena;
    .locals 9

    const-string v0, "status"

    const-string v1, ""

    sget-object v3, Lcom/switfpass/pay/MainApplication;->e:Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "token_id="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/switfpass/pay/service/g;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v5}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&trade_type=unified.trade.query&out_trade_no="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/switfpass/pay/service/g;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v5}, Lcom/switfpass/pay/bean/RequestMsg;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unfiedQueryOrder params-->"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lcom/switfpass/pay/thread/d;->c()Lcom/switfpass/pay/thread/d;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/switfpass/pay/thread/d;->d(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/switfpass/pay/thread/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/switfpass/pay/thread/f;->c()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unfiedQueryOrder result data-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "message"

    if-nez v3, :cond_0

    :try_start_1
    new-instance v3, Lcom/switfpass/pay/bean/OrderBena;

    invoke-direct {v3}, Lcom/switfpass/pay/bean/OrderBena;-><init>()V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "money"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->M(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "out_trade_no"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->P(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "trade_state"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->Y(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "trade_type"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->W(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "trade_name"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->b0(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "trade_time"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->c0(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "transaction_id"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->d0(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "body"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->F(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "order_no"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->K(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "mch_name"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->J(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v6, "sub_openid"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/switfpass/pay/bean/OrderBena;->O(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/switfpass/pay/bean/OrderBena;->L(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/switfpass/pay/bean/OrderBena;->V(Ljava/lang/String;)V

    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/service/g;->c:Lcom/switfpass/pay/thread/h;

    iget-object v1, v2, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget v0, v2, Lcom/switfpass/pay/thread/f;->c:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_4

    const/4 v1, -0x3

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/switfpass/pay/service/g;->c:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u4f60\u7f51\u7edc\u8fde\u63a5"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/switfpass/pay/service/g;->c:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/switfpass/pay/service/g;->c:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u8bf7\u6c42\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_1
    return-object v8

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createNativeOrder method error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/switfpass/pay/service/g;->c:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u67e5\u8be2\u786e\u8ba4\u7ed3\u679c\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    return-object v8
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/switfpass/pay/service/g;->d()Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    return-object v0
.end method
