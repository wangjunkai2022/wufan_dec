.class public Lcom/join/mgps/dto/UserPurchaseResponse;
.super Ljava/lang/Object;
.source "UserPurchaseResponse.java"


# instance fields
.field private data:Lcom/join/mgps/dto/UserPurchaseList;

.field private error:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/join/mgps/dto/UserPurchaseList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserPurchaseResponse;->data:Lcom/join/mgps/dto/UserPurchaseList;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/UserPurchaseResponse;->error:I

    return v0
.end method

.method public setData(Lcom/join/mgps/dto/UserPurchaseList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserPurchaseResponse;->data:Lcom/join/mgps/dto/UserPurchaseList;

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/UserPurchaseResponse;->error:I

    return-void
.end method
