.class public Lcom/join/mgps/dto/ArenaUserBean;
.super Ljava/lang/Object;
.source "ArenaUserBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private curlv:I

.field private failcount:I

.field private iconurl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nextexp:I

.field private ping:I

.field private posidx:B

.field private state:B

.field private svip:B

.field private userid:J

.field private vip:B

.field private wincount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Lcom/join/mgps/dto/ArenaUserBean;

    .line 3
    iget-wide v2, p0, Lcom/join/mgps/dto/ArenaUserBean;->userid:J

    iget-wide v4, p1, Lcom/join/mgps/dto/ArenaUserBean;->userid:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCurlv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->curlv:I

    return v0
.end method

.method public getFailcount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->failcount:I

    return v0
.end method

.method public getIconurl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->iconurl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextexp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->nextexp:I

    return v0
.end method

.method public getPing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->ping:I

    return v0
.end method

.method public getPosidx()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->posidx:B

    return v0
.end method

.method public getState()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->state:B

    return v0
.end method

.method public getSvip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->svip:B

    return v0
.end method

.method public getUserid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->userid:J

    return-wide v0
.end method

.method public getVip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->vip:B

    return v0
.end method

.method public getWincount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->wincount:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaUserBean;->userid:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public setCurlv(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->curlv:I

    return-void
.end method

.method public setFailcount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->failcount:I

    return-void
.end method

.method public setIconurl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->iconurl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNextexp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->nextexp:I

    return-void
.end method

.method public setPing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->ping:I

    return-void
.end method

.method public setPosidx(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->posidx:B

    return-void
.end method

.method public setState(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->state:B

    return-void
.end method

.method public setSvip(B)V
    .locals 2

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->svip:B

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "svip-------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/t0;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setUserid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->userid:J

    return-void
.end method

.method public setVip(B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vip-------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->g(Ljava/lang/String;)V

    .line 2
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->vip:B

    return-void
.end method

.method public setWincount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaUserBean;->wincount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArenaUserBean{userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaUserBean;->userid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", iconurl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaUserBean;->iconurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
