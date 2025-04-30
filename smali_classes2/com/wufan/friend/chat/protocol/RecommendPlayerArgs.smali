.class public final Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RecommendPlayerArgs.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/k1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;,
        Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;",
        "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/k1;"
    }
.end annotation


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field private static final j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

.field private static volatile k:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/google/protobuf/Internal$LongList;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    return-void
.end method

.method private A3(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->k3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Internal$LongList;->setLong(IJ)J

    return-void
.end method

.method private B3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    return-void
.end method

.method private C3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->C3(I)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->z3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->setGameId(J)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->clearGameId()V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->B3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j3()V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->A3(IJ)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->g3(J)V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->f3(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->i3()V

    return-void
.end method

.method private clearGameId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e:J

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->y3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->h3()V

    return-void
.end method

.method private f3(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->k3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private g3(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->k3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    return-void
.end method

.method private h3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->l3()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->v0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    return-void
.end method

.method private i3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    return-void
.end method

.method private j3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    return-void
.end method

.method private k3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    :cond_0
    return-void
.end method

.method public static l3()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object v0
.end method

.method public static m3()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    return-object v0
.end method

.method public static n3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    return-object p0
.end method

.method public static o3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method public static p3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static q3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method public static r3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method public static s3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method private setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e:J

    return-void
.end method

.method public static t3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method public static u3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method public static v3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method public static w3([B)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method public static x3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p0
.end method

.method private y3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    return-void
.end method

.method private z3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public E0()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;->forNumber(I)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;

    :cond_0
    return-object v0
.end method

.method public a1()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->k:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->k:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->k:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->k:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_c

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_b

    const/16 p3, 0x8

    if-eq p1, p3, :cond_a

    const/16 p3, 0x10

    if-eq p1, p3, :cond_8

    const/16 p3, 0x12

    if-eq p1, p3, :cond_5

    const/16 p3, 0x1a

    if-eq p1, p3, :cond_4

    const/16 p3, 0x20

    if-eq p1, p3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e:J

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 17
    iget-object p3, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p3}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_6

    .line 18
    iget-object p3, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    .line 19
    invoke-static {p3}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object p3

    iput-object p3, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    .line 20
    :cond_6
    :goto_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_7

    .line 21
    iget-object p3, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-interface {p3, v3, v4}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_9

    .line 24
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    .line 25
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    .line 26
    :cond_9
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    goto :goto_1

    .line 27
    :cond_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 28
    iput p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_b
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 29
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 30
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 31
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :goto_4
    throw p1

    .line 33
    :cond_c
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p1

    .line 34
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 35
    check-cast p3, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 36
    iget p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    iget v3, p3, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    if-eqz v3, :cond_e

    const/4 v4, 0x1

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    .line 37
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLongList(Lcom/google/protobuf/Internal$LongList;Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    .line 38
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    .line 40
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    .line 41
    iget-wide v3, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_7

    :cond_f
    const/4 p1, 0x0

    :goto_7
    iget-wide v7, p3, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_10

    const/4 v5, 0x1

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    :goto_8
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v5

    move-wide v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e:J

    .line 42
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_11

    .line 43
    iget p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->a:I

    iget p2, p3, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->a:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->a:I

    :cond_11
    return-object p0

    .line 44
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;-><init>(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$a;)V

    return-object p1

    .line 45
    :pswitch_5
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 46
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-object p1

    .line 47
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;-><init>()V

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
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;->BATTLE_HOME_PAGE:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    .line 4
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-object v4, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 6
    iget-object v4, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    .line 7
    invoke-interface {v4, v3}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->s1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 9
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->v0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v3, 0x4

    .line 12
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public j0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public o1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    return v0
.end method

.method public s1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    return-object v0
.end method

.method public v0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->getSerializedSize()I

    .line 2
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;->BATTLE_HOME_PAGE:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 8
    :cond_2
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    .line 9
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    return-void
.end method

.method public z0(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
