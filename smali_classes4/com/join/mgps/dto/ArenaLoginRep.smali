.class public Lcom/join/mgps/dto/ArenaLoginRep;
.super Ljava/lang/Object;
.source "ArenaLoginRep.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BEIJING:I = 0x1

.field public static final CLOSE_NO_ROOT:I = 0x2774

.field public static final FORBID:I = 0x238c

.field public static final GUANGZHOU:I = 0x3

.field public static final PING_TIP:I = 0x2710

.field public static final S2C_BEGIN_GROUP_RES:I = 0x6c

.field public static final S2C_CANCEL_GROUP_RES:I = 0x69

.field public static final S2C_CREATE_GROUP_RES:I = 0x66

.field public static final S2C_ENTER_BATTLE:I = 0x6b

.field public static final S2C_GET_USER_COUNTRES:I = 0x6f

.field public static final S2C_GROUP_ENTERAREA_RES:I = 0x64

.field public static final S2C_GROUP_SETOPTION_RES:I = 0x6a

.field public static final S2C_GROUP_USERSTATE:I = 0x67

.field public static final S2C_KICKGROUPUSERRES:I = 0x6e

.field public static final S2C_LIST_GROUPSTATE_RES:I = 0x68

.field public static final S2C_PLATFORM_NOTICEE:I = 0x71

.field public static final S2C_REFRESH_GROUPSTATE_RES:I = 0x65

.field public static final S2C_ROOM_IPPORT:I = 0x6d

.field public static final SHANGHAI:I = 0x2

.field public static final TYPE_BAK_NETWORK:I = -0x3e8

.field public static final TYPE_MATCH_KICK_OFF:I = 0x70

.field public static final TYPE_NO_ROOM:I = 0x3f2

.field public static final TYPE_OTHER_ERROR:I = 0xc1c

.field public static final VERSIONLOW:I = 0x17d4

.field private static final serialVersionUID:J = -0x4daa1dc70bcaa07eL


# instance fields
.field private area:I

.field private creator:J

.field private data:Ljava/lang/Object;

.field private errContent:Ljava/lang/String;

.field private firstPassord:Ljava/lang/String;

.field private gameId:J

.field gameidList:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private groupid:I

.field private grouplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaGroupStateBean;",
            ">;"
        }
    .end annotation
.end field

.field private ip:Ljava/lang/String;

.field private isReady:Z

.field private isarchive:B

.field private isarchive_flg:B

.field private isvisit:B

.field private judgeVisit:Z

.field private logid:J

.field private maxperson:I

.field private maxvisitor:I

.field private me:Lcom/join/mgps/dto/ArenaUserBean;

.field private passWord:Ljava/lang/String;

.field private password:B

.field private port:I

.field private refreshtype:B

.field private result:B

.field private roomId:J

.field private roomtype:B

.field private server_type:I

.field showGroupId:I

.field private startMode:I

.field private startbattle:B

.field private starttime:J

.field private svip:B

.field private tcptype:B

.field private type:I

.field private udpport:I

.field private userList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation
.end field

.field private userid:J

.field private vip:B

.field private visitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameidList:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->area:I

    return v0
.end method

.method public getCreator()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->creator:J

    return-wide v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->errContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstPassord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->firstPassord:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameId:J

    return-wide v0
.end method

.method public getGameidList()Ljava/util/TreeSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameidList:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getGroupid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->groupid:I

    return v0
.end method

.method public getGrouplist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaGroupStateBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->grouplist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIsarchive()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive:B

    return v0
.end method

.method public getIsarchive_flg()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive_flg:B

    return v0
.end method

.method public getIsvisit()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isvisit:B

    return v0
.end method

.method public getLogid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->logid:J

    return-wide v0
.end method

.method public getMaxperson()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxperson:I

    return v0
.end method

.method public getMaxvisitor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxvisitor:I

    return v0
.end method

.method public getMe()Lcom/join/mgps/dto/ArenaUserBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->me:Lcom/join/mgps/dto/ArenaUserBean;

    return-object v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->password:B

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->port:I

    return v0
.end method

.method public getRefreshtype()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->refreshtype:B

    return v0
.end method

.method public getResult()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->result:B

    return v0
.end method

