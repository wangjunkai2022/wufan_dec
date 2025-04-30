.class public final Lcom/papa91/battle/protocol/KickInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "KickInfo.java"

# interfaces
.implements Lcom/papa91/battle/protocol/KickInfoOrBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/KickInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/papa91/battle/protocol/KickInfo;",
        "Lcom/papa91/battle/protocol/KickInfo$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/KickInfoOrBuilder;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final COPPER_FIELD_NUMBER:I = 0x2

.field public static final COUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

.field public static final ISVIP_FIELD_NUMBER:I = 0x3

.field public static final NICKNAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/KickInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIPCOPPER_FIELD_NUMBER:I = 0x5


# instance fields
.field private copper_:I

.field private count_:I

.field private isVIP_:Z

.field private nickname_:Ljava/lang/String;

.field private vipCopper_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/KickInfo;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/KickInfo;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/papa91/battle/protocol/KickInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/papa91/battle/protocol/KickInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/KickInfo;->setCount(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/papa91/battle/protocol/KickInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/KickInfo;->setVipCopper(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/KickInfo;->clearVipCopper()V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/KickInfo;->clearCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/battle/protocol/KickInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/KickInfo;->setCopper(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/KickInfo;->clearCopper()V

    return-void
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/KickInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/KickInfo;->setIsVIP(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/KickInfo;->clearIsVIP()V

    return-void
.end method

.method static synthetic access$700(Lcom/papa91/battle/protocol/KickInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/KickInfo;->setNickname(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/KickInfo;->clearNickname()V

    return-void
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/KickInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/KickInfo;->setNicknameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCopper()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/KickInfo;->copper_:I

    return-void
.end method

.method private clearCount()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/KickInfo;->count_:I

    return-void
.end method

.method private clearIsVIP()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/KickInfo;->isVIP_:Z

    return-void
.end method

.method private clearNickname()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/KickInfo;->getDefaultInstance()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/KickInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    return-void
.end method

.method private clearVipCopper()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/KickInfo;->vipCopper_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/KickInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/KickInfo$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/KickInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/KickInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCopper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/KickInfo;->copper_:I

    return-void
.end method

.method private setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/KickInfo;->count_:I

    return-void
.end method

.method private setIsVIP(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/KickInfo;->isVIP_:Z

    return-void
.end method

.method private setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    return-void
.end method

.method private setVipCopper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/KickInfo;->vipCopper_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/KickInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/papa91/battle/protocol/KickInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/papa91/battle/protocol/KickInfo;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/papa91/battle/protocol/KickInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/papa91/battle/protocol/KickInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/papa91/battle/protocol/KickInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0x8

    if-eq p1, p3, :cond_7

    const/16 p3, 0x10

    if-eq p1, p3, :cond_6

    const/16 p3, 0x18

    if-eq p1, p3, :cond_5

    const/16 p3, 0x22

    if-eq p1, p3, :cond_4

    const/16 p3, 0x28

    if-eq p1, p3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/KickInfo;->vipCopper_:I

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/KickInfo;->isVIP_:Z

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/KickInfo;->copper_:I

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/KickInfo;->count_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :goto_3
    throw p1

    .line 22
    :cond_9
    :pswitch_2
    sget-object p1, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    return-object p1

    .line 23
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 24
    check-cast p3, Lcom/papa91/battle/protocol/KickInfo;

    .line 25
    iget p1, p0, Lcom/papa91/battle/protocol/KickInfo;->count_:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    iget v3, p3, Lcom/papa91/battle/protocol/KickInfo;->count_:I

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/KickInfo;->count_:I

    .line 26
    iget p1, p0, Lcom/papa91/battle/protocol/KickInfo;->copper_:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    iget v3, p3, Lcom/papa91/battle/protocol/KickInfo;->copper_:I

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/KickInfo;->copper_:I

    .line 27
    iget-boolean p1, p0, Lcom/papa91/battle/protocol/KickInfo;->isVIP_:Z

    iget-boolean v0, p3, Lcom/papa91/battle/protocol/KickInfo;->isVIP_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/battle/protocol/KickInfo;->isVIP_:Z

    .line 28
    iget-object p1, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    iget-object v3, p3, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    .line 30
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    .line 31
    iget p1, p0, Lcom/papa91/battle/protocol/KickInfo;->vipCopper_:I

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    iget p3, p3, Lcom/papa91/battle/protocol/KickInfo;->vipCopper_:I

    if-eqz p3, :cond_f

    const/4 v1, 0x1

    :cond_f
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/KickInfo;->vipCopper_:I

    .line 32
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 33
    :pswitch_4
    new-instance p1, Lcom/papa91/battle/protocol/KickInfo$Builder;

    invoke-direct {p1, v0}, Lcom/papa91/battle/protocol/KickInfo$Builder;-><init>(Lcom/papa91/battle/protocol/KickInfo$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 34
    :pswitch_6
    sget-object p1, Lcom/papa91/battle/protocol/KickInfo;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/KickInfo;

    return-object p1

    .line 35
    :pswitch_7
    new-instance p1, Lcom/papa91/battle/protocol/KickInfo;

    invoke-direct {p1}, Lcom/papa91/battle/protocol/KickInfo;-><init>()V

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
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/KickInfo;->copper_:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/KickInfo;->count_:I

    return v0
.end method

.method public getIsVIP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/KickInfo;->isVIP_:Z

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
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
    iget v1, p0, Lcom/papa91/battle/protocol/KickInfo;->count_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/papa91/battle/protocol/KickInfo;->copper_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/KickInfo;->isVIP_:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/KickInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lcom/papa91/battle/protocol/KickInfo;->vipCopper_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getVipCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/KickInfo;->vipCopper_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/KickInfo;->count_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/papa91/battle/protocol/KickInfo;->copper_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/KickInfo;->isVIP_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/papa91/battle/protocol/KickInfo;->nickname_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/KickInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/papa91/battle/protocol/KickInfo;->vipCopper_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    return-void
.end method
