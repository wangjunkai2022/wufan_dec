.class public Lcom/join/mgps/dto/NetDataBean;
.super Ljava/lang/Object;
.source "NetDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private archive:B

.field private fightId:J

.field private gameId:Ljava/lang/Long;

.field private playType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArchive()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/NetDataBean;->archive:B

    return v0
.end method

.method public getFightId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/NetDataBean;->fightId:J

    return-wide v0
.end method

.method public getGameId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetDataBean;->gameId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPlayType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetDataBean;->playType:I

    return v0
.end method

.method public setArchive(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/NetDataBean;->archive:B

    return-void
.end method

.method public setFightId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/NetDataBean;->fightId:J

    return-void
.end method

.method public setGameId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetDataBean;->gameId:Ljava/lang/Long;

    return-void
.end method

.method public setPlayType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetDataBean;->playType:I

    return-void
.end method