.method public getRoomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomId:J

    return-wide v0
.end method

.method public getRoomtype()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomtype:B

    return v0
.end method

.method public getServer_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->server_type:I

    return v0
.end method

.method public getShowGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->showGroupId:I

    return v0
.end method

.method public getStartMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startMode:I

    return v0
.end method

.method public getStartbattle()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startbattle:B

    return v0
.end method

.method public getStarttime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->starttime:J

    return-wide v0
.end method

.method public getSvip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->svip:B

    return v0
.end method

.method public getTcptype()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->tcptype:B

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->type:I

    return v0
.end method

.method public getUdpport()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->udpport:I

    return v0
.end method

.method public getUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userid:J

    return-wide v0
.end method

.method public getVip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->vip:B

    return v0
.end method

.method public getVisitorList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->visitorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isJudgeVisit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->judgeVisit:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isReady:Z

    return v0
.end method

.method public setArea(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->area:I

    return-void
.end method

.method public setCreator(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->creator:J

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->data:Ljava/lang/Object;

    return-void
.end method

.method public setErrContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->errContent:Ljava/lang/String;

    return-void
.end method

.method public setFirstPassord(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->firstPassord:Ljava/lang/String;

    return-void
.end method

.method public setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameId:J

    return-void
.end method

.method public setGameidList(Ljava/util/TreeSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameidList:Ljava/util/TreeSet;

    return-void
.end method

.method public setGroupid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->groupid:I

    return-void
.end method

.method public setGrouplist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaGroupStateBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->grouplist:Ljava/util/ArrayList;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->ip:Ljava/lang/String;

    return-void
.end method

.method public setIsarchive(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive:B

    return-void
.end method

.method public setIsarchive_flg(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive_flg:B

    return-void
.end method

.method public setIsvisit(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isvisit:B

    return-void
.end method

.method public setJudgeVisit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->judgeVisit:Z

    return-void
.end method

.method public setLogid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->logid:J

    return-void
.end method

.method public setMaxperson(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxperson:I

    return-void
.end method

.method public setMaxvisitor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxvisitor:I

    return-void
.end method

.method public setMe(Lcom/join/mgps/dto/ArenaUserBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->me:Lcom/join/mgps/dto/ArenaUserBean;

    return-void
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->passWord:Ljava/lang/String;

    return-void
.end method

.method public setPassword(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->password:B

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->port:I

    return-void
.end method

.method public setReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isReady:Z

    return-void
.end method

.method public setRefreshtype(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->refreshtype:B

    return-void
.end method

.method public setResult(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->result:B

    return-void
.end method

.method public setRoomId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomId:J

    return-void
.end method

.method public setRoomtype(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomtype:B

    return-void
.end method

.method public setServer_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->server_type:I

    return-void
.end method

.method public setShowGroupId(I)V
    .locals 0

    .line 1
    rem-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->showGroupId:I

    return-void
.end method

.method public setStartMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startMode:I

    return-void
.end method

.method public setStartbattle(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startbattle:B

    return-void
.end method

.method public setStarttime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->starttime:J

    return-void
.end method

.method public setSvip(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->svip:B

    return-void
.end method

.method public setTcptype(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->tcptype:B

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->type:I

    return-void
.end method

.method public setUdpport(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->udpport:I

    return-void
.end method

.method public setUserList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userList:Ljava/util/ArrayList;

    return-void
.end method

.method public setUserid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userid:J

    return-void
.end method

.method public setVip(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->vip:B

    return-void
.end method

.method public setVisitorList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->visitorList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArenaLoginRep{area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->area:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groupid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->groupid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roomtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomtype:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->creator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isvisit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isvisit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->result:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", refreshtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->refreshtype:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->password:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startbattle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startbattle:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", starttime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->starttime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", passWord=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->passWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", judgeVisit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->judgeVisit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", port="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", udpport="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->udpport:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tcptype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->tcptype:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->logid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", roomId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", gameId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", server_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->server_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->errContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", maxperson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxperson:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxvisitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxvisitor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isarchive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isarchive_flg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive_flg:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", me="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->me:Lcom/join/mgps/dto/ArenaUserBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameidList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameidList:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", grouplist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->grouplist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visitorList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->visitorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
