.class public final Lcom/papa91/battle/protocol/Account;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Account.java"

# interfaces
.implements Lcom/papa91/battle/protocol/AccountOrBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/Account$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/papa91/battle/protocol/Account;",
        "Lcom/papa91/battle/protocol/Account$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/AccountOrBuilder;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final AREA_FIELD_NUMBER:I = 0x9

.field public static final AVATAR_FIELD_NUMBER:I = 0x3

.field public static final BATTLETITLECOLOR_FIELD_NUMBER:I = 0x6

.field public static final BATTLETITLE_FIELD_NUMBER:I = 0x5

.field public static final COPPER_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

.field public static final IGNORE1_FIELD_NUMBER:I = 0xa

.field public static final KICKCOUNT_FIELD_NUMBER:I = 0x8

.field public static final NICKNAME_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONETYPE_FIELD_NUMBER:I = 0xd

.field public static final PLATFORM_FIELD_NUMBER:I = 0xb

.field public static final PROFICIENCYLEVEL_FIELD_NUMBER:I = 0xc

.field public static final UID_FIELD_NUMBER:I = 0x1

.field public static final VIP_FIELD_NUMBER:I = 0x4


# instance fields
.field private area_:I

.field private avatar_:Ljava/lang/String;

.field private battleTitleColor_:Ljava/lang/String;

.field private battleTitle_:Ljava/lang/String;

.field private copper_:I

.field private ignore1_:Ljava/lang/String;

.field private kickCount_:I

.field private nickname_:Ljava/lang/String;

.field private phoneType_:I

.field private platform_:I

.field private proficiencyLevel_:I

.field private uid_:I

