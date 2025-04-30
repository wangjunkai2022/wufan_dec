.class public Lcom/join/mgps/dto/RequestRankingListArgs;
.super Ljava/lang/Object;
.source "RequestRankingListArgs.java"


# instance fields
.field private dimensionId:Ljava/lang/String;

.field private page:Ljava/lang/Integer;

.field private type:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDimensionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestRankingListArgs;->dimensionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestRankingListArgs;->page:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestRankingListArgs;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestRankingListArgs;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setDimensionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestRankingListArgs;->dimensionId:Ljava/lang/String;

    return-void
.end method

.method public setPage(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestRankingListArgs;->page:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestRankingListArgs;->type:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestRankingListArgs;->uid:Ljava/lang/String;

    return-void
.end method
