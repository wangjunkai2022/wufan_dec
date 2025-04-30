.class Lcom/join/mgps/activity/PayNowActivity$d;
.super Ljava/lang/Object;
.source "PayNowActivity.java"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayNowActivity;->b1(Lcom/join/mgps/dto/PayCenterOrderRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PayCenterOrderRequest;

.field final synthetic b:Lcom/join/mgps/activity/PayNowActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PayCenterOrderRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/PayNowActivity$d;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/PayNowActivity;->G0(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 2
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/PayNowActivity;->H0(Lcom/join/mgps/activity/PayNowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$d;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string v0, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "timestamp"

    const-string v2, "noncestr"

    const-string v3, "prepayid"

    const-string v4, "partnerid"

    const-string v5, "appid"

    const-string v6, "orderId"

    .line 1
    iget-object v7, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v7}, Lcom/join/mgps/activity/PayNowActivity;->G0(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 2
    move-object/from16 v7, p1

    check-cast v7, Lcom/join/mgps/dto/PayCenterOrderResponse;

    .line 3
    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "upmpmobilekongjian"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "extra_data"

    const-string v10, "f_id"

    const-string v11, "ret"

    const-string v12, "alipaymobilesign"

    const-string v13, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    const-string v14, "msg"

    if-nez v8, :cond_12

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v15, "upmpmobilekongjian1"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "alipay_sign"

    .line 9
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v3, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v3, v2}, Lcom/join/mgps/activity/PayNowActivity;->I0(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 12
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->J0(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 13
    :cond_1
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v3, 0x2

    .line 14
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 15
    invoke-virtual {v2, v12}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 17
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 19
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 21
    invoke-virtual {v0, v12}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v13}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 23
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto/16 :goto_3

    .line 24
    :cond_2
    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "papawallet"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 25
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "\u4f59\u989d\u4e0d\u8db3"

    if-nez v2, :cond_3

    .line 27
    :try_start_2
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/activity/PayNowActivity;->I0(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/16 v4, 0x2711

    if-ne v2, v4, :cond_4

    const-string v3, "\u9a8c\u8bc1\u5931\u8d25"

    :goto_0
    const/4 v12, 0x2

    goto :goto_1

    :cond_4
    const/16 v4, 0x2712

    if-ne v2, v4, :cond_5

    const-string v3, "token\u9a8c\u8bc1\u5931\u8d25"

    goto :goto_0

    :cond_5
    const/16 v4, 0x2713

    if-ne v2, v4, :cond_6

    .line 29
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x2714

    if-ne v2, v3, :cond_7

    const-string v3, "\u670d\u52a1\u5668\u7e41\u5fd9"

    goto :goto_0

    :cond_7
    const/16 v3, 0x2716

    if-ne v2, v3, :cond_8

    const-string v3, "\u4ee3\u91d1\u5238\u9519\u8bef"

    goto :goto_0

    :cond_8
    const/16 v3, 0x2717

    if-ne v2, v3, :cond_9

    const-string v3, "\u4e0d\u652f\u6301\u7ea2\u5305\u652f\u4ed8"

    goto :goto_0

    .line 30
    :cond_9
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 31
    :goto_1
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 32
    invoke-virtual {v0, v12}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 33
    invoke-virtual {v0, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 35
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 37
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v2, 0x2

    .line 38
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 39
    invoke-virtual {v0, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v13}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 41
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto/16 :goto_3

    .line 42
    :cond_a
    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ziweixingh5"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto/16 :goto_3

    .line 43
    :cond_b
    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "swiftpasspapa"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "token_id"

    const-string v11, "data"

    const-string v15, "code"

    const-string v12, "order_id"

    if-eqz v8, :cond_e

    .line 44
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    .line 46
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v3, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/activity/PayNowActivity;->I0(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 50
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/join/mgps/activity/PayNowActivity;->K0(Lcom/join/mgps/activity/PayNowActivity;I)I

    .line 51
    new-instance v0, Lcom/switfpass/pay/bean/RequestMsg;

    invoke-direct {v0}, Lcom/switfpass/pay/bean/RequestMsg;-><init>()V

    .line 52
    invoke-virtual {v0, v2}, Lcom/switfpass/pay/bean/RequestMsg;->N(Ljava/lang/String;)V

    .line 53
    sget-object v2, Lcom/switfpass/pay/MainApplication;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/switfpass/pay/bean/RequestMsg;->P(Ljava/lang/String;)V

    .line 54
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/switfpass/pay/activity/PayPlugin;->k(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V

    goto/16 :goto_3

    .line 55
    :cond_c
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v3, 0x2

    .line 56
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 57
    invoke-virtual {v2, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 59
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto/16 :goto_3

    .line 60
    :cond_d
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v3, 0x2

    .line 61
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 62
    invoke-virtual {v2, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 64
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v2, 0x2

    .line 67
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 68
    invoke-virtual {v0, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v13}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 70
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto/16 :goto_3

    .line 71
    :cond_e
    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "weixinmobilenew"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 72
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    .line 74
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setKingnet_order_id(Ljava/lang/String;)V

    .line 76
    new-instance v2, Lcom/join/mgps/dto/PaymentInfo;

    invoke-direct {v2}, Lcom/join/mgps/dto/PaymentInfo;-><init>()V

    .line 77
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaymentInfo;->setTokenID(Ljava/lang/String;)V

    const-string v3, "agent_id"

    .line 78
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaymentInfo;->setAgentId(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaymentInfo;->setBillNo(Ljava/lang/String;)V

    .line 80
    iget-object v3, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/join/mgps/activity/PayNowActivity;->I0(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    .line 82
    iput v3, v0, Landroid/os/Message;->what:I

    .line 83
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/PayNowActivity;->L0(Lcom/join/mgps/activity/PayNowActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 85
    :cond_f
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v3, 0x2

    .line 86
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 87
    invoke-virtual {v2, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 89
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    .line 90
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v2, 0x2

    .line 92
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 93
    invoke-virtual {v0, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v13}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 95
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto/16 :goto_3

    .line 96
    :cond_10
    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v10, "wechatofficialpapa"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 97
    :try_start_5
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_11

    .line 99
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 100
    iget-object v8, v1, Lcom/join/mgps/activity/PayNowActivity$d;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setKingnet_order_id(Ljava/lang/String;)V

    .line 101
    iget-object v8, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/join/mgps/activity/PayNowActivity;->I0(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 103
    new-instance v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    invoke-direct {v6}, Lcom/tencent/mm/opensdk/modelpay/PayReq;-><init>()V

    .line 104
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 105
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 106
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 107
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 108
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    const-string v8, "package"

    .line 109
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 110
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 111
    iget-object v10, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    invoke-interface {v8, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v5, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v4, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "package"

    .line 114
    iget-object v4, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v3, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sign"

    .line 117
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 118
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/PayNowActivity;->F:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, v6}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    goto/16 :goto_3

    .line 119
    :cond_11
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v2, 0x2

    .line 120
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 121
    invoke-virtual {v0, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 123
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v2, 0x2

    .line 126
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 127
    invoke-virtual {v0, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v13}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 129
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_3

    .line 130
    :cond_12
    :goto_2
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_13

    .line 133
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "tn"

    .line 134
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v3, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/join/mgps/activity/PayNowActivity;->I0(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    goto :goto_3

    .line 137
    :cond_13
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v3, 0x2

    .line 138
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 139
    invoke-virtual {v2, v12}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 141
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    .line 142
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 143
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v2, 0x2

    .line 144
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 145
    invoke-virtual {v0, v12}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v13}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 147
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 148
    :cond_14
    :goto_3
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/PayNowActivity;->G0(Lcom/join/mgps/activity/PayNowActivity;)V

    return-void
.end method
