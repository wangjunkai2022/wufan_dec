.class public Lcom/join/mgps/dto/GameShareStatisticsInfo;
.super Ljava/lang/Object;
.source "GameShareStatisticsInfo.java"


# instance fields
.field avg_score:Ljava/lang/String;

.field counts:Ljava/lang/String;

.field cover:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvg_score()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameShareStatisticsInfo;->avg_score:Ljava/lang/String;

    return-object v0
.end method

.method public getCounts()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameShareStatisticsInfo;->counts:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameShareStatisticsInfo;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public setAvg_score(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameShareStatisticsInfo;->avg_score:Ljava/lang/String;

    return-void
.end method

.method public setCounts(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameShareStatisticsInfo;->counts:Ljava/lang/String;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameShareStatisticsInfo;->cover:Ljava/lang/String;

    return-void
.end method
