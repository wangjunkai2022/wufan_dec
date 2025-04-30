.class public Lcom/join/mgps/dto/ArenaGroupStateBean;
.super Ljava/lang/Object;
.source "ArenaGroupStateBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/join/mgps/dto/ArenaGroupStateBean;",
        ">;"
    }
.end annotation


# instance fields
.field private areaIndictor:I

.field private gameid:J

.field private groupid:I

.field private isarchive:B

.field private isvisit:B

.field private password:B

.field private position:I

.field private roomstate:B

.field showGroupId:I

.field private startbattle:B

.field private starttime:J

.field private svip:B

.field private userBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation
.end field

.field private usercount:B

.field private vip:B

.field private visitorBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->areaIndictor:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/join/mgps/dto/ArenaGroupStateBean;)I
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    iget p1, p1, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    if-gt v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ArenaGroupStateBean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/ArenaGroupStateBean;->compareTo(Lcom/join/mgps/dto/ArenaGroupStateBean;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/join/mgps/dto/ArenaGroupStateBean;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/join/mgps/dto/ArenaGroupStateBean;

    .line 3
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGroupStateBean;->getGroupid()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAreaIndictor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->areaIndictor:I

    return v0
.end method

.method public getGameid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->gameid:J

    return-wide v0
.end method

.method public getGroupid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    return v0
.end method

.method public getIsarchive()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isarchive:B

    return v0
.end method

.method public getIsvisit()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isvisit:B

    return v0
.end method

.method public getPassword()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->password:B

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->position:I

    return v0
.end method

.method public getRoomstate()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->roomstate:B

    return v0
.end method

.method public getShowGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->showGroupId:I

    return v0
.end method

.method public getStartbattle()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->startbattle:B

    return v0
.end method

.method public getStarttime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->starttime:J

    return-wide v0
.end method

.method public getSvip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->svip:B

    return v0
.end method

.method public getUserBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->userBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getUsercount()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->usercount:B

    return v0
.end method

.method public getVip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->vip:B

    return v0
.end method

.method public getVisitorBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->visitorBeanList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    return v0
.end method

.method public setAreaIndictor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->areaIndictor:I

    return-void
.end method

.method public setGameid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->gameid:J

    return-void
.end method

.method public setGroupid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    return-void
.end method

.method public setIsarchive(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isarchive:B

    return-void
.end method

.method public setIsvisit(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isvisit:B

    return-void
.end method

.method public setPassword(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->password:B

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->position:I

    return-void
.end method

.method public setRoomstate(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->roomstate:B

    return-void
.end method

.method public setShowGroupId(I)V
    .locals 0

    .line 1
    rem-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->showGroupId:I

    return-void
.end method

.method public setStartbattle(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->startbattle:B

    return-void
.end method

.method public setStarttime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->starttime:J

    return-void
.end method

.method public setSvip(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->svip:B

    return-void
.end method

.method public setUserBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->userBeanList:Ljava/util/List;

    return-void
.end method

.method public setUsercount(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->usercount:B

    return-void
.end method

.method public setVip(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->vip:B

    return-void
.end method

.method public setVisitorBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->visitorBeanList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArenaGroupStateBean{gameid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->gameid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", groupid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roomstate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->roomstate:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->password:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isvisit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isvisit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startbattle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->startbattle:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", starttime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->starttime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isarchive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isarchive:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", usercount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->usercount:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userBeanList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->userBeanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visitorBeanList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->visitorBeanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
