.class public Lcom/papa/sim/statistic/UpLoadGameConfig;
.super Ljava/lang/Object;
.source "UpLoadGameConfig.java"


# instance fields
.field private game_explain:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_platform_type:I

.field private game_type:I

.field private token:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_explain:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_platform_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_platform_type:I

    return v0
.end method

.method public getGame_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_type:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->uid:I

    return v0
.end method

.method public setGame_explain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_explain:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_platform_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_platform_type:I

    return-void
.end method

.method public setGame_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_type:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->uid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_platform_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/UpLoadGameConfig;->game_explain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
