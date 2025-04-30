.class public final Lcom/papa91/battle/protocol/SimpleRoom;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SimpleRoom.java"

# interfaces
.implements Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/papa91/battle/protocol/SimpleRoom;",
        "Lcom/papa91/battle/protocol/SimpleRoom$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ALLOWPCJOIN_FIELD_NUMBER:I = 0x1b

.field public static final ALLOWPERIPHERALJOIN_FIELD_NUMBER:I = 0xa

.field public static final ALLOWSPECTATORJOIN_FIELD_NUMBER:I = 0x9

.field public static final AVATAR_FIELD_NUMBER:I = 0x1a

.field public static final BATTLEAREA_FIELD_NUMBER:I = 0x16

.field public static final BATTLETITLECOLOR_FIELD_NUMBER:I = 0x14

.field public static final BATTLETITLE_FIELD_NUMBER:I = 0x13

.field public static final CHALLENGECOINS_FIELD_NUMBER:I = 0xc

.field public static final COLLECTIONID_FIELD_NUMBER:I = 0x18

.field public static final COPPER_FIELD_NUMBER:I = 0x11

.field public static final CREATEAT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

.field public static final ELITE_FIELD_NUMBER:I = 0x10

.field public static final GAMEID_FIELD_NUMBER:I = 0x2

.field public static final GAMENAME_FIELD_NUMBER:I = 0x17

.field public static final HASJOINPASSWORD_FIELD_NUMBER:I = 0x8

.field public static final HASPERIPHERALPLAYER_FIELD_NUMBER:I = 0x12

.field public static final LEADERID_FIELD_NUMBER:I = 0x1d

.field public static final NICKNAME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYERLIST_FIELD_NUMBER:I = 0x1c

.field public static final PLAYSECONDS_FIELD_NUMBER:I = 0xe

.field public static final PLAYTIMESTAMP_FIELD_NUMBER:I = 0x15

.field public static final ROOMCATEGORY_FIELD_NUMBER:I = 0x1e

.field public static final ROOMID_FIELD_NUMBER:I = 0x1

.field public static final SEATSNUMBER_FIELD_NUMBER:I = 0x6

.field public static final SITDOWNLOADNUMBER_FIELD_NUMBER:I = 0x7

.field public static final SPECTATORNUMBER_FIELD_NUMBER:I = 0x19

.field public static final STATE_FIELD_NUMBER:I = 0xd

.field public static final TITLE_FIELD_NUMBER:I = 0xf

.field public static final VIP_FIELD_NUMBER:I = 0x4


# instance fields
.field private allowPCJoin_:Z

.field private allowPeripheralJoin_:Z

.field private allowSpectatorJoin_:Z

.field private avatar_:Ljava/lang/String;

.field private battleArea_:I

.field private battleTitleColor_:Ljava/lang/String;

.field private battleTitle_:Ljava/lang/String;

.field private bitField0_:I

.field private challengeCoins_:I

.field private collectionId_:I

.field private copper_:I

.field private createAt_:J

.field private elite_:Z

.field private gameId_:J

.field private gameName_:Ljava/lang/String;

.field private hasJoinPassword_:Z

.field private hasPeripheralPlayer_:Z

.field private leaderId_:I

.field private nickname_:Ljava/lang/String;

.field private playSeconds_:I

.field private playTimestamp_:J

.field private playerList_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation
.end field

.field private roomCategory_:I

.field private roomId_:I

.field private seatsNumber_:I

.field private sitDownloadNumber_:I

.field private spectatorNumber_:I

.field private state_:I

.field private title_:Lcom/papa91/battle/protocol/BattleTitle;

.field private vip_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/SimpleRoom;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    return-object v0
.end method

