.class public final Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FriendAddReqNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;,
        Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;",
        "Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/s;"
    }
.end annotation


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field private static final g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

.field private static volatile h:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->o3(Z)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a3()V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->setTypeValue(I)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->p3(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;)V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->clearType()V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->setCount(I)V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->clearCount()V

    return-void
.end method

.method private a3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a:Z

    return-void
.end method

.method public static b3()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object v0
.end method

.method public static c3()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    return-object v0
.end method

.method private clearCount()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->c:I

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    return-void
.end method

.method public static d3(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    return-object p0
.end method

.method public static e3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method public static f3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method public static g3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method public static h3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method public static i3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method public static j3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method public static k3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method public static l3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method public static m3([B)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method public static n3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p0
.end method

.method private o3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a:Z

    return-void
.end method

.method private p3(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->c:I

    return-void
.end method

.method private setTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->h:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->h:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->h:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->h:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0x8

    if-eq p1, p3, :cond_5

    const/16 p3, 0x10

    if-eq p1, p3, :cond_4

    const/16 p3, 0x18

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

    iput p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->c:I

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 14
    iput p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a:Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 17
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 18
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    :goto_3
    throw p1

    .line 20
    :cond_7
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p1

    .line 21
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 22
    check-cast p3, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 23
    iget-boolean p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a:Z

    iget-boolean v0, p3, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a:Z

    .line 24
    iget p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iget v3, p3, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    .line 25
    iget p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->c:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    iget p3, p3, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->c:I

    if-eqz p3, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->c:I

    .line 26
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 27
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;-><init>(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 28
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->g:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-object p1

    .line 29
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;-><init>()V

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

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->c:I

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
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;->CHANGE_FRIEND_REQUEST:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 5
    iget v2, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->c:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 8
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a:Z

    return v0
.end method

.method public getType()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;->forNumber(I)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

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
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->a:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;->CHANGE_FRIEND_REQUEST:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$State;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->c:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    return-void
.end method
