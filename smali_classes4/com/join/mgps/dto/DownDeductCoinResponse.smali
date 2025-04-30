.class public Lcom/join/mgps/dto/DownDeductCoinResponse;
.super Ljava/lang/Object;
.source "DownDeductCoinResponse.java"


# instance fields
.field private balance:I

.field private key:Ljava/lang/String;

.field private num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->balance:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->num:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->balance:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->key:Ljava/lang/String;

    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->num:Ljava/lang/String;

    return-void
.end method
