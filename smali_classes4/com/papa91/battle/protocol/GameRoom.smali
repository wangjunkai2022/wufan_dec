.class public final Lcom/papa91/battle/protocol/GameRoom;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GameRoom.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/papa91/battle/protocol/GameRoomOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/GameRoom$Builder;,
        Lcom/papa91/battle/protocol/GameRoom$GameType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/papa91/battle/protocol/GameRoom;",
        "Lcom/papa91/battle/protocol/GameRoom$Builder;",
        ">;",
        "Ljava/io/Serializable;",
        "Lcom/papa91/battle/protocol/GameRoomOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOWPCJOIN_FIELD_NUMBER:I = 0x1d

.field public static final ALLOWPERIPHERALJOIN_FIELD_NUMBER:I = 0x6

.field public static final ALLOWSPECTATORJOIN_FIELD_NUMBER:I = 0x5

.field public static final BATTLEAREA_FIELD_NUMBER:I = 0x1a

.field public static final BATTLESERVERADDR_FIELD_NUMBER:I = 0x15

.field public static final CHALLENGECOINS_FIELD_NUMBER:I = 0xc

.field public static final CHATROOMID_FIELD_NUMBER:I = 0x21

.field public static final COLLECTIONID_FIELD_NUMBER:I = 0x1c

.field public static final CREATEAT_FIELD_NUMBER:I = 0x16

.field public static final CREATEBYUSER_FIELD_NUMBER:I = 0x20

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

.field public static final DISABLEMOBILEJOIN_FIELD_NUMBER:I = 0x1f

.field public static final ELITE_FIELD_NUMBER:I = 0x12

.field public static final FASTMODE_FIELD_NUMBER:I = 0x13

.field public static final FIGHTID_FIELD_NUMBER:I = 0x14

.field public static final GAMEID_FIELD_NUMBER:I = 0x2

.field public static final GAMENAME_FIELD_NUMBER:I = 0x1b

.field public static final GAMETYPE_FIELD_NUMBER:I = 0x19

.field public static final HASJOINPASSWORD_FIELD_NUMBER:I = 0x4

.field public static final LEADER_FIELD_NUMBER:I = 0x10

.field public static final OPENFASTMODEBTN_FIELD_NUMBER:I = 0x1e

.field public static final P1_FIELD_NUMBER:I = 0x8

.field public static final P2_FIELD_NUMBER:I = 0x9

.field public static final P3_FIELD_NUMBER:I = 0xa

.field public static final P4_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/GameRoom;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSWORD_FIELD_NUMBER:I = 0x3

.field public static final PLAYERNUMBER_FIELD_NUMBER:I = 0xd

.field public static final PLAYERSECONDS_FIELD_NUMBER:I = 0x11

.field public static final PLAYTIMESTAMP_FIELD_NUMBER:I = 0x18

.field public static final ROOMCATEGORY_FIELD_NUMBER:I = 0x22

.field public static final ROOMID_FIELD_NUMBER:I = 0x1

.field public static final SEATSNUMBER_FIELD_NUMBER:I = 0xe

.field public static final SILENT_FIELD_NUMBER:I = 0x17

.field public static final SPECTATORNUMBER_FIELD_NUMBER:I = 0x7

.field public static final STATE_FIELD_NUMBER:I = 0xf


# instance fields
.field private allowPCJoin_:Z

.field private allowPeripheralJoin_:Z

.field private allowSpectatorJoin_:Z

.field private battleArea_:I

.field private battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

.field private challengeCoins_:I

.field private chatRoomId_:Ljava/lang/String;

.field private collectionId_:I

.field private createAt_:J

.field private createByUser_:I

.field private disableMobileJoin_:Z

.field private elite_:Z

.field private fastMode_:Z

.field private fightId_:J

.field private gameId_:J

.field private gameName_:Ljava/lang/String;

.field private gameType_:I

.field private hasJoinPassword_:Z

.field private leader_:I

.field private openFastModeBtn_:Z

.field private p1_:Lcom/papa91/battle/protocol/RoomPosition;

.field private p2_:Lcom/papa91/battle/protocol/RoomPosition;

.field private p3_:Lcom/papa91/battle/protocol/RoomPosition;

.field private p4_:Lcom/papa91/battle/protocol/RoomPosition;

.field private password_:Ljava/lang/String;

.field private playTimestamp_:J

.field private playerNumber_:I

.field private playerSeconds_:I

