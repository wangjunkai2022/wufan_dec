.class public Lcom/join/mgps/dto/PapayWalletResultMain;
.super Ljava/lang/Object;
.source "PapayWalletResultMain.java"


# instance fields
.field private data:Lcom/join/mgps/dto/PapayResultData;

.field private error:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/join/mgps/dto/PapayResultData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapayWalletResultMain;->data:Lcom/join/mgps/dto/PapayResultData;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PapayWalletResultMain;->error:I

    return v0
.end method

.method public setData(Lcom/join/mgps/dto/PapayResultData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapayWalletResultMain;->data:Lcom/join/mgps/dto/PapayResultData;

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PapayWalletResultMain;->error:I

    return-void
.end method
