.class public Lcom/join/mgps/dto/NetBattleLoginRep;
.super Ljava/lang/Object;
.source "NetBattleLoginRep.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_AGAIN_START:I = 0x10

.field public static final TYPE_BAK_NETWORK:I = 0x8

.field public static final TYPE_CANCEL_INVITE_BEGIN:I = 0x15

.field public static final TYPE_CANCEL_MATCH:I = 0x3

.field public static final TYPE_CANCEL_READY:I = 0xf

.field public static final TYPE_INVITE_BEGIN:I = 0x14

.field public static final TYPE_INVITE_CREATE:I = 0x13

.field public static final TYPE_LOGIN:I = 0x0

.field public static final TYPE_MATCH:I = 0x2

.field public static final TYPE_MATCHING:I = 0x9

.field public static final TYPE_MATCH_DISCONNECT:I = 0x6

.field public static final TYPE_MATCH_KICK_OFF:I = 0x5

.field public static final TYPE_MATCH_NOT_LOGIN:I = 0x7

.field public static final TYPE_MATCH_QUIT_MATCH:I = 0xa

.field public static final TYPE_MATCH_SUCCESS:I = 0x4

.field public static final TYPE_OTHER_ERROR:I = 0xb

.field public static final TYPE_P1_REMATCH:I = 0x11

.field public static final TYPE_PING:I = 0x1

.field public static final TYPE_READY:I = 0xd

.field public static final TYPE_REMATCH_KICK:I = 0x12

.field public static final TYPE_ROOM_IPPORT:I = 0xe

.field public static final TYPE_ROOM_USERSTATE:I = 0xc


# instance fields
.field private archive:B

.field private errContent:Ljava/lang/String;

.field private fightid:J

.field private gameId:J

.field private ip:Ljava/lang/String;

.field private logid:J

.field private ping:I

.field private pingList:[I

.field private port:I

.field private roomId:J

.field private rs:B

.field private server_type:I

.field private tcptype:B

.field private tuid:J

.field private type:I

.field private udpport:I

.field private userlist:[J


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
    iget-byte v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->archive:B

    return v0
.end method

.method public getErrContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->errContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFightid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->fightid:J

    return-wide v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->gameId:J

    return-wide v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLogid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->logid:J

    return-wide v0
.end method

.method public getPing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->ping:I

    return v0
.end method

.method public getPingList()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->pingList:[I

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->port:I

    return v0
.end method

.method public getRoomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->roomId:J

    return-wide v0
.end method

.method public getRs()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->rs:B

    return v0
.end method

.method public getServer_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->server_type:I

    return v0
.end method

.method public getTcptype()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->tcptype:B

    return v0
.end method

.method public getTuid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->tuid:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->type:I

    return v0
.end method

.method public getUdpport()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->udpport:I

    return v0
.end method

.method public getUserlist()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->userlist:[J

    return-object v0
.end method

.method public setArchive(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->archive:B

    return-void
.end method

.method public setErrContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->errContent:Ljava/lang/String;

    return-void
.end method

.method public setFightid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->fightid:J

    return-void
.end method

.method public setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->gameId:J

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->ip:Ljava/lang/String;

    return-void
.end method

.method public setLogid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->logid:J

    return-void
.end method

.method public setPing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->ping:I

    return-void
.end method

.method public setPingList([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->pingList:[I

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->port:I

    return-void
.end method

.method public setRoomId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->roomId:J

    return-void
.end method

.method public setRs(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->rs:B

    return-void
.end method

.method public setServer_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->server_type:I

    return-void
.end method

.method public setTcptype(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->tcptype:B

    return-void
.end method

.method public setTuid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->tuid:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->type:I

    return-void
.end method

.method public setUdpport(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->udpport:I

    return-void
.end method

.method public setUserlist([J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleLoginRep;->userlist:[J

    return-void
.end method