.field private roomCategory_:I

.field private roomId_:I

.field private seatsNumber_:I

.field private silent_:Z

.field private spectatorNumber_:I

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/GameRoom;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    return-object v0
.end method

.method static synthetic access$100(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setRoomId(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/papa91/battle/protocol/GameRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setAllowSpectatorJoin(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearAllowSpectatorJoin()V

    return-void
.end method

.method static synthetic access$1200(Lcom/papa91/battle/protocol/GameRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setAllowPeripheralJoin(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearAllowPeripheralJoin()V

    return-void
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setSpectatorNumber(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearSpectatorNumber()V

    return-void
.end method

.method static synthetic access$1600(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setP1(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setP1(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->mergeP1(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearP1()V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearRoomId()V

    return-void
.end method

.method static synthetic access$2000(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setP2(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setP2(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->mergeP2(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearP2()V

    return-void
.end method

.method static synthetic access$2400(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setP3(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setP3(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->mergeP3(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearP3()V

    return-void
.end method

.method static synthetic access$2800(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setP4(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setP4(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/battle/protocol/GameRoom;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom;->setGameId(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->mergeP4(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearP4()V

    return-void
.end method

.method static synthetic access$3200(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setChallengeCoins(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearChallengeCoins()V

    return-void
.end method

.method static synthetic access$3400(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setPlayerNumber(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearPlayerNumber()V

    return-void
.end method

.method static synthetic access$3600(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setSeatsNumber(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearSeatsNumber()V

    return-void
.end method

.method static synthetic access$3800(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setStateValue(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setState(Lcom/papa91/battle/protocol/RoomState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearGameId()V

    return-void
.end method

.method static synthetic access$4000(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearState()V

    return-void
.end method

.method static synthetic access$4100(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setLeader(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearLeader()V

    return-void
.end method

.method static synthetic access$4300(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setPlayerSeconds(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearPlayerSeconds()V

    return-void
.end method

.method static synthetic access$4500(Lcom/papa91/battle/protocol/GameRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setElite(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearElite()V

    return-void
.end method

.method static synthetic access$4700(Lcom/papa91/battle/protocol/GameRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setFastMode(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearFastMode()V

    return-void
.end method

.method static synthetic access$4900(Lcom/papa91/battle/protocol/GameRoom;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom;->setFightId(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearFightId()V

    return-void
.end method

.method static synthetic access$5100(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleServerAddr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleServerAddr$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr$Builder;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleServerAddr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->mergeBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearBattleServerAddr()V

    return-void
.end method

.method static synthetic access$5500(Lcom/papa91/battle/protocol/GameRoom;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom;->setCreateAt(J)V

    return-void
.end method

.method static synthetic access$5600(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearCreateAt()V

    return-void
.end method

.method static synthetic access$5700(Lcom/papa91/battle/protocol/GameRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setSilent(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearSilent()V

    return-void
.end method

.method static synthetic access$5900(Lcom/papa91/battle/protocol/GameRoom;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom;->setPlayTimestamp(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearPassword()V

    return-void
.end method

.method static synthetic access$6000(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearPlayTimestamp()V

    return-void
.end method

.method static synthetic access$6100(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setGameTypeValue(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/GameRoom$GameType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setGameType(Lcom/papa91/battle/protocol/GameRoom$GameType;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearGameType()V

    return-void
.end method

.method static synthetic access$6400(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setBattleAreaValue(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearBattleArea()V

    return-void
.end method

.method static synthetic access$6700(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setGameName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearGameName()V

    return-void
.end method

.method static synthetic access$6900(Lcom/papa91/battle/protocol/GameRoom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setGameNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/papa91/battle/protocol/GameRoom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setPasswordBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setCollectionId(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearCollectionId()V

    return-void
.end method

.method static synthetic access$7200(Lcom/papa91/battle/protocol/GameRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setAllowPCJoin(Z)V

    return-void
.end method

.method static synthetic access$7300(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearAllowPCJoin()V

    return-void
.end method

.method static synthetic access$7400(Lcom/papa91/battle/protocol/GameRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setOpenFastModeBtn(Z)V

    return-void
.end method

.method static synthetic access$7500(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearOpenFastModeBtn()V

    return-void
.end method

.method static synthetic access$7600(Lcom/papa91/battle/protocol/GameRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setDisableMobileJoin(Z)V

    return-void
.end method

.method static synthetic access$7700(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearDisableMobileJoin()V

    return-void
.end method

.method static synthetic access$7800(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setCreateByUser(I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearCreateByUser()V

    return-void
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/GameRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setHasJoinPassword(Z)V

    return-void
.end method

.method static synthetic access$8000(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setChatRoomId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearChatRoomId()V

    return-void
.end method

.method static synthetic access$8200(Lcom/papa91/battle/protocol/GameRoom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setChatRoomIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/papa91/battle/protocol/GameRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setRoomCategoryValue(I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomCategory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->setRoomCategory(Lcom/papa91/battle/protocol/RoomCategory;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearRoomCategory()V

    return-void
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;->clearHasJoinPassword()V

    return-void
.end method

.method private clearAllowPCJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    return-void
.end method

.method private clearAllowPeripheralJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    return-void
.end method

.method private clearAllowSpectatorJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    return-void
.end method

.method private clearBattleArea()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    return-void
.end method

.method private clearBattleServerAddr()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    return-void
.end method

.method private clearChallengeCoins()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    return-void
.end method

.method private clearChatRoomId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    return-void
.end method

.method private clearCollectionId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    return-void
.end method

.method private clearCreateAt()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    return-void
.end method

.method private clearCreateByUser()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    return-void
.end method

.method private clearDisableMobileJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    return-void
.end method

.method private clearElite()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    return-void
.end method

.method private clearFastMode()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    return-void
.end method

.method private clearFightId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    return-void
.end method

.method private clearGameId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    return-void
.end method

.method private clearGameName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    return-void
.end method

.method private clearGameType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    return-void
.end method

.method private clearHasJoinPassword()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    return-void
.end method

.method private clearLeader()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    return-void
.end method

.method private clearOpenFastModeBtn()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    return-void
.end method

.method private clearP1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private clearP2()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private clearP3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private clearP4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private clearPassword()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    return-void
.end method

.method private clearPlayTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    return-void
.end method

.method private clearPlayerNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    return-void
.end method

.method private clearPlayerSeconds()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    return-void
.end method

.method private clearRoomCategory()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    return-void
.end method

.method private clearRoomId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

    return-void
.end method

.method private clearSeatsNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    return-void
.end method

.method private clearSilent()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    return-void
.end method

.method private clearSpectatorNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    return-void
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    return-object v0
.end method

.method private mergeBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/BattleServerAddr;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->newBuilder(Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleServerAddr;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    :goto_0
    return-void
.end method

.method private mergeP1(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    :goto_0
    return-void
.end method

.method private mergeP2(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    :goto_0
    return-void
.end method

.method private mergeP3(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    :goto_0
    return-void
.end method

.method private mergeP4(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/GameRoom;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowPCJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    return-void
.end method

.method private setAllowPeripheralJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    return-void
.end method

.method private setAllowSpectatorJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    return-void
.end method

.method private setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    return-void
.end method

.method private setBattleAreaValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    return-void
.end method

.method private setBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleServerAddr;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    return-void
.end method

.method private setBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    return-void
.end method

.method private setChallengeCoins(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    return-void
.end method

.method private setChatRoomId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    return-void
.end method

.method private setChatRoomIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    return-void
.end method

.method private setCollectionId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    return-void
.end method

.method private setCreateAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    return-void
.end method

.method private setCreateByUser(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    return-void
.end method

.method private setDisableMobileJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    return-void
.end method

.method private setElite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    return-void
.end method

.method private setFastMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    return-void
.end method

.method private setFightId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    return-void
.end method

.method private setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    return-void
.end method

.method private setGameName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    return-void
.end method

.method private setGameNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    return-void
.end method

.method private setGameType(Lcom/papa91/battle/protocol/GameRoom$GameType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    return-void
.end method

.method private setGameTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    return-void
.end method

.method private setHasJoinPassword(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    return-void
.end method

.method private setLeader(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    return-void
.end method

.method private setOpenFastModeBtn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    return-void
.end method

.method private setP1(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private setP1(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private setP2(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private setP2(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private setP3(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private setP3(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private setP4(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private setP4(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    return-void
.end method

.method private setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    return-void
.end method

.method private setPasswordBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    return-void
.end method

.method private setPlayTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    return-void
.end method

.method private setPlayerNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    return-void
.end method

.method private setPlayerSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    return-void
.end method

.method private setRoomCategory(Lcom/papa91/battle/protocol/RoomCategory;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    return-void
.end method

.method private setRoomCategoryValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    return-void
.end method

.method private setRoomId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

    return-void
.end method

.method private setSeatsNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    return-void
.end method

.method private setSilent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    return-void
.end method

.method private setSpectatorNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    return-void
.end method

.method private setState(Lcom/papa91/battle/protocol/RoomState;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    return-void
.end method

.method private setStateValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/papa91/battle/protocol/GameRoom;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 6
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 7
    :cond_1
    :goto_0
    sget-object p1, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_8

    .line 12
    :sswitch_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 13
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    goto :goto_1

    .line 14
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    goto :goto_1

    .line 16
    :sswitch_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    goto :goto_1

    .line 17
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    goto :goto_1

    .line 18
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    goto :goto_1

    .line 19
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    goto :goto_1

    .line 20
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    goto :goto_1

    .line 21
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    goto :goto_1

    .line 23
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 24
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    goto :goto_1

    .line 25
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 26
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    goto :goto_1

    .line 27
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    goto :goto_1

    .line 28
    :sswitch_b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    goto :goto_1

    .line 29
    :sswitch_c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    goto :goto_1

    .line 30
    :sswitch_d
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    if-eqz p1, :cond_3

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 32
    :goto_2
    invoke-static {}, Lcom/papa91/battle/protocol/BattleServerAddr;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/BattleServerAddr;

    iput-object v3, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleServerAddr;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    goto/16 :goto_1

    .line 35
    :sswitch_e
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    goto/16 :goto_1

    .line 36
    :sswitch_f
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    goto/16 :goto_1

    .line 37
    :sswitch_10
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    goto/16 :goto_1

    .line 38
    :sswitch_11
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    goto/16 :goto_1

    .line 39
    :sswitch_12
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    goto/16 :goto_1

    .line 40
    :sswitch_13
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 41
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    goto/16 :goto_1

    .line 42
    :sswitch_14
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    goto/16 :goto_1

    .line 43
    :sswitch_15
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    goto/16 :goto_1

    .line 44
    :sswitch_16
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    goto/16 :goto_1

    .line 45
    :sswitch_17
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz p1, :cond_4

    .line 46
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    goto :goto_3

    :cond_4
    move-object p1, v0

    .line 47
    :goto_3
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object v3, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 49
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    goto/16 :goto_1

    .line 50
    :sswitch_18
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz p1, :cond_5

    .line 51
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    goto :goto_4

    :cond_5
    move-object p1, v0

    .line 52
    :goto_4
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object v3, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 54
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    goto/16 :goto_1

    .line 55
    :sswitch_19
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    goto :goto_5

    :cond_6
    move-object p1, v0

    .line 57
    :goto_5
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object v3, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 59
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    goto/16 :goto_1

    .line 60
    :sswitch_1a
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz p1, :cond_7

    .line 61
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    goto :goto_6

    :cond_7
    move-object p1, v0

    .line 62
    :goto_6
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object v3, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    goto/16 :goto_1

    .line 65
    :sswitch_1b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    goto/16 :goto_1

    .line 66
    :sswitch_1c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    goto/16 :goto_1

    .line 67
    :sswitch_1d
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    goto/16 :goto_1

    .line 68
    :sswitch_1e
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    goto/16 :goto_1

    .line 69
    :sswitch_1f
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    goto/16 :goto_1

    .line 71
    :sswitch_20
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    goto/16 :goto_1

    .line 72
    :sswitch_21
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_7
    :sswitch_22
    const/4 v1, 0x1

    goto/16 :goto_1

    :goto_8
    if-nez p1, :cond_2

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_0
    move-exception p1

    .line 73
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 74
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :goto_9
    throw p1

    .line 77
    :cond_8
    :pswitch_2
    sget-object p1, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    return-object p1

    .line 78
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 79
    check-cast p3, Lcom/papa91/battle/protocol/GameRoom;

    .line 80
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

    .line 81
    iget-wide v5, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_b

    const/4 v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x0

    :goto_c
    iget-wide v8, p3, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_c

    const/4 v7, 0x1

    goto :goto_d

    :cond_c
    const/4 v7, 0x0

    :goto_d
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    .line 82
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    .line 84
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    .line 85
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    .line 86
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    .line 87
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    .line 88
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    if-eqz v3, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    .line 89
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    iget-object v0, p3, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 90
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    iget-object v0, p3, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 91
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    iget-object v0, p3, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 92
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    iget-object v0, p3, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 93
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    if-eqz v3, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    .line 94
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    if-eqz v3, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    .line 95
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    if-eqz v3, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    .line 96
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    if-eqz v3, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 97
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    if-eqz v3, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    .line 98
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    if-eqz v3, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    .line 99
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    .line 100
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    .line 101
    iget-wide v5, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    iget-wide v8, p3, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_1c

    const/4 v7, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v7, 0x0

    :goto_1d
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    .line 102
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    iget-object v0, p3, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleServerAddr;

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 103
    iget-wide v5, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    iget-wide v8, p3, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_1e

    const/4 v7, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    :goto_1f
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    .line 104
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    .line 105
    iget-wide v5, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    iget-wide v8, p3, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_20

    const/4 v7, 0x1

    goto :goto_21

    :cond_20
    const/4 v7, 0x0

    :goto_21
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    .line 106
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    if-eqz v3, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 107
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    if-eqz v3, :cond_24

    const/4 v4, 0x1

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    :goto_25
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 108
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    .line 110
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    .line 111
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    if-eqz v3, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    .line 112
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    .line 113
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    .line 114
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    .line 115
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    if-eqz p1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iget v3, p3, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    if-eqz v3, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    .line 116
    iget-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    .line 118
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    .line 119
    iget p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    iget p3, p3, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    if-eqz p3, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 120
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 121
    :pswitch_4
    new-instance p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    invoke-direct {p1, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;-><init>(Lcom/papa91/battle/protocol/GameRoom$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 122
    :pswitch_6
    sget-object p1, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    return-object p1

    .line 123
    :pswitch_7
    new-instance p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-direct {p1}, Lcom/papa91/battle/protocol/GameRoom;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_22
        0x8 -> :sswitch_21
        0x10 -> :sswitch_20
        0x1a -> :sswitch_1f
        0x20 -> :sswitch_1e
        0x28 -> :sswitch_1d
        0x30 -> :sswitch_1c
        0x38 -> :sswitch_1b
        0x42 -> :sswitch_1a
        0x4a -> :sswitch_19
        0x52 -> :sswitch_18
        0x5a -> :sswitch_17
        0x60 -> :sswitch_16
        0x68 -> :sswitch_15
        0x70 -> :sswitch_14
        0x78 -> :sswitch_13
        0x80 -> :sswitch_12
        0x88 -> :sswitch_11
        0x90 -> :sswitch_10
        0x98 -> :sswitch_f
        0xa0 -> :sswitch_e
        0xaa -> :sswitch_d
        0xb0 -> :sswitch_c
        0xb8 -> :sswitch_b
        0xc0 -> :sswitch_a
        0xc8 -> :sswitch_9
        0xd0 -> :sswitch_8
        0xda -> :sswitch_7
        0xe0 -> :sswitch_6
        0xe8 -> :sswitch_5
        0xf0 -> :sswitch_4
        0xf8 -> :sswitch_3
        0x100 -> :sswitch_2
        0x10a -> :sswitch_1
        0x110 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    return v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleArea;->forNumber(I)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->UNRECOGNIZED:Lcom/papa91/battle/protocol/BattleArea;

    :cond_0
    return-object v0
.end method

.method public getBattleAreaValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    return v0
.end method

.method public getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/BattleServerAddr;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChallengeCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    return v0
.end method

.method public getChatRoomId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChatRoomIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    return v0
.end method

.method public getCreateAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    return-wide v0
.end method

.method public getCreateByUser()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    return v0
.end method

.method public getDisableMobileJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    return v0
.end method

.method public getElite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    return v0
.end method

.method public getFastMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    return v0
.end method

.method public getFightId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    return-wide v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGameNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom$GameType;->forNumber(I)Lcom/papa91/battle/protocol/GameRoom$GameType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom$GameType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/GameRoom$GameType;

    :cond_0
    return-object v0
.end method

.method public getGameTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    return v0
.end method

.method public getHasJoinPassword()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    return v0
.end method

.method public getLeader()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    return v0
.end method

.method public getOpenFastModeBtn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    return v0
.end method

.method public getP1()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getP2()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getP3()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getP4()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlayTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    return-wide v0
.end method

.method public getPlayerNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    return v0
.end method

.method public getPlayerSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    return v0
.end method

.method public getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomCategory;->forNumber(I)Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/RoomCategory;->UNRECOGNIZED:Lcom/papa91/battle/protocol/RoomCategory;

    :cond_0
    return-object v0
.end method

.method public getRoomCategoryValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

    return v0
.end method

.method public getSeatsNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 5
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 17
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 19
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 21
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_b
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_c
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 27
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_d
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 29
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_e
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    sget-object v2, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_f

    const/16 v1, 0xf

    .line 31
    iget v2, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 32
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_f
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 34
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_10
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 36
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_11
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    .line 38
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_12
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    if-eqz v1, :cond_13

    const/16 v2, 0x13

    .line 40
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_13
    iget-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_14

    const/16 v5, 0x14

    .line 42
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_14
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    if-eqz v1, :cond_15

    const/16 v1, 0x15

    .line 44
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_15
    iget-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_16

    const/16 v5, 0x16

    .line 46
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_16
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    if-eqz v1, :cond_17

    const/16 v2, 0x17

    .line 48
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_17
    iget-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_18

    const/16 v3, 0x18

    .line 50
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_18
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    sget-object v2, Lcom/papa91/battle/protocol/GameRoom$GameType;->FIGHT:Lcom/papa91/battle/protocol/GameRoom$GameType;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_19

    const/16 v1, 0x19

    .line 52
    iget v2, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 53
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_19
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1a

    const/16 v1, 0x1a

    .line 55
    iget v2, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 56
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_1a
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    const/16 v1, 0x1b

    .line 58
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_1b
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    if-eqz v1, :cond_1c

    const/16 v2, 0x1c

    .line 60
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_1c
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    if-eqz v1, :cond_1d

    const/16 v2, 0x1d

    .line 62
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_1d
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    if-eqz v1, :cond_1e

    const/16 v2, 0x1e

    .line 64
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_1e
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    if-eqz v1, :cond_1f

    const/16 v2, 0x1f

    .line 66
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_1f
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    if-eqz v1, :cond_20

    const/16 v2, 0x20

    .line 68
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_20
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    const/16 v1, 0x21

    .line 70
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_21
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    sget-object v2, Lcom/papa91/battle/protocol/RoomCategory;->NORMAL:Lcom/papa91/battle/protocol/RoomCategory;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_22

    const/16 v1, 0x22

    .line 72
    iget v2, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 73
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_22
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getSilent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    return v0
.end method

.method public getSpectatorNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomState;->forNumber(I)Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->UNRECOGNIZED:Lcom/papa91/battle/protocol/RoomState;

    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    return v0
.end method

.method public hasBattleServerAddr()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasP1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasP2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasP3()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasP4()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 22
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23
    :cond_a
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 25
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 27
    :cond_c
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 29
    :cond_d
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_e

    const/16 v0, 0xf

    .line 30
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31
    :cond_e
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33
    :cond_f
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 35
    :cond_10
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 37
    :cond_11
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 39
    :cond_12
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    const/16 v4, 0x14

    .line 40
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 41
    :cond_13
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    .line 42
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 43
    :cond_14
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15

    const/16 v4, 0x16

    .line 44
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 45
    :cond_15
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    if-eqz v0, :cond_16

    const/16 v1, 0x17

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 47
    :cond_16
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    const/16 v2, 0x18

    .line 48
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 49
    :cond_17
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    sget-object v1, Lcom/papa91/battle/protocol/GameRoom$GameType;->FIGHT:Lcom/papa91/battle/protocol/GameRoom$GameType;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_18

    const/16 v0, 0x19

    .line 50
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 51
    :cond_18
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_19

    const/16 v0, 0x1a

    .line 52
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 53
    :cond_19
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x1b

    .line 54
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 55
    :cond_1a
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    if-eqz v0, :cond_1b

    const/16 v1, 0x1c

    .line 56
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 57
    :cond_1b
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    if-eqz v0, :cond_1c

    const/16 v1, 0x1d

    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 59
    :cond_1c
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    if-eqz v0, :cond_1d

    const/16 v1, 0x1e

    .line 60
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 61
    :cond_1d
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    if-eqz v0, :cond_1e

    const/16 v1, 0x1f

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 63
    :cond_1e
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    if-eqz v0, :cond_1f

    const/16 v1, 0x20

    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 65
    :cond_1f
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/16 v0, 0x21

    .line 66
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 67
    :cond_20
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    sget-object v1, Lcom/papa91/battle/protocol/RoomCategory;->NORMAL:Lcom/papa91/battle/protocol/RoomCategory;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_21

    const/16 v0, 0x22

    .line 68
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_21
    return-void
.end method
