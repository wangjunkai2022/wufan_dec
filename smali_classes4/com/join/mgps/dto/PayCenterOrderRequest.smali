.class public Lcom/join/mgps/dto/PayCenterOrderRequest;
.super Ljava/lang/Object;
.source "PayCenterOrderRequest.java"


# static fields
.field public static final ACTION_ALI_PAY:Ljava/lang/String; = "alipaymobilesign"

.field public static final ACTION_CREDIT_PAY:Ljava/lang/String; = "upmpmobilekongjian1"

.field public static final ACTION_PABI:Ljava/lang/String; = "papawallet"

.field public static final ACTION_UNION_PAY:Ljava/lang/String; = "upmpmobilekongjian"

.field public static final ACTION_WECHAT:Ljava/lang/String; = "weixinmobilenew"

.field public static final ACTION_WECHAT_OFFICIAL:Ljava/lang/String; = "wechatofficialpapa"

.field public static final ACTION_WECHAT_SWIFT:Ljava/lang/String; = "swiftpasspapa"

.field public static final ACTION_ZIWEI_WECHAT:Ljava/lang/String; = "ziweixingh5"

.field public static final PAY_TYPE_ALIPAY:Ljava/lang/String; = "1"

.field public static final PAY_TYPE_COUPON:Ljava/lang/String; = "coupon"

.field public static final PAY_TYPE_COUPON_RED:Ljava/lang/String; = "coupon_red_envelope"

.field public static final PAY_TYPE_COUPON_WALLET:Ljava/lang/String; = "coupon_wallet"

.field public static final PAY_TYPE_RECHARGE:Ljava/lang/String; = "2"

.field public static final PAY_TYPE_RED_ENVELOPE:Ljava/lang/String; = "red_envelope"

.field public static final PAY_TYPE_WALLET:Ljava/lang/String; = "wallet"


# instance fields
.field private action:Ljava/lang/String;

.field private app_callback_url:Ljava/lang/String;

.field private app_extra1:Ljava/lang/String;

.field private app_extra2:Ljava/lang/String;

.field private app_key:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_order_id:Ljava/lang/String;

.field private app_user_name:Ljava/lang/String;

.field private card_id:Ljava/lang/String;

.field private card_pass:Ljava/lang/String;

.field private device_type:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private kingnet_order_id:Ljava/lang/String;

.field private openuid:I

.field private package_name:Ljava/lang/String;

.field private pay_rmb:Ljava/lang/String;

.field private pay_type:Ljava/lang/String;

.field private product_id:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private resource_id:Ljava/lang/String;

.field private sid:I

.field private sign:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private wallet_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    .line 14
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    const-string v1, "1264139"

    .line 18
    iput-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    const-string v1, "android"

    .line 21
    iput-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_callback_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_extra1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_extra2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_order_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_user_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getArgs()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    const-string v2, "app_extra1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    const-string v2, "app_extra2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    const-string v2, "app_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    const-string v2, "app_order_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    const-string v2, "app_user_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    const-string v2, "card_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    const-string v2, "card_pass"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    const-string v2, "kingnet_order_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "openuid"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    const-string v3, "pay_rmb"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    const-string v3, "pay_type"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    const-string v3, "product_name"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    const-string v3, "app_callback_url"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sid"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->uid:Ljava/lang/String;

    const-string v3, "uid"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    const-string v3, "product_id"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    const-string v3, "resource_id"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "token"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "wallet_type"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getArgsURLEncoder()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "utf8"

    .line 1
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    :try_start_0
    const-string v3, "app_extra1"

    .line 2
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_extra2"

    .line 3
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_key"

    .line 4
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_name"

    .line 5
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_order_id"

    .line 6
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_user_name"

    .line 7
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "card_id"

    .line 8
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "card_pass"

    .line 9
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "imei"

    .line 10
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kingnet_order_id"

    .line 11
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "openuid"

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pay_rmb"

    .line 13
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pay_type"

    .line 14
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "product_name"

    .line 15
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_callback_url"

    .line 16
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sid"

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid"

    .line 18
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->uid:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    .line 19
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resource_id"

    .line 20
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wallet_type"

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_type"

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "package_name"

    .line 24
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method public getCard_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_pass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getKingnet_order_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenuid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    return v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_rmb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    return-object v0
.end method

.method public getResource_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sid:I

    return v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getWallet_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->action:Ljava/lang/String;

    return-void
.end method

.method public setApp_callback_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    return-void
.end method

.method public setApp_extra1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    return-void
.end method

.method public setApp_extra2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    return-void
.end method

.method public setApp_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    return-void
.end method

.method public setApp_order_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    return-void
.end method

.method public setApp_user_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    return-void
.end method

.method public setCard_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    return-void
.end method

.method public setCard_pass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    return-void
.end method

.method public setDevice_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    return-void
.end method

.method public setKingnet_order_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    return-void
.end method

.method public setOpenuid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPay_rmb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    return-void
.end method

.method public setPay_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    return-void
.end method

.method public setProduct_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    return-void
.end method

.method public setProduct_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    return-void
.end method

.method public setResource_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    return-void
.end method

.method public setSid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sid:I

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sign:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->uid:Ljava/lang/String;

    return-void
.end method

.method public setWallet_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    return-void
.end method
