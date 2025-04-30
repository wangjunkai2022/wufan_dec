.class public Lcom/join/mgps/dto/ArenaDataBean;
.super Ljava/lang/Object;
.source "ArenaDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private archive:B

.field private gameid:J

.field private gameids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private groupid:I

.field private isvisit:B

.field private password:Ljava/lang/String;

.field private ping:I

.field private pos:B

.field private refreshtype:B

.field private roomtype:B

.field showGroupId:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/join/mgps/dto/ArenaDataBean;

    .line 3
    iget v2, p0, Lcom/join/mgps/dto/ArenaDataBean;->groupid:I

    iget p1, p1, Lcom/join/mgps/dto/ArenaDataBean;->groupid:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getArchive()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->archive:B

    return v0
.end method

.method public getGameid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->gameid:J

    return-wide v0
.end method

.method public getGameids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->gameids:Ljava/util/List;

    return-object v0
.end method

.method public getGroupid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->groupid:I

    return v0
.end method

.method public getIsvisit()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->isvisit:B

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->ping:I

    return v0
.end method

.method public getPos()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->pos:B

    return v0
.end method

.method public getRefreshtype()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->refreshtype:B

    return v0
.end method

.method public getRoomtype()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->roomtype:B

    return v0
.end method

.method public getShowGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->showGroupId:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaDataBean;->groupid:I

    return v0
.end method

.method public setArchive(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->archive:B

    return-void
.end method

.method public setGameid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->gameid:J

    return-void
.end method

.method public setGameids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->gameids:Ljava/util/List;

    return-void
.end method

.method public setGroupid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->groupid:I

    return-void
.end method

.method public setIsvisit(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->isvisit:B

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setPing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->ping:I

    return-void
.end method

.method public setPos(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->pos:B

    return-void
.end method

.method public setRefreshtype(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->refreshtype:B

    return-void
.end method

.method public setRoomtype(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->roomtype:B

    return-void
.end method

.method public setShowGroupId(I)V
    .locals 0

    .line 1
    rem-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->showGroupId:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaDataBean;->time:J

    return-void
.end method
