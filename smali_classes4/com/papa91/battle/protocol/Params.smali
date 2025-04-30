.class public final Lcom/papa91/battle/protocol/Params;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Params.java"

# interfaces
.implements Lcom/papa91/battle/protocol/ParamsOrBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/Params$Builder;,
        Lcom/papa91/battle/protocol/Params$ServerPlayMode;,
        Lcom/papa91/battle/protocol/Params$ChannelType;,
        Lcom/papa91/battle/protocol/Params$RoomType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/papa91/battle/protocol/Params;",
        "Lcom/papa91/battle/protocol/Params$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/ParamsOrBuilder;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ALLOWPCJOIN_FIELD_NUMBER:I = 0x18

.field public static final ALLOWPERIPHERALJOIN_FIELD_NUMBER:I = 0x8

.field public static final ALLOWSPECTATORJOIN_FIELD_NUMBER:I = 0x7

.field public static final BATTLEAREA_FIELD_NUMBER:I = 0x13

.field public static final CHALLENGECOINS_FIELD_NUMBER:I = 0x5

.field public static final CHANNELTYPE_FIELD_NUMBER:I = 0x14

.field public static final CLOSEPOSITION_FIELD_NUMBER:I = 0x9

.field public static final COLLECTIONID_FIELD_NUMBER:I = 0x15

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

.field public static final DEVICEID_FIELD_NUMBER:I = 0x11

.field public static final DISABLEMOBILEJOIN_FIELD_NUMBER:I = 0x19

.field public static final FIGHTID_FIELD_NUMBER:I = 0xe

.field public static final FROMLIVE_FIELD_NUMBER:I = 0x16

.field public static final GAMEID_FIELD_NUMBER:I = 0x3

.field public static final MERGEMESSAGECHANNEL_FIELD_NUMBER:I = 0x1a

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Params;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSWORD_FIELD_NUMBER:I = 0x6

.field public static final PINGVAL_FIELD_NUMBER:I = 0xf

.field public static final PLAYMODE_FIELD_NUMBER:I = 0x17

.field public static final ROOMID_FIELD_NUMBER:I = 0x4

.field public static final ROOMPOSITIONINDEX_FIELD_NUMBER:I = 0xa

.field public static final ROOMTYPE_FIELD_NUMBER:I = 0xb

.field public static final SILENT_FIELD_NUMBER:I = 0xc

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x10

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final UID_FIELD_NUMBER:I = 0x1

.field public static final USEPERIPHERAL_FIELD_NUMBER:I = 0xd


# instance fields
.field private allowPCJoin_:Z

.field private allowPeripheralJoin_:Z

.field private allowSpectatorJoin_:Z

.field private battleArea_:I

.field private challengeCoins_:I

.field private channelType_:I

.field private closePosition_:Z

.field private collectionId_:I

.field private deviceId_:Ljava/lang/String;

.field private disableMobileJoin_:Z

.field private fightId_:J

.field private fromLive_:Z

.field private gameId_:J

.field private mergeMessageChannel_:Z

.field private password_:Ljava/lang/String;

.field private pingVal_:I

.field private playMode_:I

.field private roomId_:I

.field private roomPositionIndex_:I

.field private roomType_:I

.field private silent_:Z

.field private timestamp_:J

.field private token_:Ljava/lang/String;

.field private uid_:I

.field private usePeripheral_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Params;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/Params;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/papa91/battle/protocol/Params;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    return-object v0
.end method

