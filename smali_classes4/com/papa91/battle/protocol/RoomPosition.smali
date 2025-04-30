.class public final Lcom/papa91/battle/protocol/RoomPosition;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RoomPosition.java"

# interfaces
.implements Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/RoomPosition$Builder;,
        Lcom/papa91/battle/protocol/RoomPosition$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/papa91/battle/protocol/RoomPosition;",
        "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final AVATAR_FIELD_NUMBER:I = 0x6

.field public static final BATTLEAREA_FIELD_NUMBER:I = 0xd

.field public static final BATTLETITLECOLOR_FIELD_NUMBER:I = 0xc

.field public static final BATTLETITLE_FIELD_NUMBER:I = 0xb

.field public static final CLOSED_FIELD_NUMBER:I = 0x1

.field public static final COPPER_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

.field public static final IGNORE_FIELD_NUMBER:I = 0xf

.field public static final KICKCOUNT_FIELD_NUMBER:I = 0xe

.field public static final NICKNAME_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERIPHERAL_FIELD_NUMBER:I = 0x9

.field public static final PHONETYPE_FIELD_NUMBER:I = 0x1f

.field public static final PINGVAL_FIELD_NUMBER:I = 0x8

.field public static final PLATFORM_FIELD_NUMBER:I = 0x10

.field public static final PROFICIENCYLEVEL_FIELD_NUMBER:I = 0x11

.field public static final STATE_FIELD_NUMBER:I = 0xa

.field public static final TITLE_FIELD_NUMBER:I = 0x4

.field public static final UID_FIELD_NUMBER:I = 0x3

.field public static final VIP_FIELD_NUMBER:I = 0x2


# instance fields
.field private avatar_:Ljava/lang/String;

.field private battleArea_:I

.field private battleTitleColor_:Ljava/lang/String;

.field private battleTitle_:Ljava/lang/String;

.field private closed_:Z

.field private copper_:I

.field private ignore_:Ljava/lang/String;

.field private kickCount_:I

.field private nickname_:Ljava/lang/String;

.field private peripheral_:Z

.field private phoneType_:I

.field private pingVal_:I

.field private platform_:I

.field private proficiencyLevel_:I

.field private state_:I

.field private title_:Lcom/papa91/battle/protocol/BattleTitle;

.field private uid_:I

