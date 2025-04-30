.class public Lcom/join/mgps/dto/PapayResult;
.super Ljava/lang/Object;
.source "PapayResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PAYCANCLE:I = 0x3

.field public static final PAYFAILED:I = 0x2

.field public static final PAYSUCCESS:I = 0x1

.field public static final PAYWHAITE:I = 0x4


# instance fields
.field private gameid:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private payOrderId:Ljava/lang/String;

.field private payPabi:Ljava/lang/String;

.field private payProduct:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResult;->gameid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPayOrderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResult;->payOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPabi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResult;->payPabi:Ljava/lang/String;

    return-object v0
.end method

.method public getPayProduct()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResult;->payProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayResult;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PapayResult;->status:I

    return v0
.end method

.method public setGameid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResult;->gameid:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setPayOrderId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResult;->payOrderId:Ljava/lang/String;

    return-void
.end method

.method public setPayPabi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResult;->payPabi:Ljava/lang/String;

    return-void
.end method

.method public setPayProduct(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResult;->payProduct:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayResult;->payType:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PapayResult;->status:I

    return-void
.end method