.method static synthetic access$100(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setRoomId(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/papa91/battle/protocol/SimpleRoom;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->setCreateAt(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearCreateAt()V

    return-void
.end method

.method static synthetic access$1200(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setSeatsNumber(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearSeatsNumber()V

    return-void
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setSitDownloadNumber(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearSitDownloadNumber()V

    return-void
.end method

.method static synthetic access$1600(Lcom/papa91/battle/protocol/SimpleRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setHasJoinPassword(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearHasJoinPassword()V

    return-void
.end method

.method static synthetic access$1800(Lcom/papa91/battle/protocol/SimpleRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setAllowSpectatorJoin(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearAllowSpectatorJoin()V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearRoomId()V

    return-void
.end method

.method static synthetic access$2000(Lcom/papa91/battle/protocol/SimpleRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setAllowPeripheralJoin(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearAllowPeripheralJoin()V

    return-void
.end method

.method static synthetic access$2200(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setChallengeCoins(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearChallengeCoins()V

    return-void
.end method

.method static synthetic access$2400(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setStateValue(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/RoomState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setState(Lcom/papa91/battle/protocol/RoomState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearState()V

    return-void
.end method

.method static synthetic access$2700(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setPlaySeconds(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearPlaySeconds()V

    return-void
.end method

.method static synthetic access$2900(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleTitle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setTitle(Lcom/papa91/battle/protocol/BattleTitle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/battle/protocol/SimpleRoom;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->setGameId(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleTitle$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setTitle(Lcom/papa91/battle/protocol/BattleTitle$Builder;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleTitle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearTitle()V

    return-void
.end method

.method static synthetic access$3300(Lcom/papa91/battle/protocol/SimpleRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setElite(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearElite()V

    return-void
.end method

.method static synthetic access$3500(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setCopper(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearCopper()V

    return-void
.end method

.method static synthetic access$3700(Lcom/papa91/battle/protocol/SimpleRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setHasPeripheralPlayer(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearHasPeripheralPlayer()V

    return-void
.end method

.method static synthetic access$3900(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setBattleTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearGameId()V

    return-void
.end method

.method static synthetic access$4000(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearBattleTitle()V

    return-void
.end method

.method static synthetic access$4100(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setBattleTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setBattleTitleColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearBattleTitleColor()V

    return-void
.end method

.method static synthetic access$4400(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/papa91/battle/protocol/SimpleRoom;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->setPlayTimestamp(J)V

    return-void
.end method

.method static synthetic access$4600(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearPlayTimestamp()V

    return-void
.end method

.method static synthetic access$4700(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setBattleAreaValue(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearBattleArea()V

    return-void
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setNickname(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setGameName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearGameName()V

    return-void
.end method

.method static synthetic access$5200(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setGameNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setCollectionId(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearCollectionId()V

    return-void
.end method

.method static synthetic access$5500(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setSpectatorNumber(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearSpectatorNumber()V

    return-void
.end method

.method static synthetic access$5700(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearAvatar()V

    return-void
.end method

.method static synthetic access$5900(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setAvatarBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearNickname()V

    return-void
.end method

.method static synthetic access$6000(Lcom/papa91/battle/protocol/SimpleRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setAllowPCJoin(Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearAllowPCJoin()V

    return-void
.end method

.method static synthetic access$6200(Lcom/papa91/battle/protocol/SimpleRoom;ILcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->setPlayerList(ILcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/papa91/battle/protocol/SimpleRoom;ILcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->setPlayerList(ILcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->addPlayerList(Lcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/papa91/battle/protocol/SimpleRoom;ILcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->addPlayerList(ILcom/papa91/battle/protocol/RoomPosition;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->addPlayerList(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/papa91/battle/protocol/SimpleRoom;ILcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->addPlayerList(ILcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->addAllPlayerList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearPlayerList()V

    return-void
.end method

.method static synthetic access$700(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setNicknameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->removePlayerList(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setLeaderId(I)V

    return-void
.end method

.method static synthetic access$7200(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearLeaderId()V

    return-void
.end method

.method static synthetic access$7300(Lcom/papa91/battle/protocol/SimpleRoom;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setRoomCategoryValue(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/RoomCategory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setRoomCategory(Lcom/papa91/battle/protocol/RoomCategory;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearRoomCategory()V

    return-void
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/SimpleRoom;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->setVip(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->clearVip()V

    return-void
.end method

.method private addAllPlayerList(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->ensurePlayerListIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addPlayerList(ILcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->ensurePlayerListIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPlayerList(ILcom/papa91/battle/protocol/RoomPosition;)V
    .locals 1

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->ensurePlayerListIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPlayerList(Lcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->ensurePlayerListIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPlayerList(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->ensurePlayerListIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAllowPCJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    return-void
.end method

.method private clearAllowPeripheralJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    return-void
.end method

.method private clearAllowSpectatorJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    return-void
.end method

.method private clearAvatar()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    return-void
.end method

.method private clearBattleArea()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    return-void
.end method

.method private clearBattleTitle()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    return-void
.end method

.method private clearBattleTitleColor()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    return-void
.end method

.method private clearChallengeCoins()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    return-void
.end method

.method private clearCollectionId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    return-void
.end method

.method private clearCopper()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    return-void
.end method

.method private clearCreateAt()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    return-void
.end method

.method private clearElite()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    return-void
.end method

.method private clearGameId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    return-void
.end method

.method private clearGameName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    return-void
.end method

.method private clearHasJoinPassword()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    return-void
.end method

.method private clearHasPeripheralPlayer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    return-void
.end method

.method private clearLeaderId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    return-void
.end method

.method private clearNickname()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    return-void
.end method

.method private clearPlaySeconds()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    return-void
.end method

.method private clearPlayTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    return-void
.end method

.method private clearPlayerList()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRoomCategory()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    return-void
.end method

.method private clearRoomId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    return-void
.end method

.method private clearSeatsNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    return-void
.end method

.method private clearSitDownloadNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    return-void
.end method

.method private clearSpectatorNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    return-void
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    return-void
.end method

.method private clearTitle()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    return-void
.end method

.method private clearVip()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    return-void
.end method

.method private ensurePlayerListIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    return-object v0
.end method

.method private mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleTitle;->newBuilder(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePlayerList(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->ensurePlayerListIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAllowPCJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    return-void
.end method

.method private setAllowPeripheralJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    return-void
.end method

.method private setAllowSpectatorJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    return-void
.end method

.method private setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    return-void
.end method

.method private setAvatarBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    return-void
.end method

.method private setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    return-void
.end method

.method private setBattleAreaValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    return-void
.end method

.method private setBattleTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    return-void
.end method

.method private setBattleTitleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    return-void
.end method

.method private setBattleTitleColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    return-void
.end method

.method private setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    return-void
.end method

.method private setChallengeCoins(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    return-void
.end method

.method private setCollectionId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    return-void
.end method

.method private setCopper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    return-void
.end method

.method private setCreateAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    return-void
.end method

.method private setElite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    return-void
.end method

.method private setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    return-void
.end method

.method private setGameName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    return-void
.end method

.method private setHasJoinPassword(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    return-void
.end method

.method private setHasPeripheralPlayer(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    return-void
.end method

.method private setLeaderId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    return-void
.end method

.method private setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    return-void
.end method

.method private setNicknameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    return-void
.end method

.method private setPlaySeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    return-void
.end method

.method private setPlayTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    return-void
.end method

.method private setPlayerList(ILcom/papa91/battle/protocol/RoomPosition$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->ensurePlayerListIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPlayerList(ILcom/papa91/battle/protocol/RoomPosition;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->ensurePlayerListIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRoomCategory(Lcom/papa91/battle/protocol/RoomCategory;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    return-void
.end method

.method private setRoomCategoryValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    return-void
.end method

.method private setRoomId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    return-void
.end method

.method private setSeatsNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    return-void
.end method

.method private setSitDownloadNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    return-void
.end method

.method private setSpectatorNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    return-void
.end method

.method private setState(Lcom/papa91/battle/protocol/RoomState;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    return-void
.end method

.method private setStateValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    return-void
.end method

.method private setTitle(Lcom/papa91/battle/protocol/BattleTitle$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    return-void
.end method

.method private setTitle(Lcom/papa91/battle/protocol/BattleTitle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    return-void
.end method

.method private setVip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/papa91/battle/protocol/SimpleRoom;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_5

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_4

    .line 12
    :sswitch_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 13
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    goto :goto_1

    .line 14
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    goto :goto_1

    .line 15
    :sswitch_2
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 19
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/RoomPosition;

    .line 20
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    goto :goto_1

    .line 22
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    goto :goto_1

    .line 24
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    goto :goto_1

    .line 25
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    goto :goto_1

    .line 26
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    goto :goto_1

    .line 28
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 29
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    goto :goto_1

    .line 30
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    goto :goto_1

    .line 31
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    goto :goto_1

    .line 33
    :sswitch_b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    goto :goto_1

    .line 35
    :sswitch_c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    goto/16 :goto_1

    .line 36
    :sswitch_d
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    goto/16 :goto_1

    .line 37
    :sswitch_e
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    goto/16 :goto_1

    .line 38
    :sswitch_f
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz p1, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 40
    :goto_2
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 42
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    goto/16 :goto_1

    .line 43
    :sswitch_10
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    goto/16 :goto_1

    .line 44
    :sswitch_11
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 45
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    goto/16 :goto_1

    .line 46
    :sswitch_12
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    goto/16 :goto_1

    .line 47
    :sswitch_13
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    goto/16 :goto_1

    .line 48
    :sswitch_14
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    goto/16 :goto_1

    .line 49
    :sswitch_15
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    goto/16 :goto_1

    .line 50
    :sswitch_16
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    goto/16 :goto_1

    .line 51
    :sswitch_17
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    goto/16 :goto_1

    .line 52
    :sswitch_18
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    goto/16 :goto_1

    .line 53
    :sswitch_19
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    goto/16 :goto_1

    .line 54
    :sswitch_1a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    goto/16 :goto_1

    .line 56
    :sswitch_1b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    goto/16 :goto_1

    .line 57
    :sswitch_1c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_3
    :sswitch_1d
    const/4 v1, 0x1

    goto/16 :goto_1

    :goto_4
    if-nez p1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 58
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 59
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 60
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :goto_5
    throw p1

    .line 62
    :cond_5
    :pswitch_2
    sget-object p1, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p1

    .line 63
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 64
    check-cast p3, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 65
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    .line 66
    iget-wide v5, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    iget-wide v8, p3, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_9

    const/4 v7, 0x1

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    :goto_9
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    .line 67
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    .line 69
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    .line 70
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    .line 71
    iget-wide v5, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_a

    const/4 v4, 0x1

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    iget-wide v8, p3, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_b

    const/4 v7, 0x1

    goto :goto_b

    :cond_b
    const/4 v7, 0x0

    :goto_b
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    .line 72
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    .line 73
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    if-eqz v3, :cond_f

    const/4 v4, 0x1

    goto :goto_f

    :cond_f
    const/4 v4, 0x0

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    .line 74
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    .line 75
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    .line 76
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    .line 77
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    :cond_10
    const/4 v0, 0x0

    :goto_10
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    goto :goto_11

    :cond_11
    const/4 v4, 0x0

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    .line 78
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    :goto_12
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    if-eqz v3, :cond_13

    const/4 v4, 0x1

    goto :goto_13

    :cond_13
    const/4 v4, 0x0

    :goto_13
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 79
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    :goto_14
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    if-eqz v3, :cond_15

    const/4 v4, 0x1

    goto :goto_15

    :cond_15
    const/4 v4, 0x0

    :goto_15
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    .line 80
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    iget-object v0, p3, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 81
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    .line 82
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    :goto_16
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    if-eqz v3, :cond_17

    const/4 v4, 0x1

    goto :goto_17

    :cond_17
    const/4 v4, 0x0

    :goto_17
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    .line 83
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    .line 84
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    .line 86
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    .line 88
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    .line 89
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    .line 90
    iget-wide v5, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_18

    const/4 v4, 0x1

    goto :goto_18

    :cond_18
    const/4 v4, 0x0

    :goto_18
    iget-wide v8, p3, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_19

    const/4 v7, 0x1

    goto :goto_19

    :cond_19
    const/4 v7, 0x0

    :goto_19
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    .line 91
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a

    :cond_1a
    const/4 v0, 0x0

    :goto_1a
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    if-eqz v3, :cond_1b

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v4, 0x0

    :goto_1b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 92
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    .line 93
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    .line 94
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    .line 95
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1c
    const/4 v0, 0x0

    :goto_1c
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    if-eqz v3, :cond_1d

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1d
    const/4 v4, 0x0

    :goto_1d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    .line 96
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1e
    const/4 v0, 0x0

    :goto_1e
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    if-eqz v3, :cond_1f

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1f
    const/4 v4, 0x0

    :goto_1f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    .line 97
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    .line 99
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    .line 100
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    .line 101
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 102
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    goto :goto_20

    :cond_20
    const/4 v0, 0x0

    :goto_20
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    if-eqz v3, :cond_21

    const/4 v4, 0x1

    goto :goto_21

    :cond_21
    const/4 v4, 0x0

    :goto_21
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    .line 103
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    goto :goto_22

    :cond_22
    const/4 v0, 0x0

    :goto_22
    iget v3, p3, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    if-eqz v3, :cond_23

    const/4 v1, 0x1

    :cond_23
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 104
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_24

    .line 105
    iget p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->bitField0_:I

    iget p2, p3, Lcom/papa91/battle/protocol/SimpleRoom;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->bitField0_:I

    :cond_24
    return-object p0

    .line 106
    :pswitch_4
    new-instance p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    invoke-direct {p1, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;-><init>(Lcom/papa91/battle/protocol/SimpleRoom$1;)V

    return-object p1

    .line 107
    :pswitch_5
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 108
    :pswitch_6
    sget-object p1, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p1

    .line 109
    :pswitch_7
    new-instance p1, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-direct {p1}, Lcom/papa91/battle/protocol/SimpleRoom;-><init>()V

    return-object p1

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
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_1c
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_1a
        0x20 -> :sswitch_19
        0x28 -> :sswitch_18
        0x30 -> :sswitch_17
        0x38 -> :sswitch_16
        0x40 -> :sswitch_15
        0x48 -> :sswitch_14
        0x50 -> :sswitch_13
        0x60 -> :sswitch_12
        0x68 -> :sswitch_11
        0x70 -> :sswitch_10
        0x7a -> :sswitch_f
        0x80 -> :sswitch_e
        0x88 -> :sswitch_d
        0x90 -> :sswitch_c
        0x9a -> :sswitch_b
        0xa2 -> :sswitch_a
        0xa8 -> :sswitch_9
        0xb0 -> :sswitch_8
        0xba -> :sswitch_7
        0xc0 -> :sswitch_6
        0xc8 -> :sswitch_5
        0xd2 -> :sswitch_4
        0xd8 -> :sswitch_3
        0xe2 -> :sswitch_2
        0xe8 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    return v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChallengeCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    return v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    return v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    return v0
.end method

.method public getCreateAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    return-wide v0
.end method

.method public getElite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGameNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHasJoinPassword()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    return v0
.end method

.method public getHasPeripheralPlayer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    return v0
.end method

.method public getLeaderId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlaySeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    return v0
.end method

.method public getPlayTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    return-wide v0
.end method

.method public getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p1
.end method

.method public getPlayerListCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlayerListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPlayerListOrBuilder(I)Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPositionOrBuilder;

    return-object p1
.end method

.method public getPlayerListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    return v0
.end method

.method public getSeatsNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-wide v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 5
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8
    :cond_3
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    .line 9
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 10
    :cond_4
    iget-wide v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    const/4 v6, 0x5

    .line 11
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12
    :cond_5
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    if-eqz v2, :cond_6

    const/4 v3, 0x6

    .line 13
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14
    :cond_6
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    if-eqz v2, :cond_7

    const/4 v3, 0x7

    .line 15
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16
    :cond_7
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    if-eqz v2, :cond_8

    const/16 v3, 0x8

    .line 17
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 18
    :cond_8
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    if-eqz v2, :cond_9

    const/16 v3, 0x9

    .line 19
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 20
    :cond_9
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    if-eqz v2, :cond_a

    const/16 v3, 0xa

    .line 21
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 22
    :cond_a
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    if-eqz v2, :cond_b

    const/16 v3, 0xc

    .line 23
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 24
    :cond_b
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    sget-object v3, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_c

    const/16 v2, 0xd

    .line 25
    iget v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 26
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 27
    :cond_c
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    if-eqz v2, :cond_d

    const/16 v3, 0xe

    .line 28
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 29
    :cond_d
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    .line 30
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31
    :cond_e
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    if-eqz v2, :cond_f

    const/16 v3, 0x10

    .line 32
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 33
    :cond_f
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    if-eqz v2, :cond_10

    const/16 v3, 0x11

    .line 34
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 35
    :cond_10
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    if-eqz v2, :cond_11

    const/16 v3, 0x12

    .line 36
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 37
    :cond_11
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x13

    .line 38
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39
    :cond_12
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    const/16 v2, 0x14

    .line 40
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41
    :cond_13
    iget-wide v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_14

    const/16 v4, 0x15

    .line 42
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 43
    :cond_14
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    sget-object v3, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_15

    const/16 v2, 0x16

    .line 44
    iget v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 45
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 46
    :cond_15
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    const/16 v2, 0x17

    .line 47
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 48
    :cond_16
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    if-eqz v2, :cond_17

    const/16 v3, 0x18

    .line 49
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 50
    :cond_17
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    if-eqz v2, :cond_18

    const/16 v3, 0x19

    .line 51
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 52
    :cond_18
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    const/16 v2, 0x1a

    .line 53
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 54
    :cond_19
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    if-eqz v2, :cond_1a

    const/16 v3, 0x1b

    .line 55
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 56
    :cond_1a
    :goto_1
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    const/16 v2, 0x1c

    .line 57
    iget-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 58
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_1b
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    if-eqz v1, :cond_1c

    const/16 v2, 0x1d

    .line 60
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_1c
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    sget-object v2, Lcom/papa91/battle/protocol/RoomCategory;->NORMAL:Lcom/papa91/battle/protocol/RoomCategory;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1d

    const/16 v1, 0x1e

    .line 62
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 63
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_1d
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getSitDownloadNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    return v0
.end method

.method public getSpectatorNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    return v0
.end method

.method public getTitle()Lcom/papa91/battle/protocol/BattleTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9
    :cond_3
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11
    :cond_4
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15
    :cond_6
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17
    :cond_7
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 19
    :cond_8
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 21
    :cond_9
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xc

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 23
    :cond_a
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_b

    const/16 v0, 0xd

    .line 24
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 25
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xe

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    .line 28
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29
    :cond_d
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    if-eqz v0, :cond_e

    const/16 v1, 0x10

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31
    :cond_e
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x11

    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33
    :cond_f
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    if-eqz v0, :cond_10

    const/16 v1, 0x12

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 35
    :cond_10
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x13

    .line 36
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 37
    :cond_11
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x14

    .line 38
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 39
    :cond_12
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    const/16 v2, 0x15

    .line 40
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 41
    :cond_13
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_14

    const/16 v0, 0x16

    .line 42
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 43
    :cond_14
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x17

    .line 44
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 45
    :cond_15
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    if-eqz v0, :cond_16

    const/16 v1, 0x18

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 47
    :cond_16
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    if-eqz v0, :cond_17

    const/16 v1, 0x19

    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 49
    :cond_17
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x1a

    .line 50
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 51
    :cond_18
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    if-eqz v0, :cond_19

    const/16 v1, 0x1b

    .line 52
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_19
    const/4 v0, 0x0

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    const/16 v1, 0x1c

    .line 54
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1a
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    if-eqz v0, :cond_1b

    const/16 v1, 0x1d

    .line 56
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 57
    :cond_1b
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    sget-object v1, Lcom/papa91/battle/protocol/RoomCategory;->NORMAL:Lcom/papa91/battle/protocol/RoomCategory;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1c

    const/16 v0, 0x1e

    .line 58
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1c
    return-void
.end method
