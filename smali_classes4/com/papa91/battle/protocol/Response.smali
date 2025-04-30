.class public final Lcom/papa91/battle/protocol/Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Response.java"

# interfaces
.implements Lcom/papa91/battle/protocol/ResponseOrBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/Response$Builder;,
        Lcom/papa91/battle/protocol/Response$BroadcastChannel;,
        Lcom/papa91/battle/protocol/Response$LogicErrorCode;,
        Lcom/papa91/battle/protocol/Response$ProtoType;,
        Lcom/papa91/battle/protocol/Response$StatusCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/papa91/battle/protocol/Response;",
        "Lcom/papa91/battle/protocol/Response$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/ResponseOrBuilder;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final AREAONLINEPEOPLECOUNT_FIELD_NUMBER:I = 0x11

.field public static final BROADCASTCHANNEL_FIELD_NUMBER:I = 0x10

.field public static final BROADCASTUSERS_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

.field public static final ENDDELIMITER_FIELD_NUMBER:I = 0x3e7

.field public static final ERROR_FIELD_NUMBER:I = 0x7

.field public static final FRAMEFORWARDSERVER_FIELD_NUMBER:I = 0xf

.field public static final JOINSPECTATORREASON_FIELD_NUMBER:I = 0xa

.field public static final KICKINFO_FIELD_NUMBER:I = 0xd

.field public static final LOGICERRORCODE_FIELD_NUMBER:I = 0x9

.field public static final NOTIFICATION_FIELD_NUMBER:I = 0xe

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final PONG_FIELD_NUMBER:I = 0xb

.field public static final REQUESTID_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_FIELD_NUMBER:I = 0x5

.field public static final ROOMCOUNTER_FIELD_NUMBER:I = 0xc

.field public static final ROOM_FIELD_NUMBER:I = 0x4

.field public static final SIMPLEROOM_FIELD_NUMBER:I = 0x8

.field public static final STATUSCODE_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final USERPROFILE_FIELD_NUMBER:I = 0x12


# instance fields
.field private areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

.field private bitField0_:I

.field private broadcastChannel_:I

.field private broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

.field private endDelimiter_:Ljava/lang/String;

.field private error_:Ljava/lang/String;

.field private frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

.field private joinSpectatorReason_:Ljava/lang/String;

.field private kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

.field private logicErrorCode_:I

.field private notification_:Lcom/papa91/battle/protocol/Notification;

.field private pong_:Lcom/papa91/battle/protocol/Pong;

.field private requestId_:J

.field private response_:Lcom/papa91/battle/protocol/Response;

.field private roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

.field private room_:Lcom/papa91/battle/protocol/GameRoom;

.field private simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode_:I

.field private type_:I

.field private userProfile_:Lcom/papa91/battle/protocol/UserProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Response;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/Response;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/papa91/battle/protocol/Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    return-object v0
.end method

