.class final Lcom/switfpass/pay/service/h;
.super Lcom/switfpass/pay/thread/b;


# instance fields
.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/switfpass/pay/thread/h;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/service/h;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/switfpass/pay/service/h;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/switfpass/pay/service/h;->d:Lcom/switfpass/pay/thread/h;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/b;-><init>()V

    return-void
.end method

.method private d()Lcom/switfpass/pay/bean/OrderBena;
    .locals 9

    const-string v0, ""

    sget-object v2, Lcom/switfpass/pay/MainApplication;->f:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/switfpass/pay/service/h;->b:Ljava/lang/String;

    const-string v4, "mchId"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/switfpass/pay/thread/d;->c()Lcom/switfpass/pay/thread/d;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "uuid="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/switfpass/pay/service/h;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/switfpass/pay/thread/d;->d(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/switfpass/pay/thread/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/switfpass/pay/thread/f;->c()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/switfpass/pay/bean/OrderBena;

    invoke-direct {v2}, Lcom/switfpass/pay/bean/OrderBena;-><init>()V

    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result data-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "money"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->M(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "out_trade_no"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->P(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "status"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->Y(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "trade_type"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->W(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "trade_name"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->b0(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "trade_time"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->c0(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "transaction_id"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->d0(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "body"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->F(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "order_no"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->K(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "mch_name"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->J(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v3, "sub_openid"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/switfpass/pay/bean/OrderBena;->O(Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget v0, v1, Lcom/switfpass/pay/thread/f;->c:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_3

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/service/h;->d:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u4f60\u7f51\u7edc\u8fde\u63a5"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/switfpass/pay/service/h;->d:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/switfpass/pay/service/h;->d:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u8bf7\u6c42\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v7

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createNativeOrder method error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v7
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/switfpass/pay/service/h;->d()Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    return-object v0
.end method
