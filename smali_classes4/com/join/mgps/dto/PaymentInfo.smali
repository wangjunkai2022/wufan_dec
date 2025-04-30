.class public Lcom/join/mgps/dto/PaymentInfo;
.super Ljava/lang/Object;
.source "PaymentInfo.java"


# instance fields
.field private agentId:Ljava/lang/String;

.field private billInfo:Ljava/lang/String;

.field private billNo:Ljava/lang/String;

.field private hasError:Z

.field private message:Ljava/lang/String;

.field private tokenID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static getPayResultName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "\u652f\u4ed8\u6210\u529f"

    goto :goto_0

    :cond_1
    const-string p0, "\u5904\u7406\u4e2d..."

    goto :goto_0

    :cond_2
    const-string p0, "\u652f\u4ed8\u5931\u8d25"

    goto :goto_0

    :cond_3
    const-string p0, "\u652f\u4ed8\u672a\u5b8c\u6210"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getAgentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->agentId:Ljava/lang/String;

    return-object v0
.end method

.method public getBillInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getJunnetBillNo()Ljava/lang/String;
    .locals 1

    const-string v0, "jnet_bill_no"

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPayAmount()Ljava/lang/String;
    .locals 1

    const-string v0, "pay_amt"

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayResult()I
    .locals 1

    const-string v0, "result"

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPayResultName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/PaymentInfo;->getPayResult()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/dto/PaymentInfo;->getPayResultName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayType()I
    .locals 1

    const-string v0, "pay_type"

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPayTypeName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/PaymentInfo;->getPayType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const-string v0, "\u3010\u672a\u77e5\u652f\u4ed8\u65b9\u5f0f\u3011"

    return-object v0

    :pswitch_0
    const-string v0, "QQ\u5e01\u5361"

    return-object v0

    :pswitch_1
    const-string v0, "\u591a\u591a\u5361\uff08\u539f\u5965\u6bd4\u5efa\u8bbe\u5361\uff09"

    return-object v0

    :pswitch_2
    const-string v0, "\u7eb5\u6e38\u4e00\u5361\u901a"

    return-object v0

    :pswitch_3
    const-string v0, "\u6781\u5149\u4e00\u5361\u901a"

    return-object v0

    :pswitch_4
    const-string v0, "\u7f51\u9f9991\u5e01\u5361"

    return-object v0

    :pswitch_5
    const-string v0, "\u68a6\u5de5\u5382\u7f51\u7edc"

    return-object v0

    :pswitch_6
    const-string v0, "\u9e92\u9e9f\u4e00\u5361\u901a"

    return-object v0

    :pswitch_7
    const-string v0, "\u4e2d\u5e7f\u4e00\u5361\u901a"

    return-object v0

    :pswitch_8
    const-string v0, "\u76db\u79d1\u4e00\u5361\u901a"

    return-object v0

    :pswitch_9
    const-string v0, "\u4e50\u90fd\u4e00\u5361\u901a"

    return-object v0

    :pswitch_a
    const-string v0, "\u4e45\u6e38\u4e00\u5361\u901a"

    return-object v0

    :pswitch_b
    const-string v0, "\u641c\u72d0\u4e00\u5361\u901a"

    return-object v0

    :pswitch_c
    const-string v0, "\u91d1\u5c71\u4e00\u5361\u901a"

    return-object v0

    :pswitch_d
    const-string v0, "\u5b8c\u7f8e\u4e00\u5361\u901a"

    return-object v0

    :pswitch_e
    const-string v0, "\u5f81\u9014\u4e00\u5361\u901a"

    return-object v0

    :pswitch_f
    const-string v0, "\u7f51\u6613\u4e00\u5361\u901a"

    return-object v0

    :pswitch_10
    const-string v0, "\u76db\u5927\u4e00\u5361\u901a"

    return-object v0

    :pswitch_11
    const-string v0, "\u7b2c\u4e09\u65b9\u5361\u652f\u4ed8"

    return-object v0

    :pswitch_12
    const-string v0, "\u94f6\u884cWAP\u7f51\u94f6\u652f\u4ed8"

    return-object v0

    :pswitch_13
    const-string v0, "\u94f6\u884c\u5feb\u6377\u652f\u4ed8"

    return-object v0

    :pswitch_14
    const-string v0, "\u94f6\u884c\u65e0\u5361\u652f\u4ed8"

    return-object v0

    :pswitch_15
    const-string v0, "\u7535\u4fe1\u5361"

    return-object v0

    :pswitch_16
    const-string v0, "\u8054\u901a\u5361"

    return-object v0

    :pswitch_17
    const-string v0, "\u795e\u5dde\u884c"

    return-object v0

    :cond_0
    const-string v0, "\u5fae\u4fe1\u652f\u4ed8"

    return-object v0

    :cond_1
    const-string v0, "\u4fe1\u7528\u5361\u65e0\u5361\u652f\u4ed8"

    return-object v0

    :cond_2
    const-string v0, "\u76db\u5927\u5361\u652f\u4ed8"

    return-object v0

    :cond_3
    const-string v0, "\u9a8f\u5361\u652f\u4ed8"

    return-object v0

    :cond_4
    const-string v0, "\u4f59\u989d\u652f\u4ed8"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTokenID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->tokenID:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaymentInfo;->hasError:Z

    return v0
.end method

.method public isHasError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaymentInfo;->hasError:Z

    return v0
.end method

.method public setAgentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->agentId:Ljava/lang/String;

    return-void
.end method

.method public setBillInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    const-string p1, "agent_bill_id"

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->billNo:Ljava/lang/String;

    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->billNo:Ljava/lang/String;

    return-void
.end method

.method public setHasError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PaymentInfo;->hasError:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->message:Ljava/lang/String;

    return-void
.end method

.method public setTokenID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->tokenID:Ljava/lang/String;

    return-void
.end method
