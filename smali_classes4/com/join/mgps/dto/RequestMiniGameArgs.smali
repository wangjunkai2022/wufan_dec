.class public Lcom/join/mgps/dto/RequestMiniGameArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestMiniGameArgs.java"


# instance fields
.field private page:I

.field private pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->pageSize:I

    return v0
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->page:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->pageSize:I

    return-void
.end method
