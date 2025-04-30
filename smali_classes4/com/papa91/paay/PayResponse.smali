.class public Lcom/papa91/paay/PayResponse;
.super Ljava/lang/Object;
.source "PayResponse.java"


# instance fields
.field private data:Lcom/papa91/paay/PayResponseData;

.field private error:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/papa91/paay/PayResponseData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/paay/PayResponse;->data:Lcom/papa91/paay/PayResponseData;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/paay/PayResponse;->error:I

    return v0
.end method

.method public setData(Lcom/papa91/paay/PayResponseData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/PayResponse;->data:Lcom/papa91/paay/PayResponseData;

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/paay/PayResponse;->error:I

    return-void
.end method
