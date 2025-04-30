.class public Lcom/join/mgps/dto/RequestAppDetialArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestAppDetialArgs.java"


# instance fields
.field private deviceid:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->game_id:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->uid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->game_id:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->token:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->uid:I

    return-void
.end method


# virtual methods
.method public getArgs()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->game_id:Ljava/lang/String;

    const-string v2, "game_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->deviceid:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->uid:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->uid:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestAppDetialArgs;->version:Ljava/lang/String;

    return-void
.end method