.method static synthetic access$100(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setUid(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setChallengeCoins(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearChallengeCoins()V

    return-void
.end method

.method static synthetic access$1200(Lcom/papa91/battle/protocol/Params;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearPassword()V

    return-void
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/Params;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setPasswordBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/papa91/battle/protocol/Params;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setAllowSpectatorJoin(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearAllowSpectatorJoin()V

    return-void
.end method

.method static synthetic access$1700(Lcom/papa91/battle/protocol/Params;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setAllowPeripheralJoin(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearAllowPeripheralJoin()V

    return-void
.end method

.method static synthetic access$1900(Lcom/papa91/battle/protocol/Params;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setClosePosition(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearUid()V

    return-void
.end method

.method static synthetic access$2000(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearClosePosition()V

    return-void
.end method

.method static synthetic access$2100(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setRoomPositionIndex(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearRoomPositionIndex()V

    return-void
.end method

.method static synthetic access$2300(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setRoomTypeValue(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/papa91/battle/protocol/Params;Lcom/papa91/battle/protocol/Params$RoomType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setRoomType(Lcom/papa91/battle/protocol/Params$RoomType;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearRoomType()V

    return-void
.end method

.method static synthetic access$2600(Lcom/papa91/battle/protocol/Params;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setSilent(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearSilent()V

    return-void
.end method

.method static synthetic access$2800(Lcom/papa91/battle/protocol/Params;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setUsePeripheral(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearUsePeripheral()V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/battle/protocol/Params;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/papa91/battle/protocol/Params;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Params;->setFightId(J)V

    return-void
.end method

.method static synthetic access$3100(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearFightId()V

    return-void
.end method

.method static synthetic access$3200(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setPingVal(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearPingVal()V

    return-void
.end method

.method static synthetic access$3400(Lcom/papa91/battle/protocol/Params;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Params;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$3600(Lcom/papa91/battle/protocol/Params;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearDeviceId()V

    return-void
.end method

.method static synthetic access$3800(Lcom/papa91/battle/protocol/Params;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setDeviceIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setBattleAreaValue(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearToken()V

    return-void
.end method

.method static synthetic access$4000(Lcom/papa91/battle/protocol/Params;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearBattleArea()V

    return-void
.end method

.method static synthetic access$4200(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setChannelTypeValue(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/papa91/battle/protocol/Params;Lcom/papa91/battle/protocol/Params$ChannelType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setChannelType(Lcom/papa91/battle/protocol/Params$ChannelType;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearChannelType()V

    return-void
.end method

.method static synthetic access$4500(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setCollectionId(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearCollectionId()V

    return-void
.end method

.method static synthetic access$4700(Lcom/papa91/battle/protocol/Params;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setFromLive(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearFromLive()V

    return-void
.end method

.method static synthetic access$4900(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setPlayModeValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/Params;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/papa91/battle/protocol/Params;Lcom/papa91/battle/protocol/Params$ServerPlayMode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setPlayMode(Lcom/papa91/battle/protocol/Params$ServerPlayMode;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearPlayMode()V

    return-void
.end method

.method static synthetic access$5200(Lcom/papa91/battle/protocol/Params;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setAllowPCJoin(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearAllowPCJoin()V

    return-void
.end method

.method static synthetic access$5400(Lcom/papa91/battle/protocol/Params;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setDisableMobileJoin(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearDisableMobileJoin()V

    return-void
.end method

.method static synthetic access$5600(Lcom/papa91/battle/protocol/Params;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setMergeMessageChannel(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearMergeMessageChannel()V

    return-void
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/Params;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Params;->setGameId(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearGameId()V

    return-void
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/Params;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;->setRoomId(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;->clearRoomId()V

    return-void
.end method

.method private clearAllowPCJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    return-void
.end method

.method private clearAllowPeripheralJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    return-void
.end method

.method private clearAllowSpectatorJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    return-void
.end method

.method private clearBattleArea()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    return-void
.end method

.method private clearChallengeCoins()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    return-void
.end method

.method private clearChannelType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    return-void
.end method

.method private clearClosePosition()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    return-void
.end method

.method private clearCollectionId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    return-void
.end method

.method private clearDeviceId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    return-void
.end method

.method private clearDisableMobileJoin()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    return-void
.end method

.method private clearFightId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    return-void
.end method

.method private clearFromLive()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    return-void
.end method

.method private clearGameId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    return-void
.end method

.method private clearMergeMessageChannel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    return-void
.end method

.method private clearPassword()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    return-void
.end method

.method private clearPingVal()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    return-void
.end method

.method private clearPlayMode()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    return-void
.end method

.method private clearRoomId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    return-void
.end method

.method private clearRoomPositionIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    return-void
.end method

.method private clearRoomType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    return-void
.end method

.method private clearSilent()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    return-void
.end method

.method private clearToken()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    return-void
.end method

.method private clearUid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    return-void
.end method

.method private clearUsePeripheral()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/Params;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    return-object v0
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Params$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Params$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Params;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowPCJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    return-void
.end method

.method private setAllowPeripheralJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    return-void
.end method

.method private setAllowSpectatorJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    return-void
.end method

.method private setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    return-void
.end method

.method private setBattleAreaValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    return-void
.end method

.method private setChallengeCoins(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    return-void
.end method

.method private setChannelType(Lcom/papa91/battle/protocol/Params$ChannelType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params$ChannelType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    return-void
.end method

.method private setChannelTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    return-void
.end method

.method private setClosePosition(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    return-void
.end method

.method private setCollectionId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    return-void
.end method

.method private setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    return-void
.end method

.method private setDisableMobileJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    return-void
.end method

.method private setFightId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    return-void
.end method

.method private setFromLive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    return-void
.end method

.method private setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    return-void
.end method

.method private setMergeMessageChannel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    return-void
.end method

.method private setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    return-void
.end method

.method private setPingVal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    return-void
.end method

.method private setPlayMode(Lcom/papa91/battle/protocol/Params$ServerPlayMode;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    return-void
.end method

.method private setPlayModeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    return-void
.end method

.method private setRoomId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    return-void
.end method

.method private setRoomPositionIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    return-void
.end method

.method private setRoomType(Lcom/papa91/battle/protocol/Params$RoomType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params$RoomType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    return-void
.end method

.method private setRoomTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    return-void
.end method

.method private setSilent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    return-void
.end method

.method private setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    return-void
.end method

.method private setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    return-void
.end method

.method private setTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    return-void
.end method

.method private setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    return-void
.end method

.method private setUsePeripheral(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/papa91/battle/protocol/Params;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_3

    .line 12
    :sswitch_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    goto :goto_1

    .line 13
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    goto :goto_1

    .line 14
    :sswitch_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    goto :goto_1

    .line 15
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 16
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    goto :goto_1

    .line 17
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    goto :goto_1

    .line 18
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    goto :goto_1

    .line 19
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 20
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    goto :goto_1

    .line 21
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 22
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    goto :goto_1

    .line 23
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    goto :goto_1

    .line 25
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    goto :goto_1

    .line 26
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    goto :goto_1

    .line 27
    :sswitch_b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    goto :goto_1

    .line 28
    :sswitch_c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    goto :goto_1

    .line 29
    :sswitch_d
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    goto :goto_1

    .line 30
    :sswitch_e
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 31
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    goto :goto_1

    .line 32
    :sswitch_f
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    goto :goto_1

    .line 33
    :sswitch_10
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    goto/16 :goto_1

    .line 34
    :sswitch_11
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    goto/16 :goto_1

    .line 35
    :sswitch_12
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    goto/16 :goto_1

    .line 36
    :sswitch_13
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    goto/16 :goto_1

    .line 38
    :sswitch_14
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    goto/16 :goto_1

    .line 39
    :sswitch_15
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    goto/16 :goto_1

    .line 40
    :sswitch_16
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    goto/16 :goto_1

    .line 41
    :sswitch_17
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    goto/16 :goto_1

    .line 43
    :sswitch_18
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->uid_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_2
    :sswitch_19
    const/4 v1, 0x1

    goto/16 :goto_1

    :goto_3
    if-nez p1, :cond_2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 44
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 45
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :goto_4
    throw p1

    .line 48
    :cond_3
    :pswitch_2
    sget-object p1, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    return-object p1

    .line 49
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 50
    check-cast p3, Lcom/papa91/battle/protocol/Params;

    .line 51
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->uid_:I

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    .line 52
    iget-object p1, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    .line 54
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    .line 55
    iget-wide v5, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_7
    iget-wide v8, p3, Lcom/papa91/battle/protocol/Params;->gameId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_7

    const/4 v7, 0x1

    goto :goto_8

    :cond_7
    const/4 v7, 0x0

    :goto_8
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    .line 56
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->roomId_:I

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    .line 57
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x0

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    .line 58
    iget-object p1, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    .line 59
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    .line 60
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    .line 61
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    .line 62
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    .line 63
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    .line 64
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    .line 65
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->roomType_:I

    if-eqz v3, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 66
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/Params;->silent_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    .line 67
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    .line 68
    iget-wide v5, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    iget-wide v8, p3, Lcom/papa91/battle/protocol/Params;->fightId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_11

    const/4 v7, 0x1

    goto :goto_12

    :cond_11
    const/4 v7, 0x0

    :goto_12
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    .line 69
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    if-eqz v3, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    :goto_14
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    .line 70
    iget-wide v5, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    iget-wide v8, p3, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_15

    const/4 v7, 0x1

    goto :goto_16

    :cond_15
    const/4 v7, 0x0

    :goto_16
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    .line 71
    iget-object p1, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    .line 73
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    .line 74
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    if-eqz v3, :cond_17

    const/4 v4, 0x1

    goto :goto_18

    :cond_17
    const/4 v4, 0x0

    :goto_18
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 75
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->channelType_:I

    if-eqz v3, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 76
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    if-eqz v3, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    .line 77
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    .line 78
    iget p1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iget v3, p3, Lcom/papa91/battle/protocol/Params;->playMode_:I

    if-eqz v3, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 79
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    .line 80
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    .line 81
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    iget-boolean p3, p3, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    invoke-interface {p2, p1, p1, p3, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    .line 82
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 83
    :pswitch_4
    new-instance p1, Lcom/papa91/battle/protocol/Params$Builder;

    invoke-direct {p1, v0}, Lcom/papa91/battle/protocol/Params$Builder;-><init>(Lcom/papa91/battle/protocol/Params$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 84
    :pswitch_6
    sget-object p1, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    return-object p1

    .line 85
    :pswitch_7
    new-instance p1, Lcom/papa91/battle/protocol/Params;

    invoke-direct {p1}, Lcom/papa91/battle/protocol/Params;-><init>()V

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
        0x0 -> :sswitch_19
        0x8 -> :sswitch_18
        0x12 -> :sswitch_17
        0x18 -> :sswitch_16
        0x20 -> :sswitch_15
        0x28 -> :sswitch_14
        0x32 -> :sswitch_13
        0x38 -> :sswitch_12
        0x40 -> :sswitch_11
        0x48 -> :sswitch_10
        0x50 -> :sswitch_f
        0x58 -> :sswitch_e
        0x60 -> :sswitch_d
        0x68 -> :sswitch_c
        0x70 -> :sswitch_b
        0x78 -> :sswitch_a
        0x80 -> :sswitch_9
        0x8a -> :sswitch_8
        0x98 -> :sswitch_7
        0xa0 -> :sswitch_6
        0xa8 -> :sswitch_5
        0xb0 -> :sswitch_4
        0xb8 -> :sswitch_3
        0xc0 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    return v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    return v0
.end method

.method public getChallengeCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    return v0
.end method

.method public getChannelType()Lcom/papa91/battle/protocol/Params$ChannelType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params$ChannelType;->forNumber(I)Lcom/papa91/battle/protocol/Params$ChannelType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Params$ChannelType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Params$ChannelType;

    :cond_0
    return-object v0
.end method

.method public getChannelTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    return v0
.end method

.method public getClosePosition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    return v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisableMobileJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    return v0
.end method

.method public getFightId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    return-wide v0
.end method

.method public getFromLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    return-wide v0
.end method

.method public getMergeMessageChannel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPingVal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    return v0
.end method

.method public getPlayMode()Lcom/papa91/battle/protocol/Params$ServerPlayMode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->forNumber(I)Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    :cond_0
    return-object v0
.end method

.method public getPlayModeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    return v0
.end method

.method public getRoomPositionIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    return v0
.end method

.method public getRoomType()Lcom/papa91/battle/protocol/Params$RoomType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params$RoomType;->forNumber(I)Lcom/papa91/battle/protocol/Params$RoomType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Params$RoomType;

    :cond_0
    return-object v0
.end method

.method public getRoomTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

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
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-wide v1, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    .line 7
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    sget-object v2, Lcom/papa91/battle/protocol/Params$RoomType;->NORMAL:Lcom/papa91/battle/protocol/Params$RoomType;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Params$RoomType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_b

    const/16 v1, 0xb

    .line 23
    iget v2, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 24
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_b
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 26
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_c
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 28
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_d
    iget-wide v1, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    const/16 v5, 0xe

    .line 30
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_e
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 32
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_f
    iget-wide v1, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_10

    const/16 v3, 0x10

    .line 34
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_10
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x11

    .line 36
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_11
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_12

    const/16 v1, 0x13

    .line 38
    iget v2, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 39
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_12
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    sget-object v2, Lcom/papa91/battle/protocol/Params$ChannelType;->ANDROID:Lcom/papa91/battle/protocol/Params$ChannelType;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Params$ChannelType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_13

    const/16 v1, 0x14

    .line 41
    iget v2, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 42
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_13
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    if-eqz v1, :cond_14

    const/16 v2, 0x15

    .line 44
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_14
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    if-eqz v1, :cond_15

    const/16 v2, 0x16

    .line 46
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_15
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    sget-object v2, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->FAST:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_16

    const/16 v1, 0x17

    .line 48
    iget v2, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 49
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_16
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    if-eqz v1, :cond_17

    const/16 v2, 0x18

    .line 51
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_17
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    if-eqz v1, :cond_18

    const/16 v2, 0x19

    .line 53
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_18
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    if-eqz v1, :cond_19

    const/16 v2, 0x1a

    .line 55
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_19
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getSilent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    return v0
.end method

.method public getUsePeripheral()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13
    :cond_5
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15
    :cond_6
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17
    :cond_7
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 19
    :cond_8
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21
    :cond_9
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    sget-object v1, Lcom/papa91/battle/protocol/Params$RoomType;->NORMAL:Lcom/papa91/battle/protocol/Params$RoomType;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Params$RoomType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_a

    const/16 v0, 0xb

    .line 22
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 23
    :cond_a
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25
    :cond_b
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 27
    :cond_c
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/16 v4, 0xe

    .line 28
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 29
    :cond_d
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 31
    :cond_e
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/16 v2, 0x10

    .line 32
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 33
    :cond_f
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x11

    .line 34
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 35
    :cond_10
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_11

    const/16 v0, 0x13

    .line 36
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 37
    :cond_11
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    sget-object v1, Lcom/papa91/battle/protocol/Params$ChannelType;->ANDROID:Lcom/papa91/battle/protocol/Params$ChannelType;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Params$ChannelType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_12

    const/16 v0, 0x14

    .line 38
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 39
    :cond_12
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    if-eqz v0, :cond_13

    const/16 v1, 0x15

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 41
    :cond_13
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    if-eqz v0, :cond_14

    const/16 v1, 0x16

    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 43
    :cond_14
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    sget-object v1, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->FAST:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_15

    const/16 v0, 0x17

    .line 44
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 45
    :cond_15
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    if-eqz v0, :cond_16

    const/16 v1, 0x18

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 47
    :cond_16
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    if-eqz v0, :cond_17

    const/16 v1, 0x19

    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 49
    :cond_17
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    if-eqz v0, :cond_18

    const/16 v1, 0x1a

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_18
    return-void
.end method
