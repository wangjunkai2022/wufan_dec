.class Lcom/join/mgps/activity/PayNowActivity$c;
.super Ljava/lang/Object;
.source "PayNowActivity.java"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayNowActivity;->Y0(Lcom/join/mgps/dto/PayCenterOrderRequest;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/PayNowActivity;->G0(Lcom/join/mgps/activity/PayNowActivity;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/PayNowActivity;->G0(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 2
    check-cast p1, Lcom/join/mgps/dto/CommentResponse;

    const-string v0, "alipaymobilesign"

    const/4 v1, 0x2

    const-string v2, ""

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PaygameResponse;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaygameResponse;->getOrder()Lcom/join/mgps/dto/PayGamepayData;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getCallbackURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_callback_url(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setPay_rmb(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getSdkAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_key(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_order_id(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getSdkPayURL()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/rpc/g;->r:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getPayMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayNowActivity;->b1(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    goto/16 :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getWebPaymentURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->startForResult(I)Lorg/androidannotations/api/builder/f;

    goto/16 :goto_0

    .line 16
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {v3}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 18
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 22
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {v3}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 24
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_0

    .line 28
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {v3}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v3

    const-string v4, "\u83b7\u53d6\u6e38\u620f\u6570\u636e\u5931\u8d25"

    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 29
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-static {v3}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 30
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 31
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    :goto_0
    return-void
.end method
