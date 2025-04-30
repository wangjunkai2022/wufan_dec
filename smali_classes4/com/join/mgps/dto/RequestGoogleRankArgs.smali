.class public Lcom/join/mgps/dto/RequestGoogleRankArgs;
.super Lcom/join/mgps/dto/RequestPnAndPcArgs;
.source "RequestGoogleRankArgs.java"


# instance fields
.field private area:I

.field private ranking_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->area:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->ranking_type:I

    .line 5
    invoke-virtual {p0, p4}, Lcom/join/mgps/dto/RequestPnAndPcArgs;->setPc(I)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/join/mgps/dto/RequestPnAndPcArgs;->setPn(I)V

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->area:I

    return v0
.end method

.method public getRanking_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->ranking_type:I

    return v0
.end method

.method public setArea(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->area:I

    return-void
.end method

.method public setRanking_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->ranking_type:I

    return-void
.end method
