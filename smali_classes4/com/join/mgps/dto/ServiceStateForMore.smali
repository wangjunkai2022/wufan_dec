.class public Lcom/join/mgps/dto/ServiceStateForMore;
.super Ljava/lang/Object;
.source "ServiceStateForMore.java"


# instance fields
.field private game_id:Ljava/lang/String;

.field private id:I

.field private server_info:Ljava/lang/String;

.field private server_time:J

.field private type:I

.field private type_txt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->id:I

    return v0
.end method

.method public getServer_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->server_info:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_time()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->server_time:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->type:I

    return v0
.end method

.method public getType_txt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->type_txt:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->id:I

    return-void
.end method

.method public setServer_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->server_info:Ljava/lang/String;

    return-void
.end method

.method public setServer_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->server_time:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->type:I

    return-void
.end method

.method public setType_txt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->type_txt:Ljava/lang/String;

    return-void
.end method
