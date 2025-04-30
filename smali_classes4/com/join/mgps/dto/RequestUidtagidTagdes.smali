.class public Lcom/join/mgps/dto/RequestUidtagidTagdes;
.super Ljava/lang/Object;
.source "RequestUidtagidTagdes.java"


# instance fields
.field private game_id:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private tag_des:Ljava/lang/String;

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
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_des()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->tag_des:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->uid:I

    return v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->score:Ljava/lang/String;

    return-void
.end method

.method public setTag_des(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->tag_des:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestUidtagidTagdes;->uid:I

    return-void
.end method
