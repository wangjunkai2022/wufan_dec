.class public final Lcom/wufan/friend/chat/protocol/g0;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GameInviteNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/g0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/g0;",
        "Lcom/wufan/friend/chat/protocol/g0$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/h0;"
    }
.end annotation


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:I = 0x6

.field public static final q:I = 0x7

.field public static final r:I = 0x8

.field public static final s:I = 0x9

.field public static final t:I = 0xa

.field private static final u:Lcom/wufan/friend/chat/protocol/g0;

.field private static volatile v:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/g0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/g0;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/g0;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    return-void
.end method

.method public static A3(Lcom/wufan/friend/chat/protocol/g0;)Lcom/wufan/friend/chat/protocol/g0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/g0$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0$b;

    return-object p0
.end method

.method public static B3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method public static C3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method public static D3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method public static E3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method public static F3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method public static G3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method public static H3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method public static I3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method public static J3([B)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method public static K3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g0;

    return-object p0
.end method

.method private L3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/g0;->i:I

    return-void
.end method

.method private M3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/g0;->h:Z

    return-void
.end method

.method private N3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/g0;->a:I

    return-void
.end method

.method private O3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    return-void
.end method

.method private P3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    return-void
.end method

.method private Q3(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/g0;->c:J

    return-void
.end method

.method private R3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    return-object v0
.end method

.method private S3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/g0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->N3(I)V

    return-void
.end method

.method private T3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/g0;->j:I

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/g0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->clearAvatar()V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/g0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->setAvatarBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/g0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->setGameName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->clearGameName()V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/g0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->setGameNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/g0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->R3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->w3()V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/g0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->S3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAvatar()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/g0;->y3()Lcom/wufan/friend/chat/protocol/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/g0;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    return-void
.end method

.method private clearGameId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/g0;->d:J

    return-void
.end method

.method private clearGameName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/g0;->y3()Lcom/wufan/friend/chat/protocol/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/g0;->getGameName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/g0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->M3(Z)V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->t3()V

    return-void
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->s3()V

    return-void
.end method

.method static synthetic g3(Lcom/wufan/friend/chat/protocol/g0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->L3(I)V

    return-void
.end method

.method static synthetic h3(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->r3()V

    return-void
.end method

.method static synthetic i3(Lcom/wufan/friend/chat/protocol/g0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->T3(I)V

    return-void
.end method

.method static synthetic j3(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->x3()V

    return-void
.end method

.method static synthetic k3(Lcom/wufan/friend/chat/protocol/g0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->O3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l3(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->u3()V

    return-void
.end method

.method static synthetic m3(Lcom/wufan/friend/chat/protocol/g0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g0;->P3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic n3(Lcom/wufan/friend/chat/protocol/g0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/g0;->Q3(J)V

    return-void
.end method

.method static synthetic o3(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->v3()V

    return-void
.end method

.method static synthetic p3(Lcom/wufan/friend/chat/protocol/g0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/g0;->setGameId(J)V

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/g0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q3(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g0;->clearGameId()V

    return-void
.end method

.method private r3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/g0;->i:I

    return-void
.end method

.method private s3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/g0;->h:Z

    return-void
.end method

.method private setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    return-void
.end method

.method private setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/g0;->d:J

    return-void
.end method

.method private setGameName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    return-void
.end method

.method private t3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/g0;->a:I

    return-void
.end method

.method private u3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/g0;->y3()Lcom/wufan/friend/chat/protocol/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/g0;->X()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    return-void
.end method

.method private v3()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/g0;->c:J

    return-void
.end method

.method private w3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/g0;->y3()Lcom/wufan/friend/chat/protocol/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/g0;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    return-void
.end method

.method private x3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/g0;->j:I

    return-void
.end method

.method public static y3()Lcom/wufan/friend/chat/protocol/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    return-object v0
.end method

.method public static z3()Lcom/wufan/friend/chat/protocol/g0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/g0$b;

    return-object v0
.end method


# virtual methods
.method public I()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/g0;->i:I

    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g0$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/g0;->v:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/g0;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/g0;->v:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/g0;->v:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/g0;->v:Lcom/google/protobuf/Parser;

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
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/g0;->j:I

    goto :goto_1

    .line 13
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/g0;->i:I

    goto :goto_1

    .line 14
    :sswitch_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/g0;->h:Z

    goto :goto_1

    .line 15
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    goto :goto_1

    .line 17
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    goto :goto_1

    .line 19
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    goto :goto_1

    .line 21
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/g0;->d:J

    goto :goto_1

    .line 22
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/g0;->c:J

    goto :goto_1

    .line 23
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    goto :goto_1

    .line 25
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/g0;->a:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    :sswitch_a
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

    .line 26
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    :goto_4
    throw p1

    .line 30
    :cond_3
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    return-object p1

    .line 31
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 32
    check-cast p3, Lcom/wufan/friend/chat/protocol/g0;

    .line 33
    iget p1, p0, Lcom/wufan/friend/chat/protocol/g0;->a:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget v3, p3, Lcom/wufan/friend/chat/protocol/g0;->a:I

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/g0;->a:I

    .line 34
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    .line 36
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    .line 37
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/g0;->c:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_7
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/g0;->c:J

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

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/g0;->c:J

    .line 38
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/g0;->d:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_8

    const/4 v4, 0x1

    goto :goto_9

    :cond_8
    const/4 v4, 0x0

    :goto_9
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/g0;->d:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_9

    const/4 v7, 0x1

    goto :goto_a

    :cond_9
    const/4 v7, 0x0

    :goto_a
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/g0;->d:J

    .line 39
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    .line 41
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    .line 44
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    .line 47
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    .line 48
    iget-boolean p1, p0, Lcom/wufan/friend/chat/protocol/g0;->h:Z

    iget-boolean v0, p3, Lcom/wufan/friend/chat/protocol/g0;->h:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/g0;->h:Z

    .line 49
    iget p1, p0, Lcom/wufan/friend/chat/protocol/g0;->i:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget v3, p3, Lcom/wufan/friend/chat/protocol/g0;->i:I

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x0

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/g0;->i:I

    .line 50
    iget p1, p0, Lcom/wufan/friend/chat/protocol/g0;->j:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget p3, p3, Lcom/wufan/friend/chat/protocol/g0;->j:I

    if-eqz p3, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/g0;->j:I

    .line 51
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 52
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/g0$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/g0$b;-><init>(Lcom/wufan/friend/chat/protocol/g0$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 53
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/g0;->u:Lcom/wufan/friend/chat/protocol/g0;

    return-object p1

    .line 54
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/g0;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/g0;-><init>()V

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x40 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/g0;->c:J

    return-wide v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/g0;->d:J

    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getGameNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
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
    iget v1, p0, Lcom/wufan/friend/chat/protocol/g0;->a:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/g0;->X()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/g0;->c:J

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
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/g0;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v3, 0x4

    .line 9
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/g0;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/g0;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/g0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/g0;->h:Z

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget v1, p0, Lcom/wufan/friend/chat/protocol/g0;->i:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget v1, p0, Lcom/wufan/friend/chat/protocol/g0;->j:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/g0;->j:I

    return v0
.end method

.method public n1()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public p0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/g0;->a:I

    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/g0;->h:Z

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/g0;->a:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/g0;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/g0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/g0;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/g0;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/g0;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g0;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/g0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 15
    :cond_6
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/g0;->h:Z

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/wufan/friend/chat/protocol/g0;->i:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 19
    :cond_8
    iget v0, p0, Lcom/wufan/friend/chat/protocol/g0;->j:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_9
    return-void
.end method
