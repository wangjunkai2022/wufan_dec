.class public Lcom/join/mgps/dto/ArenaSearchInfo;
.super Ljava/lang/Object;
.source "ArenaSearchInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private areaNumber:I

.field private canplaygame:B

.field private game_actiontype:I

.field private gametype:I

.field private isfree:B

.field private isvisit:B

.field private ping:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->gametype:I

    .line 3
    iput v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->game_actiontype:I

    .line 4
    iput-byte v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isvisit:B

    .line 5
    iput-byte v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isfree:B

    .line 6
    iput v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->areaNumber:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/join/mgps/dto/ArenaSearchInfo;

    .line 3
    iget v2, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->gametype:I

    iget v3, p1, Lcom/join/mgps/dto/ArenaSearchInfo;->gametype:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->game_actiontype:I

    iget v3, p1, Lcom/join/mgps/dto/ArenaSearchInfo;->game_actiontype:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-byte v2, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isvisit:B

    iget-byte v3, p1, Lcom/join/mgps/dto/ArenaSearchInfo;->isvisit:B

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget-byte v2, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isfree:B

    iget-byte v3, p1, Lcom/join/mgps/dto/ArenaSearchInfo;->isfree:B

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->areaNumber:I

    iget v3, p1, Lcom/join/mgps/dto/ArenaSearchInfo;->areaNumber:I

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget-byte v2, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->canplaygame:B

    iget-byte p1, p1, Lcom/join/mgps/dto/ArenaSearchInfo;->canplaygame:B

    if-ne v2, p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public getAreaNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->areaNumber:I

    return v0
.end method

.method public getCanplaygame()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->canplaygame:B

    return v0
.end method

.method public getGame_actiontype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->game_actiontype:I

    return v0
.end method

.method public getGametype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->gametype:I

    return v0
.end method

.method public getIsfree()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isfree:B

    return v0
.end method

.method public getIsvisit()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isvisit:B

    return v0
.end method

.method public getPing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->ping:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->gametype:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->game_actiontype:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isvisit:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isfree:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->areaNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->canplaygame:B

    add-int/2addr v0, v1

    return v0
.end method

.method public setAreaNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->areaNumber:I

    return-void
.end method

.method public setCanplaygame(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->canplaygame:B

    return-void
.end method

.method public setGame_actiontype(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->game_actiontype:I

    return-void
.end method

.method public setGametype(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->gametype:I

    return-void
.end method

.method public setIsfree(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isfree:B

    return-void
.end method

.method public setIsvisit(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isvisit:B

    return-void
.end method

.method public setPing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->ping:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArenaSearchInfo{areaNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->areaNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gametype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->gametype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", game_actiontype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->game_actiontype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isvisit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isvisit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isfree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaSearchInfo;->isfree:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
