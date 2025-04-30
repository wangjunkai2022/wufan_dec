.class public final Lcom/wufan/friend/chat/protocol/d1;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlayState.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/e1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/d1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/d1;",
        "Lcom/wufan/friend/chat/protocol/d1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/e1;"
    }
.end annotation


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field private static final k:Lcom/wufan/friend/chat/protocol/d1;

.field private static volatile l:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/d1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/d1;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/d1;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/d1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/d1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/d1;->w3(I)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/d1;->f3()V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/d1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/d1;->x3(I)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/d1;->clearRoomType()V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/d1;Lcom/wufan/friend/chat/protocol/PlayType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/d1;->v3(Lcom/wufan/friend/chat/protocol/PlayType;)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/d1;->g3()V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/d1;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/d1;->setGameId(J)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/d1;->clearGameId()V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/d1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/d1;->setGameName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/d1;->clearGameName()V

    return-void
.end method

.method private clearGameId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/d1;->b:J

    return-void
.end method

.method private clearGameName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/d1;->h3()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    return-void
.end method

.method private clearRoomType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/d1;->e:I

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/d1;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/d1;->setGameNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/d1;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/d1;->u3(J)V

    return-void
.end method

.method private f3()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/d1;->d:J

    return-void
.end method

.method private g3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    return-void
.end method

.method public static h3()Lcom/wufan/friend/chat/protocol/d1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    return-object v0
.end method

.method public static i3()Lcom/wufan/friend/chat/protocol/d1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/d1$b;

    return-object v0
.end method

.method public static j3(Lcom/wufan/friend/chat/protocol/d1;)Lcom/wufan/friend/chat/protocol/d1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/d1$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1$b;

    return-object p0
.end method

.method public static k3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method public static l3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method public static m3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method public static n3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method public static o3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method public static p3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/d1;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static q3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method public static r3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method public static s3([B)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method private setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/d1;->b:J

    return-void
.end method

.method private setGameName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    return-void
.end method

.method public static t3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/d1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/d1;

    return-object p0
.end method

.method private u3(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/d1;->d:J

    return-void
.end method

.method private v3(Lcom/wufan/friend/chat/protocol/PlayType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    return-void
.end method

.method private w3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    return-void
.end method

.method private x3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/d1;->e:I

    return-void
.end method


# virtual methods
.method public Z()Lcom/wufan/friend/chat/protocol/PlayType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayType;->forNumber(I)Lcom/wufan/friend/chat/protocol/PlayType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayType;

    :cond_0
    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/d1$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/d1;->l:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/d1;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/d1;->l:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/d1;->l:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/d1;->l:Lcom/google/protobuf/Parser;

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

    const/16 p3, 0x1a

    if-eq p1, p3, :cond_5

    const/16 p3, 0x20

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

    iput p1, p0, Lcom/wufan/friend/chat/protocol/d1;->e:I

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/d1;->d:J

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/d1;->b:J

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 18
    iput p1, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I
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

    .line 19
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 20
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :goto_3
    throw p1

    .line 23
    :cond_9
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    return-object p1

    .line 24
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 25
    check-cast p3, Lcom/wufan/friend/chat/protocol/d1;

    .line 26
    iget p1, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    iget v3, p3, Lcom/wufan/friend/chat/protocol/d1;->a:I

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    .line 27
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/d1;->b:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_c

    const/4 v4, 0x1

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    :goto_6
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/d1;->b:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_d

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/d1;->b:J

    .line 28
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    .line 30
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    .line 31
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/d1;->d:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/d1;->d:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_f

    const/4 v7, 0x1

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    :goto_9
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/d1;->d:J

    .line 32
    iget p1, p0, Lcom/wufan/friend/chat/protocol/d1;->e:I

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    iget p3, p3, Lcom/wufan/friend/chat/protocol/d1;->e:I

    if-eqz p3, :cond_11

    const/4 v1, 0x1

    :cond_11
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/d1;->e:I

    .line 33
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 34
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/d1$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/d1$b;-><init>(Lcom/wufan/friend/chat/protocol/d1$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 35
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/d1;->k:Lcom/wufan/friend/chat/protocol/d1;

    return-object p1

    .line 36
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/d1;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/d1;-><init>()V

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

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/d1;->d:J

    return-wide v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/d1;->b:J

    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getGameNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRoomType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/d1;->e:I

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
    iget v1, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/PlayType;->STAND:Lcom/wufan/friend/chat/protocol/PlayType;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/PlayType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/d1;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 6
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/d1;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v3, 0x4

    .line 10
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/d1;->e:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 12
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public s0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/PlayType;->STAND:Lcom/wufan/friend/chat/protocol/PlayType;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/wufan/friend/chat/protocol/d1;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/d1;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/d1;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/d1;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/d1;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/d1;->e:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    return-void
.end method
