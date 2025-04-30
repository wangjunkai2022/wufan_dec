.class public Lcom/join/mgps/dto/RequestCompanyIdPnArgs;
.super Ljava/lang/Object;
.source "RequestCompanyIdPnArgs.java"


# instance fields
.field private company_id:I

.field private pn:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;->pn:I

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;->company_id:I

    return-void
.end method


# virtual methods
.method public getCompany_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;->company_id:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;->pn:I

    return v0
.end method

.method public setCompany_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;->company_id:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;->pn:I

    return-void
.end method
