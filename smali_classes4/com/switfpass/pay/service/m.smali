.class final Lcom/switfpass/pay/service/m;
.super Lcom/switfpass/pay/thread/b;


# instance fields
.field private final synthetic b:Lcom/switfpass/pay/bean/RequestMsg;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/switfpass/pay/thread/h;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    iput-object p2, p0, Lcom/switfpass/pay/service/m;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/switfpass/pay/service/m;->d:Lcom/switfpass/pay/thread/h;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/b;-><init>()V

    return-void
.end method

.method private d()Lcom/switfpass/pay/bean/OrderBena;
    .locals 8

    const-string v0, ""

    sget-object v2, Lcom/switfpass/pay/MainApplication;->b:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v1

    const-string v4, "token_id"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->c:Ljava/lang/String;

    const-string v4, "trade_type"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "token_id="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v4}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&trade_type="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/switfpass/pay/service/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&device_info=AND_SDK"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/switfpass/pay/service/d;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "createNativeOrder-token_id->"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v4}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",param-->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/switfpass/pay/thread/d;->c()Lcom/switfpass/pay/thread/d;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/switfpass/pay/thread/d;->d(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/switfpass/pay/thread/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/switfpass/pay/thread/f;->c()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/switfpass/pay/bean/OrderBena;

    invoke-direct {v2}, Lcom/switfpass/pay/bean/OrderBena;-><init>()V

    iget-object v3, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v4, "code_url"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/switfpass/pay/bean/OrderBena;->e0(Ljava/lang/String;)V

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

    iget-object v1, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v3, "body"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/switfpass/pay/bean/OrderBena;->F(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/switfpass/pay/bean/OrderBena;->W(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/switfpass/pay/bean/OrderBena;->b0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/switfpass/pay/bean/OrderBena;->a0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/switfpass/pay/bean/OrderBena;->I(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/switfpass/pay/bean/OrderBena;->G(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/switfpass/pay/bean/OrderBena;->E(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/switfpass/pay/bean/OrderBena;->R(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/RequestMsg;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/service/m;->b:Lcom/switfpass/pay/bean/RequestMsg;

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/RequestMsg;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/switfpass/pay/bean/OrderBena;->U(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/switfpass/pay/service/m;->d:Lcom/switfpass/pay/thread/h;

    iget-object v1, v1, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget v0, v1, Lcom/switfpass/pay/thread/f;->c:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_6

    const/4 v1, -0x3

    if-eq v0, v1, :cond_5

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/switfpass/pay/service/m;->d:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u4f60\u7f51\u7edc\u8fde\u63a5"

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/switfpass/pay/service/m;->d:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/switfpass/pay/service/m;->d:Lcom/switfpass/pay/thread/h;

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

    iget-object v0, p0, Lcom/switfpass/pay/service/m;->d:Lcom/switfpass/pay/thread/h;

    const-string v1, "\u751f\u6210\u4e8c\u7ef4\u7801\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/switfpass/pay/service/m;->d()Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    return-object v0
.end method