.field private vip_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Account;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/Account;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/papa91/battle/protocol/Account;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/papa91/battle/protocol/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setUid(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearVip()V

    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setBattleTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearBattleTitle()V

    return-void
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setBattleTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setBattleTitleColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearBattleTitleColor()V

    return-void
.end method

.method static synthetic access$1600(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/papa91/battle/protocol/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setCopper(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearCopper()V

    return-void
.end method

.method static synthetic access$1900(Lcom/papa91/battle/protocol/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setKickCount(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearUid()V

    return-void
.end method

.method static synthetic access$2000(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearKickCount()V

    return-void
.end method

.method static synthetic access$2100(Lcom/papa91/battle/protocol/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setAreaValue(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/papa91/battle/protocol/Account;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setArea(Lcom/papa91/battle/protocol/BattleArea;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearArea()V

    return-void
.end method

.method static synthetic access$2400(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setIgnore1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearIgnore1()V

    return-void
.end method

.method static synthetic access$2600(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setIgnore1Bytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/papa91/battle/protocol/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setPlatformValue(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/papa91/battle/protocol/Account;Lcom/papa91/battle/protocol/Platform;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setPlatform(Lcom/papa91/battle/protocol/Platform;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearPlatform()V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setNickname(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/papa91/battle/protocol/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setProficiencyLevel(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearProficiencyLevel()V

    return-void
.end method

.method static synthetic access$3200(Lcom/papa91/battle/protocol/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setPhoneTypeValue(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/papa91/battle/protocol/Account;Lcom/papa91/battle/protocol/PhoneType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setPhoneType(Lcom/papa91/battle/protocol/PhoneType;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearPhoneType()V

    return-void
.end method

.method static synthetic access$400(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearNickname()V

    return-void
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setNicknameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/Account;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;->clearAvatar()V

    return-void
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/Account;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setAvatarBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/Account;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;->setVip(Z)V

    return-void
.end method

.method private clearArea()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    return-void
.end method

.method private clearAvatar()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    return-void
.end method

.method private clearBattleTitle()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    return-void
.end method

.method private clearBattleTitleColor()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    return-void
.end method

.method private clearCopper()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    return-void
.end method

.method private clearIgnore1()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getIgnore1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    return-void
.end method

.method private clearKickCount()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    return-void
.end method

.method private clearNickname()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    return-void
.end method

.method private clearPhoneType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    return-void
.end method

.method private clearPlatform()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    return-void
.end method

.method private clearProficiencyLevel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    return-void
.end method

.method private clearUid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

    return-void
.end method

.method private clearVip()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/Account;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    return-object v0
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Account$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Account$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Account;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setArea(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    return-void
.end method

.method private setAreaValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    return-void
.end method

.method private setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    return-void
.end method

.method private setBattleTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    return-void
.end method

.method private setBattleTitleColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    return-void
.end method

.method private setCopper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    return-void
.end method

.method private setIgnore1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    return-void
.end method

.method private setIgnore1Bytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    return-void
.end method

.method private setKickCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    return-void
.end method

.method private setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    return-void
.end method

.method private setPhoneType(Lcom/papa91/battle/protocol/PhoneType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    return-void
.end method

.method private setPhoneTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    return-void
.end method

.method private setPlatform(Lcom/papa91/battle/protocol/Platform;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    return-void
.end method

.method private setPlatformValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    return-void
.end method

.method private setProficiencyLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    return-void
.end method

.method private setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

    return-void
.end method

.method private setVip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/papa91/battle/protocol/Account;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

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

    goto :goto_3

    .line 12
    :sswitch_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 13
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    goto :goto_1

    .line 14
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    goto :goto_1

    .line 15
    :sswitch_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 16
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    goto :goto_1

    .line 17
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    goto :goto_1

    .line 19
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 20
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    goto :goto_1

    .line 21
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    goto :goto_1

    .line 22
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    goto :goto_1

    .line 23
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    goto :goto_1

    .line 25
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    goto :goto_1

    .line 27
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    goto :goto_1

    .line 28
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    goto :goto_1

    .line 30
    :sswitch_b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    goto :goto_1

    .line 32
    :sswitch_c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->uid_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    :sswitch_d
    const/4 v1, 0x1

    goto :goto_1

    :goto_3
    if-nez p1, :cond_2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 33
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 34
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :goto_4
    throw p1

    .line 37
    :cond_3
    :pswitch_2
    sget-object p1, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    return-object p1

    .line 38
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 39
    check-cast p3, Lcom/papa91/battle/protocol/Account;

    .line 40
    iget p1, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget v3, p3, Lcom/papa91/battle/protocol/Account;->uid_:I

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

    .line 41
    iget-object p1, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    .line 43
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    .line 46
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    .line 47
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/Account;->vip_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    .line 48
    iget-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    .line 50
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    .line 53
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    .line 54
    iget p1, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget v3, p3, Lcom/papa91/battle/protocol/Account;->copper_:I

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    goto :goto_8

    :cond_7
    const/4 v4, 0x0

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    .line 55
    iget p1, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget v3, p3, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    .line 56
    iget p1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget v3, p3, Lcom/papa91/battle/protocol/Account;->area_:I

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x0

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 57
    iget-object p1, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    .line 59
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    .line 60
    iget p1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget v3, p3, Lcom/papa91/battle/protocol/Account;->platform_:I

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 61
    iget p1, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget v3, p3, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    if-eqz v3, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    .line 62
    iget p1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget p3, p3, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    if-eqz p3, :cond_11

    const/4 v1, 0x1

    :cond_11
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 63
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 64
    :pswitch_4
    new-instance p1, Lcom/papa91/battle/protocol/Account$Builder;

    invoke-direct {p1, v0}, Lcom/papa91/battle/protocol/Account$Builder;-><init>(Lcom/papa91/battle/protocol/Account$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 65
    :pswitch_6
    sget-object p1, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    return-object p1

    .line 66
    :pswitch_7
    new-instance p1, Lcom/papa91/battle/protocol/Account;

    invoke-direct {p1}, Lcom/papa91/battle/protocol/Account;-><init>()V

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
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x20 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public getArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleArea;->forNumber(I)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->UNRECOGNIZED:Lcom/papa91/battle/protocol/BattleArea;

    :cond_0
    return-object v0
.end method

.method public getAreaValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    return v0
.end method

.method public getIgnore1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnore1Bytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKickCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()Lcom/papa91/battle/protocol/PhoneType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    return v0
.end method

.method public getPlatform()Lcom/papa91/battle/protocol/Platform;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    return v0
.end method

.method public getProficiencyLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

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
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_9

    const/16 v1, 0x9

    .line 19
    iget v2, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 20
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_9
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 22
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getIgnore1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_a
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    sget-object v2, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_b

    const/16 v1, 0xb

    .line 24
    iget v2, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 25
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_b
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 27
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_c
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    sget-object v2, Lcom/papa91/battle/protocol/PhoneType;->UNKNOWN:Lcom/papa91/battle/protocol/PhoneType;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_d

    const/16 v1, 0xd

    .line 29
    iget v2, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 30
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_d
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

    return v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

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
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15
    :cond_6
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x9

    .line 18
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getIgnore1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 21
    :cond_9
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    sget-object v1, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_a

    const/16 v0, 0xb

    .line 22
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 23
    :cond_a
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 25
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    sget-object v1, Lcom/papa91/battle/protocol/PhoneType;->UNKNOWN:Lcom/papa91/battle/protocol/PhoneType;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/16 v0, 0xd

    .line 26
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_c
    return-void
.end method
