.class public Lapp/mgsim/arena/AreaInfo;
.super Ljava/lang/Object;
.source "AreaInfo.java"


# instance fields
.field private area:I

.field private host:Ljava/lang/String;

.field private onLinePeopleCounts:I

.field private pingTime:J

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/AreaInfo;->area:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/AreaInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getOnLinePeopleCounts()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/AreaInfo;->onLinePeopleCounts:I

    return v0
.end method

.method public getPingTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lapp/mgsim/arena/AreaInfo;->pingTime:J

    return-wide v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/AreaInfo;->port:I

    return v0
.end method

.method public setArea(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/AreaInfo;->area:I

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/AreaInfo;->host:Ljava/lang/String;

    return-void
.end method

.method public setOnLinePeopleCounts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/AreaInfo;->onLinePeopleCounts:I

    return-void
.end method

.method public setPingTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lapp/mgsim/arena/AreaInfo;->pingTime:J

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/AreaInfo;->port:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AreaInfo{pingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lapp/mgsim/arena/AreaInfo;->pingTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", host=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lapp/mgsim/arena/AreaInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lapp/mgsim/arena/AreaInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onLinePeopleCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lapp/mgsim/arena/AreaInfo;->onLinePeopleCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lapp/mgsim/arena/AreaInfo;->area:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
