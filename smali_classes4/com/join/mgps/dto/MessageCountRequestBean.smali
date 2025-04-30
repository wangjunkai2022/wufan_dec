.class public Lcom/join/mgps/dto/MessageCountRequestBean;
.super Ljava/lang/Object;
.source "MessageCountRequestBean.java"


# instance fields
.field private gameId:J

.field private isGlobal:J

.field private token:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->isGlobal:J

    const-string v0, "reward"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->gameId:J

    return-wide v0
.end method

.method public getIsGlobal()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->isGlobal:J

    return-wide v0
.end method

.method public getParams()Lorg/springframework/util/LinkedMultiValueMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/util/LinkedMultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->uid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uid"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->gameId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "game_id"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->isGlobal:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_global"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->uid:J

    return-wide v0
.end method

.method public setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->gameId:J

    return-void
.end method

.method public setIsGlobal(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->isGlobal:J

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageCountRequestBean;->uid:J

    return-void
.end method