.method static synthetic access$100(Lcom/papa91/battle/protocol/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setStatusCodeValue(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/GameRoom$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setRoom(Lcom/papa91/battle/protocol/GameRoom$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->mergeRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearRoom()V

    return-void
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setResponse(Lcom/papa91/battle/protocol/Response;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setResponse(Lcom/papa91/battle/protocol/Response$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->mergeResponse(Lcom/papa91/battle/protocol/Response;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearResponse()V

    return-void
.end method

.method static synthetic access$1700(Lcom/papa91/battle/protocol/Response;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Response;->setBroadcastUsers(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/papa91/battle/protocol/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->addBroadcastUsers(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/papa91/battle/protocol/Response;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->addAllBroadcastUsers(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$StatusCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setStatusCode(Lcom/papa91/battle/protocol/Response$StatusCode;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearBroadcastUsers()V

    return-void
.end method

.method static synthetic access$2100(Lcom/papa91/battle/protocol/Response;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearError()V

    return-void
.end method

.method static synthetic access$2300(Lcom/papa91/battle/protocol/Response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setErrorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/papa91/battle/protocol/Response;ILcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Response;->setSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/papa91/battle/protocol/Response;ILcom/papa91/battle/protocol/SimpleRoom$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Response;->setSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom$Builder;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->addSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/papa91/battle/protocol/Response;ILcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Response;->addSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/SimpleRoom$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->addSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom$Builder;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/papa91/battle/protocol/Response;ILcom/papa91/battle/protocol/SimpleRoom$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Response;->addSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearStatusCode()V

    return-void
.end method

.method static synthetic access$3000(Lcom/papa91/battle/protocol/Response;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->addAllSimpleRoom(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearSimpleRoom()V

    return-void
.end method

.method static synthetic access$3200(Lcom/papa91/battle/protocol/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->removeSimpleRoom(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/papa91/battle/protocol/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setLogicErrorCodeValue(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$LogicErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setLogicErrorCode(Lcom/papa91/battle/protocol/Response$LogicErrorCode;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearLogicErrorCode()V

    return-void
.end method

.method static synthetic access$3600(Lcom/papa91/battle/protocol/Response;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setJoinSpectatorReason(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearJoinSpectatorReason()V

    return-void
.end method

.method static synthetic access$3800(Lcom/papa91/battle/protocol/Response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setJoinSpectatorReasonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Pong;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setPong(Lcom/papa91/battle/protocol/Pong;)V

    return-void
.end method

.method static synthetic access$400(Lcom/papa91/battle/protocol/Response;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Response;->setRequestId(J)V

    return-void
.end method

.method static synthetic access$4000(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Pong$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setPong(Lcom/papa91/battle/protocol/Pong$Builder;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Pong;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->mergePong(Lcom/papa91/battle/protocol/Pong;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearPong()V

    return-void
.end method

.method static synthetic access$4300(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/RoomCounter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setRoomCounter(Lcom/papa91/battle/protocol/RoomCounter;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/RoomCounter$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setRoomCounter(Lcom/papa91/battle/protocol/RoomCounter$Builder;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/RoomCounter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->mergeRoomCounter(Lcom/papa91/battle/protocol/RoomCounter;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearRoomCounter()V

    return-void
.end method

.method static synthetic access$4700(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setKickInfo(Lcom/papa91/battle/protocol/KickInfo;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/KickInfo$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setKickInfo(Lcom/papa91/battle/protocol/KickInfo$Builder;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->mergeKickInfo(Lcom/papa91/battle/protocol/KickInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearRequestId()V

    return-void
.end method

.method static synthetic access$5000(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearKickInfo()V

    return-void
.end method

.method static synthetic access$5100(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Notification;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setNotification(Lcom/papa91/battle/protocol/Notification;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Notification$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setNotification(Lcom/papa91/battle/protocol/Notification$Builder;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Notification;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->mergeNotification(Lcom/papa91/battle/protocol/Notification;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearNotification()V

    return-void
.end method

.method static synthetic access$5500(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/FrameForwardServer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/FrameForwardServer$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer$Builder;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/FrameForwardServer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->mergeFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearFrameForwardServer()V

    return-void
.end method

.method static synthetic access$5900(Lcom/papa91/battle/protocol/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setBroadcastChannelValue(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setTypeValue(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$BroadcastChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setBroadcastChannel(Lcom/papa91/battle/protocol/Response$BroadcastChannel;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearBroadcastChannel()V

    return-void
.end method

.method static synthetic access$6200(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->mergeAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearAreaOnlinePeopleCount()V

    return-void
.end method

.method static synthetic access$6600(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/UserProfile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setUserProfile(Lcom/papa91/battle/protocol/UserProfile;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/UserProfile$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setUserProfile(Lcom/papa91/battle/protocol/UserProfile$Builder;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/UserProfile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->mergeUserProfile(Lcom/papa91/battle/protocol/UserProfile;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearUserProfile()V

    return-void
.end method

.method static synthetic access$700(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$ProtoType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setType(Lcom/papa91/battle/protocol/Response$ProtoType;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/papa91/battle/protocol/Response;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setEndDelimiter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearEndDelimiter()V

    return-void
.end method

.method static synthetic access$7200(Lcom/papa91/battle/protocol/Response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setEndDelimiterBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->clearType()V

    return-void
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;->setRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method private addAllBroadcastUsers(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureBroadcastUsersIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllSimpleRoom(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureSimpleRoomIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addBroadcastUsers(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureBroadcastUsersIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureSimpleRoomIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 1

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureSimpleRoomIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureSimpleRoomIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureSimpleRoomIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAreaOnlinePeopleCount()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    return-void
.end method

.method private clearBroadcastChannel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    return-void
.end method

.method private clearBroadcastUsers()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearEndDelimiter()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    return-void
.end method

.method private clearError()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    return-void
.end method

.method private clearFrameForwardServer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    return-void
.end method

.method private clearJoinSpectatorReason()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    return-void
.end method

.method private clearKickInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    return-void
.end method

.method private clearLogicErrorCode()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    return-void
.end method

.method private clearNotification()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    return-void
.end method

.method private clearPong()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    return-void
.end method

.method private clearRequestId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    return-void
.end method

.method private clearResponse()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    return-void
.end method

.method private clearRoom()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    return-void
.end method

.method private clearRoomCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    return-void
.end method

.method private clearSimpleRoom()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearStatusCode()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    return-void
.end method

.method private clearUserProfile()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    return-void
.end method

.method private ensureBroadcastUsersIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureSimpleRoomIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    return-object v0
.end method

.method private mergeAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getDefaultInstance()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->newBuilder(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    :goto_0
    return-void
.end method

.method private mergeFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/FrameForwardServer;->getDefaultInstance()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/FrameForwardServer;->newBuilder(Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/FrameForwardServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/FrameForwardServer;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    :goto_0
    return-void
.end method

.method private mergeKickInfo(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/KickInfo;->getDefaultInstance()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/KickInfo;->newBuilder(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/KickInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/KickInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/KickInfo;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    :goto_0
    return-void
.end method

.method private mergeNotification(Lcom/papa91/battle/protocol/Notification;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Notification;->getDefaultInstance()Lcom/papa91/battle/protocol/Notification;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/Notification;->newBuilder(Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Notification$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Notification;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    :goto_0
    return-void
.end method

.method private mergePong(Lcom/papa91/battle/protocol/Pong;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Pong;->getDefaultInstance()Lcom/papa91/battle/protocol/Pong;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/Pong;->newBuilder(Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Pong$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Pong$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Pong;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    :goto_0
    return-void
.end method

.method private mergeResponse(Lcom/papa91/battle/protocol/Response;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->newBuilder(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    :goto_0
    return-void
.end method

.method private mergeRoom(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->newBuilder(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    :goto_0
    return-void
.end method

.method private mergeRoomCounter(Lcom/papa91/battle/protocol/RoomCounter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/RoomCounter;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomCounter;->newBuilder(Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/RoomCounter$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomCounter$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomCounter;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    :goto_0
    return-void
.end method

.method private mergeUserProfile(Lcom/papa91/battle/protocol/UserProfile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/UserProfile;->getDefaultInstance()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->newBuilder(Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/UserProfile$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/UserProfile;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Response$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Response$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeSimpleRoom(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureSimpleRoomIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    return-void
.end method

.method private setAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    return-void
.end method

.method private setBroadcastChannel(Lcom/papa91/battle/protocol/Response$BroadcastChannel;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    return-void
.end method

.method private setBroadcastChannelValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    return-void
.end method

.method private setBroadcastUsers(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureBroadcastUsersIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setEndDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    return-void
.end method

.method private setEndDelimiterBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    return-void
.end method

.method private setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    return-void
.end method

.method private setErrorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    return-void
.end method

.method private setFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/FrameForwardServer;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    return-void
.end method

.method private setFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    return-void
.end method

.method private setJoinSpectatorReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    return-void
.end method

.method private setJoinSpectatorReasonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    return-void
.end method

.method private setKickInfo(Lcom/papa91/battle/protocol/KickInfo$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/KickInfo;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    return-void
.end method

.method private setKickInfo(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    return-void
.end method

.method private setLogicErrorCode(Lcom/papa91/battle/protocol/Response$LogicErrorCode;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    return-void
.end method

.method private setLogicErrorCodeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    return-void
.end method

.method private setNotification(Lcom/papa91/battle/protocol/Notification$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Notification;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    return-void
.end method

.method private setNotification(Lcom/papa91/battle/protocol/Notification;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    return-void
.end method

.method private setPong(Lcom/papa91/battle/protocol/Pong$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Pong;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    return-void
.end method

.method private setPong(Lcom/papa91/battle/protocol/Pong;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    return-void
.end method

.method private setRequestId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    return-void
.end method

.method private setResponse(Lcom/papa91/battle/protocol/Response$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    return-void
.end method

.method private setResponse(Lcom/papa91/battle/protocol/Response;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    return-void
.end method

.method private setRoom(Lcom/papa91/battle/protocol/GameRoom$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    return-void
.end method

.method private setRoom(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    return-void
.end method

.method private setRoomCounter(Lcom/papa91/battle/protocol/RoomCounter$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomCounter;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    return-void
.end method

.method private setRoomCounter(Lcom/papa91/battle/protocol/RoomCounter;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    return-void
.end method

.method private setSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureSimpleRoomIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;->ensureSimpleRoomIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setStatusCode(Lcom/papa91/battle/protocol/Response$StatusCode;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$StatusCode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    return-void
.end method

.method private setStatusCodeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    return-void
.end method

.method private setType(Lcom/papa91/battle/protocol/Response$ProtoType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$ProtoType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    return-void
.end method

.method private setTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    return-void
.end method

.method private setUserProfile(Lcom/papa91/battle/protocol/UserProfile$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/UserProfile;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    return-void
.end method

.method private setUserProfile(Lcom/papa91/battle/protocol/UserProfile;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/papa91/battle/protocol/Response;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v0, :cond_10

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_d

    .line 12
    :sswitch_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    goto :goto_1

    .line 14
    :sswitch_1
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/UserProfile$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v1

    .line 16
    :goto_2
    invoke-static {}, Lcom/papa91/battle/protocol/UserProfile;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/UserProfile;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/UserProfile;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    goto :goto_1

    .line 19
    :sswitch_2
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;

    goto :goto_3

    :cond_4
    move-object p1, v1

    .line 21
    :goto_3
    invoke-static {}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    goto :goto_1

    .line 24
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 25
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    goto :goto_1

    .line 26
    :sswitch_4
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    if-eqz p1, :cond_5

    .line 27
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;

    goto :goto_4

    :cond_5
    move-object p1, v1

    .line 28
    :goto_4
    invoke-static {}, Lcom/papa91/battle/protocol/FrameForwardServer;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/FrameForwardServer;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/FrameForwardServer;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    goto/16 :goto_1

    .line 31
    :sswitch_5
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    if-eqz p1, :cond_6

    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Notification$Builder;

    goto :goto_5

    :cond_6
    move-object p1, v1

    .line 33
    :goto_5
    invoke-static {}, Lcom/papa91/battle/protocol/Notification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/Notification;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Notification;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    goto/16 :goto_1

    .line 36
    :sswitch_6
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    if-eqz p1, :cond_7

    .line 37
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/KickInfo$Builder;

    goto :goto_6

    :cond_7
    move-object p1, v1

    .line 38
    :goto_6
    invoke-static {}, Lcom/papa91/battle/protocol/KickInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/KickInfo;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/KickInfo;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    goto/16 :goto_1

    .line 41
    :sswitch_7
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz p1, :cond_8

    .line 42
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomCounter$Builder;

    goto :goto_7

    :cond_8
    move-object p1, v1

    .line 43
    :goto_7
    invoke-static {}, Lcom/papa91/battle/protocol/RoomCounter;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/RoomCounter;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 45
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomCounter;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    goto/16 :goto_1

    .line 46
    :sswitch_8
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    if-eqz p1, :cond_9

    .line 47
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Pong$Builder;

    goto :goto_8

    :cond_9
    move-object p1, v1

    .line 48
    :goto_8
    invoke-static {}, Lcom/papa91/battle/protocol/Pong;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/Pong;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 50
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Pong;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    goto/16 :goto_1

    .line 51
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    goto/16 :goto_1

    .line 53
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 54
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    goto/16 :goto_1

    .line 55
    :sswitch_b
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_a

    .line 56
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 57
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 58
    :cond_a
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 59
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 60
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 61
    :sswitch_c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    goto/16 :goto_1

    .line 63
    :sswitch_d
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 64
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 65
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_b

    .line 66
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 67
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 68
    :cond_b
    :goto_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_c

    .line 69
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_9

    .line 70
    :cond_c
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 71
    :sswitch_e
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_d

    .line 72
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 73
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 74
    :cond_d
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 75
    :sswitch_f
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    if-eqz p1, :cond_e

    .line 76
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response$Builder;

    goto :goto_a

    :cond_e
    move-object p1, v1

    .line 77
    :goto_a
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/Response;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 79
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    goto/16 :goto_1

    .line 80
    :sswitch_10
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz p1, :cond_f

    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    goto :goto_b

    :cond_f
    move-object p1, v1

    .line 82
    :goto_b
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/GameRoom;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 84
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    goto/16 :goto_1

    .line 85
    :sswitch_11
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 86
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    goto/16 :goto_1

    .line 87
    :sswitch_12
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    goto/16 :goto_1

    .line 88
    :sswitch_13
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 89
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_c
    :sswitch_14
    const/4 v0, 0x1

    goto/16 :goto_1

    :goto_d
    if-nez p1, :cond_2

    goto :goto_c

    :catchall_1
    move-exception p1

    goto :goto_e

    :catch_0
    move-exception p1

    .line 90
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 91
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    :goto_e
    throw p1

    .line 94
    :cond_10
    :pswitch_2
    sget-object p1, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    return-object p1

    .line 95
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 96
    check-cast p3, Lcom/papa91/battle/protocol/Response;

    .line 97
    iget p1, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    goto :goto_f

    :cond_11
    const/4 v1, 0x0

    :goto_f
    iget v3, p3, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    if-eqz v3, :cond_12

    const/4 v4, 0x1

    goto :goto_10

    :cond_12
    const/4 v4, 0x0

    :goto_10
    invoke-interface {p2, v1, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 98
    iget-wide v5, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_11

    :cond_13
    const/4 p1, 0x0

    :goto_11
    iget-wide v8, p3, Lcom/papa91/battle/protocol/Response;->requestId_:J

    cmp-long v1, v8, v3

    if-eqz v1, :cond_14

    const/4 v7, 0x1

    goto :goto_12

    :cond_14
    const/4 v7, 0x0

    :goto_12
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    .line 99
    iget p1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    goto :goto_13

    :cond_15
    const/4 v1, 0x0

    :goto_13
    iget v3, p3, Lcom/papa91/battle/protocol/Response;->type_:I

    if-eqz v3, :cond_16

    const/4 v4, 0x1

    goto :goto_14

    :cond_16
    const/4 v4, 0x0

    :goto_14
    invoke-interface {p2, v1, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 100
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 101
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    .line 102
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 103
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    .line 104
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    .line 105
    invoke-interface {p2, p1, v1, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 107
    iget p1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    if-eqz p1, :cond_17

    const/4 v1, 0x1

    goto :goto_15

    :cond_17
    const/4 v1, 0x0

    :goto_15
    iget v3, p3, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    if-eqz v3, :cond_18

    const/4 v4, 0x1

    goto :goto_16

    :cond_18
    const/4 v4, 0x0

    :goto_16
    invoke-interface {p2, v1, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 108
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    .line 110
    invoke-interface {p2, p1, v1, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Pong;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 112
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomCounter;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 113
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/KickInfo;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 114
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Notification;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 115
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/FrameForwardServer;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 116
    iget p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    goto :goto_17

    :cond_19
    const/4 v1, 0x0

    :goto_17
    iget v3, p3, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    if-eqz v3, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    invoke-interface {p2, v1, p1, v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 117
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    iget-object v0, p3, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 118
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    iget-object v0, p3, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/UserProfile;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 119
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    iget-object v1, p3, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    .line 121
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    .line 122
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_1b

    .line 123
    iget p1, p0, Lcom/papa91/battle/protocol/Response;->bitField0_:I

    iget p2, p3, Lcom/papa91/battle/protocol/Response;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/papa91/battle/protocol/Response;->bitField0_:I

    :cond_1b
    return-object p0

    .line 124
    :pswitch_4
    new-instance p1, Lcom/papa91/battle/protocol/Response$Builder;

    invoke-direct {p1, v1}, Lcom/papa91/battle/protocol/Response$Builder;-><init>(Lcom/papa91/battle/protocol/Response$1;)V

    return-object p1

    .line 125
    :pswitch_5
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 126
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v1

    .line 127
    :pswitch_6
    sget-object p1, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    return-object p1

    .line 128
    :pswitch_7
    new-instance p1, Lcom/papa91/battle/protocol/Response;

    invoke-direct {p1}, Lcom/papa91/battle/protocol/Response;-><init>()V

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
        0x0 -> :sswitch_14
        0x8 -> :sswitch_13
        0x10 -> :sswitch_12
        0x18 -> :sswitch_11
        0x22 -> :sswitch_10
        0x2a -> :sswitch_f
        0x30 -> :sswitch_e
        0x32 -> :sswitch_d
        0x3a -> :sswitch_c
        0x42 -> :sswitch_b
        0x48 -> :sswitch_a
        0x52 -> :sswitch_9
        0x5a -> :sswitch_8
        0x62 -> :sswitch_7
        0x6a -> :sswitch_6
        0x72 -> :sswitch_5
        0x7a -> :sswitch_4
        0x80 -> :sswitch_3
        0x8a -> :sswitch_2
        0x92 -> :sswitch_1
        0x1f3a -> :sswitch_0
    .end sparse-switch
.end method

.method public getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getDefaultInstance()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBroadcastChannel()Lcom/papa91/battle/protocol/Response$BroadcastChannel;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->forNumber(I)Lcom/papa91/battle/protocol/Response$BroadcastChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$BroadcastChannel;

    :cond_0
    return-object v0
.end method

.method public getBroadcastChannelValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    return v0
.end method

.method public getBroadcastUsers(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBroadcastUsersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBroadcastUsersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getEndDelimiter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDelimiterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/FrameForwardServer;->getDefaultInstance()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getJoinSpectatorReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinSpectatorReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKickInfo()Lcom/papa91/battle/protocol/KickInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/KickInfo;->getDefaultInstance()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->forNumber(I)Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    :cond_0
    return-object v0
.end method

.method public getLogicErrorCodeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    return v0
.end method

.method public getNotification()Lcom/papa91/battle/protocol/Notification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/Notification;->getDefaultInstance()Lcom/papa91/battle/protocol/Notification;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPong()Lcom/papa91/battle/protocol/Pong;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/Pong;->getDefaultInstance()Lcom/papa91/battle/protocol/Pong;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    return-wide v0
.end method

.method public getResponse()Lcom/papa91/battle/protocol/Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRoom()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/RoomCounter;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->UNDEFINED_CODE:Lcom/papa91/battle/protocol/Response$StatusCode;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$StatusCode;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 4
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-wide v4, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 6
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    sget-object v4, Lcom/papa91/battle/protocol/Response$ProtoType;->UNDEFINED_RESPONSE:Lcom/papa91/battle/protocol/Response$ProtoType;

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/Response$ProtoType;->getNumber()I

    move-result v4

    if-eq v1, v4, :cond_3

    const/4 v1, 0x3

    .line 8
    iget v4, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 9
    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 13
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 14
    :goto_1
    iget-object v5, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 15
    iget-object v5, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 16
    invoke-interface {v5, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v4

    .line 17
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 18
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 19
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    const/16 v1, 0x8

    .line 21
    iget-object v2, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 23
    :cond_8
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_9

    const/16 v1, 0x9

    .line 24
    iget v2, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 25
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_9
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 27
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_a
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 29
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_b
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 31
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_c
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    .line 33
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_d
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    .line 35
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_e
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 37
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_f
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    sget-object v2, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->ALL:Lcom/papa91/battle/protocol/Response$BroadcastChannel;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_10

    const/16 v1, 0x10

    .line 39
    iget v2, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 40
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_10
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    .line 42
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_11
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    if-eqz v1, :cond_12

    const/16 v1, 0x12

    .line 44
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_12
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0x3e7

    .line 46
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_13
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getSimpleRoom(I)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p1
.end method

.method public getSimpleRoomCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSimpleRoomList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSimpleRoomOrBuilder(I)Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;

    return-object p1
.end method

.method public getSimpleRoomOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response$StatusCode;->forNumber(I)Lcom/papa91/battle/protocol/Response$StatusCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$StatusCode;

    :cond_0
    return-object v0
.end method

.method public getStatusCodeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    return v0
.end method

.method public getType()Lcom/papa91/battle/protocol/Response$ProtoType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response$ProtoType;->forNumber(I)Lcom/papa91/battle/protocol/Response$ProtoType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Response$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$ProtoType;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    return v0
.end method

.method public getUserProfile()Lcom/papa91/battle/protocol/UserProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/UserProfile;->getDefaultInstance()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAreaOnlinePeopleCount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFrameForwardServer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasKickInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPong()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRoom()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRoomCounter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserProfile()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getSerializedSize()I

    .line 2
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->UNDEFINED_CODE:Lcom/papa91/battle/protocol/Response$StatusCode;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$StatusCode;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->UNDEFINED_RESPONSE:Lcom/papa91/battle/protocol/Response$ProtoType;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$ProtoType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 13
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 16
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x8

    .line 17
    iget-object v2, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_7
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    sget-object v1, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x9

    .line 19
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 21
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 25
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26
    :cond_b
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    .line 27
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28
    :cond_c
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    .line 29
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30
    :cond_d
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 31
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 32
    :cond_e
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    sget-object v1, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->ALL:Lcom/papa91/battle/protocol/Response$BroadcastChannel;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_f

    const/16 v0, 0x10

    .line 33
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 34
    :cond_f
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    .line 35
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36
    :cond_10
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    if-eqz v0, :cond_11

    const/16 v0, 0x12

    .line 37
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 38
    :cond_11
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x3e7

    .line 39
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_12
    return-void
.end method
