.class public Lcom/join/mgps/dto/RequestTypePn;
.super Ljava/lang/Object;
.source "RequestTypePn.java"


# instance fields
.field private pn:I

.field private type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/RequestTypePn;->type:I

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/RequestTypePn;->pn:I

    return-void
.end method


# virtual methods
.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestTypePn;->pn:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestTypePn;->type:I

    return v0
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestTypePn;->pn:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestTypePn;->type:I

    return-void
.end method