.field private vip_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/RoomPosition;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/papa91/battle/protocol/RoomPosition;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setClosed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearTitle()V

    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setNickname(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearNickname()V

    return-void
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setNicknameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearAvatar()V

    return-void
.end method

.method static synthetic access$1600(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setAvatarBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setCopper(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearCopper()V

    return-void
.end method

.method static synthetic access$1900(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setPingVal(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearClosed()V

    return-void
.end method

.method static synthetic access$2000(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearPingVal()V

    return-void
.end method

.method static synthetic access$2100(Lcom/papa91/battle/protocol/RoomPosition;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setPeripheral(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearPeripheral()V

    return-void
.end method

.method static synthetic access$2300(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setStateValue(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/RoomPosition$State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setState(Lcom/papa91/battle/protocol/RoomPosition$State;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearState()V

    return-void
.end method

.method static synthetic access$2600(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setBattleTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearBattleTitle()V

    return-void
.end method

.method static synthetic access$2800(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setBattleTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setBattleTitleColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/battle/protocol/RoomPosition;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setVip(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearBattleTitleColor()V

    return-void
.end method

.method static synthetic access$3100(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setBattleAreaValue(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearBattleArea()V

    return-void
.end method

.method static synthetic access$3500(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setKickCount(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearKickCount()V

    return-void
.end method

.method static synthetic access$3700(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setIgnore(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearIgnore()V

    return-void
.end method

.method static synthetic access$3900(Lcom/papa91/battle/protocol/RoomPosition;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setIgnoreBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearVip()V

    return-void
.end method

.method static synthetic access$4000(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setPlatformValue(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/Platform;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setPlatform(Lcom/papa91/battle/protocol/Platform;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearPlatform()V

    return-void
.end method

.method static synthetic access$4300(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setProficiencyLevel(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearProficiencyLevel()V

    return-void
.end method

.method static synthetic access$4500(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setPhoneTypeValue(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/PhoneType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setPhoneType(Lcom/papa91/battle/protocol/PhoneType;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearPhoneType()V

    return-void
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setUid(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;->clearUid()V

    return-void
.end method

.method static synthetic access$700(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleTitle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setTitle(Lcom/papa91/battle/protocol/BattleTitle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleTitle$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->setTitle(Lcom/papa91/battle/protocol/BattleTitle$Builder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleTitle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)V

    return-void
.end method

.method private clearAvatar()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    return-void
.end method

.method private clearBattleArea()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    return-void
.end method

.method private clearBattleTitle()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    return-void
.end method

.method private clearBattleTitleColor()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    return-void
.end method

.method private clearClosed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    return-void
.end method

.method private clearCopper()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    return-void
.end method

.method private clearIgnore()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnore()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    return-void
.end method

.method private clearKickCount()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    return-void
.end method

.method private clearNickname()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    return-void
.end method

.method private clearPeripheral()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    return-void
.end method

.method private clearPhoneType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    return-void
.end method

.method private clearPingVal()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    return-void
.end method

.method private clearPlatform()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    return-void
.end method

.method private clearProficiencyLevel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    return-void
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    return-void
.end method

.method private clearTitle()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    return-void
.end method

.method private clearUid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    return-void
.end method

.method private clearVip()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    return-object v0
.end method

.method private mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleTitle;->newBuilder(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    return-void
.end method

.method private setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    return-void
.end method

.method private setBattleAreaValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    return-void
.end method

.method private setBattleTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    return-void
.end method

.method private setBattleTitleColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    return-void
.end method

.method private setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    return-void
.end method

.method private setCopper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    return-void
.end method

.method private setIgnore(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    return-void
.end method

.method private setIgnoreBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    return-void
.end method

.method private setKickCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    return-void
.end method

.method private setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    return-void
.end method

.method private setPeripheral(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    return-void
.end method

.method private setPhoneType(Lcom/papa91/battle/protocol/PhoneType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    return-void
.end method

.method private setPhoneTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    return-void
.end method

.method private setPingVal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    return-void
.end method

.method private setPlatform(Lcom/papa91/battle/protocol/Platform;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    return-void
.end method

.method private setPlatformValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    return-void
.end method

.method private setProficiencyLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    return-void
.end method

.method private setState(Lcom/papa91/battle/protocol/RoomPosition$State;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$State;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    return-void
.end method

.method private setStateValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    return-void
.end method

.method private setTitle(Lcom/papa91/battle/protocol/BattleTitle$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    return-void
.end method

.method private setTitle(Lcom/papa91/battle/protocol/BattleTitle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    return-void
.end method

.method private setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    return-void
.end method

.method private setVip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/papa91/battle/protocol/RoomPosition;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_4

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
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    goto :goto_1

    .line 14
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    goto :goto_1

    .line 15
    :sswitch_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 16
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    goto :goto_1

    .line 17
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    goto :goto_1

    .line 19
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    goto :goto_1

    .line 20
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 21
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    goto :goto_1

    .line 22
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    goto :goto_1

    .line 24
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    goto :goto_1

    .line 26
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 27
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    goto :goto_1

    .line 28
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    goto :goto_1

    .line 29
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    goto :goto_1

    .line 30
    :sswitch_b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    goto :goto_1

    .line 31
    :sswitch_c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    goto :goto_1

    .line 33
    :sswitch_d
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    goto :goto_1

    .line 35
    :sswitch_e
    iget-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 37
    :goto_2
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object v3, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 39
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    goto/16 :goto_1

    .line 40
    :sswitch_f
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    goto/16 :goto_1

    .line 41
    :sswitch_10
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    goto/16 :goto_1

    .line 42
    :sswitch_11
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_3
    :sswitch_12
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

    .line 43
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 44
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :goto_5
    throw p1

    .line 47
    :cond_4
    :pswitch_2
    sget-object p1, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    return-object p1

    .line 48
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 49
    check-cast p3, Lcom/papa91/battle/protocol/RoomPosition;

    .line 50
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    .line 51
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    .line 52
    iget p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    .line 53
    iget-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    iget-object v0, p3, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 54
    iget-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    .line 56
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    .line 59
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    .line 60
    iget p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    goto :goto_9

    :cond_8
    const/4 v4, 0x0

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    .line 61
    iget p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    .line 62
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    .line 63
    iget p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    if-eqz v3, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 64
    iget-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    .line 66
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    .line 69
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    .line 70
    iget p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    if-eqz v3, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 71
    iget p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    if-eqz v3, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    .line 72
    iget-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    .line 74
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    .line 75
    iget p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iget v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    if-eqz v3, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 76
    iget p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget v3, p3, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    if-eqz v3, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    .line 77
    iget p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget p3, p3, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    if-eqz p3, :cond_16

    const/4 v1, 0x1

    :cond_16
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 78
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 79
    :pswitch_4
    new-instance p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    invoke-direct {p1, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;-><init>(Lcom/papa91/battle/protocol/RoomPosition$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 80
    :pswitch_6
    sget-object p1, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    return-object p1

    .line 81
    :pswitch_7
    new-instance p1, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-direct {p1}, Lcom/papa91/battle/protocol/RoomPosition;-><init>()V

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
        0x0 -> :sswitch_12
        0x8 -> :sswitch_11
        0x10 -> :sswitch_10
        0x18 -> :sswitch_f
        0x22 -> :sswitch_e
        0x2a -> :sswitch_d
        0x32 -> :sswitch_c
        0x38 -> :sswitch_b
        0x40 -> :sswitch_a
        0x48 -> :sswitch_9
        0x50 -> :sswitch_8
        0x5a -> :sswitch_7
        0x62 -> :sswitch_6
        0x68 -> :sswitch_5
        0x70 -> :sswitch_4
        0x7a -> :sswitch_3
        0x80 -> :sswitch_2
        0x88 -> :sswitch_1
        0xf8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    return v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    return v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    return v0
.end method

.method public getIgnore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoreBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKickCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPeripheral()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    return v0
.end method

.method public getPhoneType()Lcom/papa91/battle/protocol/PhoneType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/PhoneType;->forNumber(I)Lcom/papa91/battle/protocol/PhoneType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/PhoneType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/PhoneType;

    :cond_0
    return-object v0
.end method

.method public getPhoneTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    return v0
.end method

.method public getPingVal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    return v0
.end method

.method public getPlatform()Lcom/papa91/battle/protocol/Platform;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/Platform;->forNumber(I)Lcom/papa91/battle/protocol/Platform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Platform;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Platform;

    :cond_0
    return-object v0
.end method

.method public getPlatformValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    return v0
.end method

.method public getProficiencyLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    sget-object v2, Lcom/papa91/battle/protocol/RoomPosition$State;->EMPTY:Lcom/papa91/battle/protocol/RoomPosition$State;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition$State;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_a

    const/16 v1, 0xa

    .line 21
    iget v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 22
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_a
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 24
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_b
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xc

    .line 26
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_c
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_d

    const/16 v1, 0xd

    .line 28
    iget v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 29
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_d
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 31
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_e
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xf

    .line 33
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnore()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_f
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    sget-object v2, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_10

    const/16 v1, 0x10

    .line 35
    iget v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 36
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_10
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 38
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_11
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    sget-object v2, Lcom/papa91/battle/protocol/PhoneType;->UNKNOWN:Lcom/papa91/battle/protocol/PhoneType;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_12

    const/16 v1, 0x1f

    .line 40
    iget v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 41
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_12
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomPosition$State;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition$State;->forNumber(I)Lcom/papa91/battle/protocol/RoomPosition$State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition$State;->UNRECOGNIZED:Lcom/papa91/battle/protocol/RoomPosition$State;

    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    return v0
.end method

.method public getTitle()Lcom/papa91/battle/protocol/BattleTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    return v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15
    :cond_6
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17
    :cond_7
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 19
    :cond_8
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    sget-object v1, Lcom/papa91/battle/protocol/RoomPosition$State;->EMPTY:Lcom/papa91/battle/protocol/RoomPosition$State;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomPosition$State;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/16 v0, 0xa

    .line 20
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 22
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 24
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/16 v0, 0xd

    .line 26
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 27
    :cond_c
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 29
    :cond_d
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xf

    .line 30
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 31
    :cond_e
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    sget-object v1, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_f

    const/16 v0, 0x10

    .line 32
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33
    :cond_f
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 35
    :cond_10
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    sget-object v1, Lcom/papa91/battle/protocol/PhoneType;->UNKNOWN:Lcom/papa91/battle/protocol/PhoneType;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_11

    const/16 v0, 0x1f

    .line 36
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_11
    return-void
.end method
