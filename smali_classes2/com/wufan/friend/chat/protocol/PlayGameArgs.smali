.class public final Lcom/wufan/friend/chat/protocol/PlayGameArgs;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlayGameArgs.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/c1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;,
        Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/PlayGameArgs;",
        "Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/c1;"
    }
.end annotation


# static fields
.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x7

.field private static final p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

.field private static volatile q:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:I

.field private e:J

.field private f:I

.field private g:Z

.field private h:Lcom/google/protobuf/Internal$LongList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

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

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    return-void
.end method

.method public static A3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static B3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static C3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static D3([B)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static E3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method private F3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f:I

    return-void
.end method

.method private G3(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e:J

    return-void
.end method

.method private H3(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->r3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Internal$LongList;->setLong(IJ)J

    return-void
.end method

.method private I3(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    return-void
.end method

.method private J3(Lcom/wufan/friend/chat/protocol/PlayType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    return-void
.end method

.method private K3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g:Z

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->setStateValue(I)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->o3()V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->F3(I)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->n3()V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->K3(Z)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->q3()V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->H3(IJ)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->m3(J)V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->l3(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p3()V

    return-void
.end method

.method private clearGameId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c:J

    return-void
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->I3(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->clearState()V

    return-void
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->setGameId(J)V

    return-void
.end method

.method static synthetic g3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->clearGameId()V

    return-void
.end method

.method static synthetic h3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->setTypeValue(I)V

    return-void
.end method

.method static synthetic i3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Lcom/wufan/friend/chat/protocol/PlayType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->J3(Lcom/wufan/friend/chat/protocol/PlayType;)V

    return-void
.end method

.method static synthetic j3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->clearType()V

    return-void
.end method

.method static synthetic k3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->G3(J)V

    return-void
.end method

.method private l3(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->r3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private m3(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->r3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    return-void
.end method

.method private n3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f:I

    return-void
.end method

.method private o3()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e:J

    return-void
.end method

.method private p3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private q3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g:Z

    return-void
.end method

.method private r3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    :cond_0
    return-void
.end method

.method public static s3()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object v0
.end method

.method private setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c:J

    return-void
.end method

.method private setStateValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    return-void
.end method

.method private setTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    return-void
.end method

.method public static t3()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    return-object v0
.end method

.method public static u3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    return-object p0
.end method

.method public static v3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static w3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static x3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static y3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static z3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g:Z

    return v0
.end method

.method public O1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public O2()Ljava/util/List;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    return-object v0
.end method

.method public c2(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f:I

    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->q:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->q:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->q:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->q:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_f

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_e

    const/16 p3, 0x8

    if-eq p1, p3, :cond_d

    const/16 p3, 0x10

    if-eq p1, p3, :cond_c

    const/16 p3, 0x18

    if-eq p1, p3, :cond_b

    const/16 p3, 0x20

    if-eq p1, p3, :cond_a

    const/16 p3, 0x28

    if-eq p1, p3, :cond_9

    const/16 p3, 0x30

    if-eq p1, p3, :cond_8

    const/16 p3, 0x38

    if-eq p1, p3, :cond_6

    const/16 p3, 0x3a

    if-eq p1, p3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 14
    iget-object p3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p3}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_4

    .line 15
    iget-object p3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    .line 16
    invoke-static {p3}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object p3

    iput-object p3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    .line 17
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_5

    .line 18
    iget-object p3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-interface {p3, v3, v4}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 21
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    .line 22
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    goto :goto_1

    .line 24
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g:Z

    goto/16 :goto_1

    .line 25
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f:I

    goto/16 :goto_1

    .line 26
    :cond_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e:J

    goto/16 :goto_1

    .line 27
    :cond_b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 28
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    goto/16 :goto_1

    .line 29
    :cond_c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c:J

    goto/16 :goto_1

    .line 30
    :cond_d
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 31
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_e
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 32
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 33
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 34
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :goto_4
    throw p1

    .line 36
    :cond_f
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p1

    .line 37
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 38
    check-cast p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 39
    iget p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    :goto_5
    iget v3, p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    .line 40
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_12

    const/4 v4, 0x1

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    :goto_7
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_13

    const/4 v7, 0x1

    goto :goto_8

    :cond_13
    const/4 v7, 0x0

    :goto_8
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c:J

    .line 41
    iget p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    :goto_9
    iget v3, p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    if-eqz v3, :cond_15

    const/4 v4, 0x1

    goto :goto_a

    :cond_15
    const/4 v4, 0x0

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    .line 42
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_16

    const/4 v4, 0x1

    goto :goto_b

    :cond_16
    const/4 v4, 0x0

    :goto_b
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_17

    const/4 v7, 0x1

    goto :goto_c

    :cond_17
    const/4 v7, 0x0

    :goto_c
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e:J

    .line 43
    iget p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f:I

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    :goto_d
    iget v3, p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f:I

    if-eqz v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f:I

    .line 44
    iget-boolean p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g:Z

    iget-boolean v0, p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g:Z

    .line 45
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLongList(Lcom/google/protobuf/Internal$LongList;Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    .line 46
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_1a

    .line 47
    iget p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->a:I

    iget p2, p3, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->a:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->a:I

    :cond_1a
    return-object p0

    .line 48
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;-><init>(Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V

    return-object p1

    .line 49
    :pswitch_5
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 50
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->p:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p1

    .line 51
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;-><init>()V

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

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e:J

    return-wide v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c:J

    return-wide v0
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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->START:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    .line 4
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-wide v4, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c:J

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
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    sget-object v4, Lcom/wufan/friend/chat/protocol/PlayType;->STAND:Lcom/wufan/friend/chat/protocol/PlayType;

    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/PlayType;->getNumber()I

    move-result v4

    if-eq v1, v4, :cond_3

    const/4 v1, 0x3

    .line 8
    iget v4, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    .line 9
    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-wide v4, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 11
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f:I

    if-eqz v1, :cond_5

    const/4 v4, 0x5

    .line 13
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g:Z

    if-eqz v1, :cond_6

    const/4 v4, 0x6

    .line 15
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    const/4 v1, 0x0

    .line 16
    :goto_1
    iget-object v4, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 17
    iget-object v4, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    .line 18
    invoke-interface {v4, v3}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    add-int/2addr v0, v1

    .line 19
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->O2()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getState()Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->forNumber(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    return v0
.end method

.method public getType()Lcom/wufan/friend/chat/protocol/PlayType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayType;->forNumber(I)Lcom/wufan/friend/chat/protocol/PlayType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayType;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getSerializedSize()I

    .line 2
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->START:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 5
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/PlayType;->STAND:Lcom/wufan/friend/chat/protocol/PlayType;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8
    :cond_2
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    .line 9
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 10
    :cond_3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12
    :cond_4
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_5
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    .line 15
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
