.class public Lcom/join/mgps/dto/GameWorldHeroRankBean;
.super Ljava/lang/Object;
.source "GameWorldHeroRankBean.java"


# instance fields
.field private avatar_src:Ljava/lang/String;

.field private fighting:I

.field private rank:I

.field private winning_count:I

.field private winning_rate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getFighting()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->fighting:I

    return v0
.end method

.method public getRank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->rank:I

    return v0
.end method

.method public getWinning_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->winning_count:I

    return v0
.end method

.method public getWinning_rate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->winning_rate:I

    return v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setFighting(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->fighting:I

    return-void
.end method

.method public setRank(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->rank:I

    return-void
.end method

.method public setWinning_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->winning_count:I

    return-void
.end method

.method public setWinning_rate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->winning_rate:I

    return-void
.end method
